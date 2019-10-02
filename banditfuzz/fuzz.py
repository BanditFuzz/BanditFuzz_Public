import numpy as np
import sys,os
from banditfuzz.instance import Instance
from banditfuzz.util import LogPrint,roundedmap
import time
from banditfuzz.generators.gen import mk_gen
import pdb
import glob
import random
import banditfuzz.interface.Settings as settings
from banditfuzz.solvers.solver import Solver
from banditfuzz.mutators.bandits.random import Random

class Fuzzer:
	def __init__(self,solvers,mutator):
		self.nGens = settings.FuzzerNumberOfGenerations
		self.nPop = settings.FuzzerPopulation
		self.nKeepBest = settings.FuzzerNumberOfHardestKept
		self.nMutations = settings.FuzzerNumberOfMutations
		self.nRandom = self.nPop - self.nKeepBest - self.nKeepBest * self.nMutations
		self.logName = str(time.time())
		self.tot_solved = 0

		
		self.startPop = settings.FuzzerNumberPopulationStart
		self.solvers = []
		for s in settings.solvers:
			self.solvers.append(Solver(s))
		settings.PrimarySolver = self.solvers[0].__name__()

		self.gen = mk_gen()
		if mutator == None:
			mutator = Random
		if settings.theory == 'QF_FP':
			self.mutator = mutator(self.gen.ops + self.gen.boolean_ops + self.gen.rounding_modes)
		else:
			self.mutator = mutator(self.gen.ops)
		if not settings.NoBandit and os.path.exists(settings.ModelFile):
			self.mutator.read_model()
		else:
			print("Can't find model file. Creating Model File.")
		self.mut_time_and_seed =  str(time.time()) + str(settings.PythonRandomSeed)
	def fuzz(self):
		return self.fuzzer_loop()
			
	def fuzzer_loop(self):
		LogPrint("Fuzzer Start")
		score_log = None
		if settings.ScoreLogFile != None:
			score_log = open(settings.ScoreLogFile,"w")
		LogPrint("----------------------------------------------------------------------------------")
		pop = []
		if settings.ScoreLogFile != None:
			log = open(settings.ScoreLogFile,"w")
		tried_instances = set()



		#GEN #0
		print("Gen #0")
		for i in range(self.startPop):
			inst = self.gen.gen()
			while str(inst) in tried_instances:
				inst = self.gen.gen()
			tried_instances.add(str(inst))
			pop.append(inst)
			for j in range(len(self.solvers)):
				self.solvers[j].solve(pop[i])
			if settings.OutputDirectory != None and settings.SaveAllSolve:
				pop[i].to_file(settings.OutputDirectory+"/all_tests/"+ self.mut_time_and_seed + "_" + str(self.tot_solved) + ".smt")
			self.tot_solved += 1
			print("(%d/%-d)%-15sTimes = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (i+1,self.startPop,"Initial Pop",roundedmap(pop[i].times,3),pop[i].score(),pop[i].stdout,float('nan'),"NA"))
		pop.sort()
		hardest_score = 0.0
		for i in range(self.nKeepBest):
			hardest_score += pop[-1-i].score() 
		if settings.ScoreLogFile != None:
			score_log.write(str(hardest_score/self.nKeepBest)+"\n")
			score_log.flush()
		print("Score = " + str(hardest_score/self.nKeepBest) )

		#GEN LOOP
		for igen in range(1,self.nGens):
			LogPrint("----------------------------------------------------------------------------------")
			print("Gen #" + str(igen))
			#keep best
			for ipop in range(self.nKeepBest):
				print("(%d/%-d)%-15sTimes = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (ipop+1,self.nPop,"Kept Pop",roundedmap(pop[ipop].times,3),pop[ipop].score(),pop[ipop].stdout,float('nan'),"NA"))

			#mutate
			for ibest in range(self.nKeepBest):
				for imut in range(self.nMutations):
					banned_actions = []
					action = self.mutator.select_action()
					inst = self.gen.mutate(pop[ibest],action)
					mut_fail = False
					if inst == None or str(inst) in tried_instances:
						mut_fail = True
						it = 0
						while mut_fail and it < 5:
							banned_actions.append(action)
							action = self.mutator.select_action(banned_actions)
							inst = self.gen.mutate(pop[ibest],action)
							mut_fail = inst == None or inst in tried_instances 
							it += 1
						if mut_fail:
							inst = self.gen.gen()
							while str(inst) in tried_instances:
								inst = self.gen.gen()
					tried_instances.add(str(inst))
					for isolver in range(len(self.solvers)):
						self.solvers[isolver].solve(inst)
					if settings.OutputDirectory != None and settings.SaveAllSolve:
						pop[i].to_file(settings.OutputDirectory+"/all_tests/"+ self.mut_time_and_seed + "_" + str(self.tot_solved) + ".smt")
					self.tot_solved += 1
					pop.append(inst)
					reward = None
					if settings.BanditTrainingMode and not mut_fail:
						reward = None
						if pop[-1].score() >= pop[ibest].score():
							reward = True
						else:
							reward = False
						self.mutator.reward(reward)
						if settings.RewardLogFile != None:
							with open(settings.RewardLogFile, "a") as rewardlog:
								if reward:
									rewardlog.write(str(1.0) + "\n")
								else:
									rewardlog.write(str(0.0) + "\n")

					if mut_fail:
						print("(%d/%-d)%-15sTimes = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (len(pop),self.nPop,"Mut Fail (rand)",roundedmap(pop[-1].times,3),pop[-1].score(),pop[-1].stdout,float('nan'),'NA'))
					else:
						if reward:
							v=1.0
						else:
							v=0.0
						print("(%d/%-d)%-15sTimes = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (len(pop),self.nPop,"Mutated #" +str(ibest+1) ,roundedmap(pop[-1].times,3),pop[-1].score(),pop[-1].stdout,round(v,1),action))
				
			#randomly fill
			while len(pop) < self.nPop:
				inst = self.gen.gen()
				while str(inst) in tried_instances:
					inst = self.gen.gen()
				pop.append(inst)
				for isolver in range(len(self.solvers)):
					self.solvers[isolver].solve(pop[-1])
				if settings.OutputDirectory != None and settings.SaveAllSolve:
					pop[-1].to_file(settings.OutputDirectory+"/all_tests/"+ self.mut_time_and_seed + "_" + str(self.tot_solved) + ".smt")
				self.tot_solved += 1
				print("(%d/%-d)%-15sTimes = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (len(pop),self.nPop,"Rand" ,roundedmap(pop[-1].times,3),pop[-1].score(),pop[-1].stdout,float('nan'),"NA"))

			if settings.BanditTrainingMode:
				self.mutator.write_model()
			pop.sort()
			next_gen = []
			hardest_score = 0.0
			for i in range(self.nKeepBest):
				next_gen.append(pop[-1-i])
				hardest_score += pop[-1-i].score() 
			if settings.ScoreLogFile != None:
				score_log.write(str(hardest_score/self.nKeepBest)+"\n")
				score_log.flush()
			print("Score = " + str(hardest_score/self.nKeepBest) )
			pop = next_gen

			if settings.OutputDirectory != None:
				files = glob.glob(settings.OutputDirectory+"/final/" + self.mut_time_and_seed + "*")
				for f in files:
					os.remove(f)
				for i in range(self.nKeepBest):
					pop[i].to_file(settings.OutputDirectory+"/final/" + self.mut_time_and_seed + "_" + str(i+1) + ".smt")


			
		print("Fuzzer Finish.")


	def find_bugs(self):
		while True:
			self.mutator.write_model()
			inst = self.gen.gen()
			for i in range(len(self.solvers)):
				self.solvers[i].solve(inst)
			self.tot_solved += 1
			if settings.OutputDirectory != None and settings.SaveAllSolve:
				inst.to_file(settings.OutputDirectory+"/all_tests/"+ self.mut_time_and_seed + "_" + str(self.tot_solved) + ".smt")

			print("#%-15d %-15s Times = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (self.tot_solved, "generated" , roundedmap(inst.times,3),inst.score(),inst.stdout,float('nan'),'NA'))
			if inst.inconsistent():
				if settings.OutputDirectory != None:
					inst.to_file(settings.OutputDirectory+"/bugs/"+str(time.time()) + str(settings.PythonRandomSeed) + ".smt")
				continue
			if settings.NoBandit:
				continue

			action = self.mutator.select_action()
			banned_actions = []
			mut_inst = self.gen.mutate(inst, action)
			it = 0
			while mut_inst == None and it < 5:
				banned_actions.append(action)
				action = self.mutator.select_action(banned_actions)
				mut_inst = self.gen.mutate(inst, action)
				it += 5
			if mut_inst == None:
				continue
			if mut_inst == inst:
				print("Mutation FAILED")
				continue
			for i in range(len(self.solvers)):
				self.solvers[i].solve(mut_inst)
			self.tot_solved += 1
			if settings.OutputDirectory != None and settings.SaveAllSolve:
				mut_inst.to_file(settings.OutputDirectory+"/all_tests/"+ self.mut_time_and_seed + "_" + str(self.tot_solved) + ".smt")

			v=0
			if mut_inst.inconsistent():
				self.mutator.reward(True)
				v=1.0
				if settings.OutputDirectory != None:
					mut_inst.to_file(settings.OutputDirectory+"/bugs/"+str(time.time()) + str(settings.PythonRandomSeed) + ".smt")
			else:
				self.mutator.reward(False)
			print("#%6d %-15s Times = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (self.tot_solved, "mutated" , roundedmap(inst.times,3),inst.score(),inst.stdout,v,action))
			if settings.RewardLogFile != None:
				with open(settings.RewardLogFile, "a") as rewardlog:
					if v==1.0:
						rewardlog.write(str(1.0) + "\n")
					else:
						rewardlog.write(str(0.0) + "\n")
			self.mutator.write_model()
