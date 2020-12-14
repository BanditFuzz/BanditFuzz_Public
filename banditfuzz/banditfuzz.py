import numpy as np
import sys,os,pdb,glob,random,time, uuid
from .fuzzers import Fuzzer
from .exceptions import BanditFuzzMutationException
from .parser import args as settings
from .agents import ThompsonSampling
from .solvers import run_solver
from .util import coverage_json_parser,warning,die
from banditfuzz.fuzzers.bv import constructs
import statistics

class BanditFuzz:
	def __init__(self):
		self.fuzzer = Fuzzer()
		self.actions = list(enumerate(self.fuzzer.actions))
		self.agent  = ThompsonSampling(n_actions=len(self.actions))
		self.best_benchmark = None
		self.max_iter = 10 ** 12
		self.dynamic_timeout = settings.timeout

		self.loc = f"{settings.db}/{uuid.uuid4().int}"
		os.makedirs(self.loc, exist_ok=True) 
		os.makedirs(self.loc+'/bugs',exist_ok=True) 

	def run_solvers(self,benchmark):
		def par2_score(ans,time,output):
			if ans.lower() in ['sat','unsat']: return time
			else: return 2.0 * settings.timeout

		tar_score = float('+inf')
		for solver in settings.target_solvers:
			ans, time, output = run_solver(solver,benchmark,settings.timeout)
			benchmark.add_data(solver=solver,time=time, answer=ans)
			tar_score = min(tar_score,par2_score(ans,time,output))

		
		ref_score = float('-inf')
		self.dynamic_timeout = min(tar_score, settings.timeout)
		
		for solver in settings.reference_solvers:
			ans, time, output = run_solver(solver,benchmark,self.dynamic_timeout) 
			benchmark.add_data(solver=solver,time=time, answer=ans)
			ref_score = max(ref_score, par2_score(ans,time,output))

		benchmark.add_score(ref_score,tar_score,self.dynamic_timeout)
		self.dynamic_timeout = settings.timeout

	def fuzz(self):
		self.best_benchmark = self.fuzzer.gen()
		self.run_solvers(self.best_benchmark)
		loop_agent = ThompsonSampling(n_actions=2) #thompsonsampling -> RL. Decide whether to modify or generate new
		best_score = self.best_benchmark.score()
		for it in range(1,self.max_iter):
			rand_gen = loop_agent.select_action() == 0 #accounts for history of rewards
			if rand_gen:
				new_benchmark = self.fuzzer.gen()
				self.run_solvers(new_benchmark)
			else:
				try:
					new_benchmark = self.fuzzer.mutate(
						benchmark=self.best_benchmark,
						construct=self.actions[self.agent.select_action()][1]()
					)
				except Exception as e:
					new_benchmark = self.fuzzer.gen()
					warning(f"{e} -- Mutation failed. Generating new benchmark.")
				# except Exception as e:
				# 	print("asdf")
				# 	print(e)
			self.run_solvers(new_benchmark)
			if new_benchmark.score() > self.best_benchmark.score() or it == 1:
				print("IMPROVE")
				self.best_benchmark = new_benchmark
				loop_agent.reward(True)
				if not rand_gen: self.agent.reward(True)
				with open(f"{self.loc}/best.smt2", 'w') as f:
					f.write(str(self.best_benchmark))

			else:
				loop_agent.reward(False)
				if not rand_gen: self.agent.reward(False)

			if new_benchmark.is_inconsistent():
				with open(f"{self.loc}/bugs/{new_benchmark.id}.smt2", 'w') as f:
					f.write(str(self.best_benchmark))

			print("===" * 10)
			print(f"Iteration #{it}")
			print(f"Last ran benchmark: {new_benchmark.solver_data}")
			print(f"Last ran score: {new_benchmark.score()}")
			print()
			print(f"Best Benchmark Score #{self.best_benchmark.score()}")
			# print(self.best_benchmark.score(), new_benchmark.solver_data)


	def fuzz_coverage(self):
		self.best_benchmark = self.fuzzer.gen()
		self.run_solvers(self.best_benchmark)
		jsonParser = coverage_json_parser.jsonParser()
		coverage = jsonParser.baseLineCoverage
		self.runs = []
		self.runs.append([self.best_benchmark, coverage])
		best_coverage = coverage
		best_benchmark = [self.best_benchmark for i in range(len(best_coverage))]

		for i in range(0, self.max_iter):
			if settings.gen:
				if i < 10:
					new_benchmark = self.fuzzer.gen()#self.fuzzer.mutate(benchmark=self.best_benchmark, construct=self.actions[self.agent.select_action()])
					self.run_solvers(new_benchmark)
					newCoverage = jsonParser.getBaseLineCoverage()
					self.runs.append([new_benchmark, newCoverage])
					for i in range(len(best_coverage)):
						if newCoverage[i][1] > best_coverage[i][1]:
							best_coverage[i] = newCoverage[i]
							best_benchmark[i] = new_benchmark

				else:

					running_average_old = statistics.mean([self.runs[i-2][1][0][1], self.runs[i-3][1][0][1], self.runs[i-4][1][0][1], self.runs[i-5][1][0][1],
														  self.runs[i-6][1][0][1], self.runs[i-7][1][0][1], self.runs[i-8][1][0][1], self.runs[i-9][1][0][1],
														  self.runs[i-10][1][0][1]])
					new = self.runs[i-1][1][0][1]
					if new >= running_average_old:
						new_benchmark = self.fuzzer.mutate(benchmark=self.best_benchmark, construct=self.actions[self.agent.select_action()])
					else:
						new_benchmark = self.fuzzer.gen()
					newCoverage = jsonParser.getBaseLineCoverage()
					self.runs.append([new_benchmark, newCoverage])
					pdb.set_trace()
					for i in range(len(best_coverage)):
						if newCoverage[i][1] > best_coverage[i][1]:
							best_coverage[i] = newCoverage[i]
							best_benchmark[i] = new_benchmark
			else:
				new_benchmark=self.fuzzer.gen()
				self.run_solvers(new_benchmark)
				newCoverage = jsonParser.getBaseLineCoverage()
				self.runs.append([new_benchmark, newCoverage])
				for i in range(len(best_coverage)):
					if newCoverage[i][1] > best_coverage[i][1]:
						best_coverage[i] = newCoverage[i]
						best_benchmark[i] = new_benchmark

		for i in range(len(best_coverage)):
			print(f"Best coverage for solver {i} is {best_coverage[i][1]}.\n")
			print(f"Total branch count is {best_coverage[i][2]}")

		for i in range(len(best_benchmark)):
			with open(f"bestBenchmark{i}.smt2", "w") as file:
				file.write(str(best_benchmark[i]))
				file.close()

	def fuzz_test(self):
		'''benchmark = self.fuzzer.gen()
		print(benchmark.__str__())
		construct = constructs.BVAND()
		pdb.set_trace()
		benchmark = self.fuzzer.mutate(benchmark, construct, delete=True)
		print(benchmark.__str__())'''
		benchmark = self.fuzzer.gen()
		#pdb.set_trace()
		cont=True
		while cont:
			print(benchmark.__str__())
			select = random.choice(self.actions)
			print(str(select))
			try:
				benchmark = self.fuzzer.mutate(benchmark, select[1](), delete=True)
			except Exception as e:
				print("FAIL" + str(e))
			cont = True if input() == "y" else False


