import numpy as np
import sys,os,pdb,glob,random,time
from .fuzzers import Fuzzer

def print_rounded_map(val,precision=3):
	ret = "{"
	for key in val:
		ret += "\'" + key + "\'" + ' : ' + str(round(val[key],precision)) + ","
	ret = ret[0:len(ret)-1]
	ret += "}"
	return ret

class BanditFuzz:
	def __init__(self):

		self.fuzzer = Fuzzer()
		self.fuzzer.gen()
		pdb.set_trace()
		# if settings.theory == 'QF_FP':
		# 	self.mutator = Thompson(self.gen.ops + self.gen.boolean_ops + self.gen.rounding_modes)
		# else:
		# 	self.mutator = Thompson(self.gen.ops)

		# self.all_solved = set()
		# self.last_mut_success = None

	def gen_new_inst(self):
		ret = self.gen.gen()
		while str(ret) in self.all_solved: ret = self.gen.gen()
		ret.solve()
		self.all_solved.add(ret)
		return ret

	def mutate_instance(self,inst,cap=5):
		banned_actions = []
		action = self.mutator.select_action()
		ret = self.gen.mutate(inst,action)
		it = 0
		while (ret == None or str(ret) in self.all_solved) and it < cap:
			banned_actions.append(action)
			action = self.mutator.select_action(banned_actions)
			ret = self.gen.mutate(inst,action)
			it += 1
		self.last_mut_success = (ret != None and str(ret) not in self.all_solved)
		if not self.last_mut_success: print("Warning, failed to mutate.")
		else: ret.solve()
		return ret if self.last_mut_success else self.gen_new_inst()

	def fuzz(self):
		print("Fuzzer Start")
		tried_instances = set()
		pop = []
		#GEN #0
		print("Gen #0")
		for i in range(self.start_pop):
			pop.append(self.gen_new_inst())
			print("(%d/%-d)%-15sTimes = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (i+1,self.start_pop,"Initial Pop",roundedmap(pop[i].times,3),pop[i].score(),pop[i].results,float('nan'),"NA"))
		pop.sort()

		#GEN LOOP
		for igen in range(1,self.num_generations):
			print("----------------------------------------------------------------------------------")
			print("Gen #" + str(igen))
			#keep best
			for ipop in range(self.num_keep):
				print("(%d/%-d)%-15sTimes = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (ipop+1,self.num_pop,"Kept Pop",roundedmap(pop[ipop].times,3),pop[ipop].score(),pop[ipop].results,float('nan'),"NA"))

			#mutate
			for ibest in range(self.num_keep):
				for imut in range(self.num_mutations):
					pop.append(self.mutate_instance(pop[ibest]))
					if self.last_mut_success: self.mutator.reward(pop[-1].score() >= pop[ibest].score())
					print("(%d/%-d)%-15sTimes = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (len(pop),self.num_pop,"",roundedmap(pop[-1].times,3),pop[-1].score(),pop[-1].results,float('nan'),'NA'))				
			#randomly fill
			while len(pop) < self.num_pop:
				pop.append(self.gen_new_inst())
				print("(%d/%-d)%-15sTimes = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (len(pop),self.num_pop,"Rand" ,roundedmap(pop[-1].times,3),pop[-1].score(),pop[-1].results,float('nan'),"NA"))

			# if settings.BanditTrainingMode:
			# 	self.mutator.write_model()
			pop.sort()
			pop = [pop[-1-i] for i in range(self.num_keep)]
			for i in range(self.num_keep):
				if settings.db != None:
					if self.num_keep == 1: pop[i].to_file(settings.db + '/final/',name=self.name + '.smt2')
					else: pop[i].to_file(settings.db + '/final/',name=self.name + '_' + str(i+1) + '.smt2')
		print("Fuzzer Finish.")


	# def find_bugs(self):
	# 	while True:
	# 		self.mutator.write_model()
	# 		inst = self.gen.gen()
	# 		for i in range(len(self.solvers)):
	# 			self.solvers[i].solve(inst)
	# 		self.tot_solved += 1
	# 		if settings.OutputDirectory != None and settings.SaveAllSolve:
	# 			inst.to_file(settings.OutputDirectory+"all_tests/")

	# 		print("#%-15d %-15s Times = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (self.tot_solved, "generated" , roundedmap(inst.times,3),inst.score(),inst.results,float('nan'),'NA'))
	# 		if inst.inconsistent():
	# 			if settings.OutputDirectory != None:
	# 				inst.to_file(settings.OutputDirectory+"bugs/")
	# 			continue
	# 		if settings.NoBandit:
	# 			continue

	# 		action = self.mutator.select_action()
	# 		banned_actions = []
	# 		mut_inst = self.gen.mutate(inst, action)
	# 		it = 0
	# 		while mut_inst == None and it < 5:
	# 			banned_actions.append(action)
	# 			action = self.mutator.select_action(banned_actions)
	# 			mut_inst = self.gen.mutate(inst, action)
	# 			it += 5
	# 		if mut_inst == None:
	# 			continue
	# 		if mut_inst == inst:
	# 			print("Mutation FAILED")
	# 			continue
	# 		for i in range(len(self.solvers)):
	# 			self.solvers[i].solve(mut_inst)
	# 		self.tot_solved += 1
	# 		if settings.OutputDirectory != None and settings.SaveAllSolve:
	# 			mut_inst.to_file(settings.OutputDirectory+"/all_tests/")

	# 		v=0
	# 		if mut_inst.inconsistent():
	# 			self.mutator.reward(True)
	# 			v=1.0
	# 			if settings.OutputDirectory != None:
	# 				mut_inst.to_file(settings.OutputDirectory+"/bugs/")
	# 		else:
	# 			self.mutator.reward(False)
	# 		print("#%6d %-15s Times = %-25s Score = %-7f IsSat = %-25s Reward = %-3f Action = %-10s" % (self.tot_solved, "mutated" , roundedmap(inst.times,3),inst.score(),inst.results,v,action))
	# 		if settings.RewardLogFile != None:
	# 			with open(settings.RewardLogFile, "a") as rewardlog:
	# 				if v==1.0:
	# 					rewardlog.write(str(1.0) + "\n")
	# 				else:
	# 					rewardlog.write(str(0.0) + "\n")
	# 		self.mutator.write_model()
