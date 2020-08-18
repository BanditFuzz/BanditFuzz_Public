import numpy as np
import sys,os,pdb,glob,random,time, uuid
from .fuzzers import Fuzzer	
from .parser import args as settings
from .agents import ThompsonSampling
from .solvers import run_solver
from .util import coverage_json_parser
import statistics

class BanditFuzz:
	def __init__(self):
		self.fuzzer = Fuzzer()
		self.actions = []
		for sort in self.fuzzer.constructs: self.actions += self.fuzzer.constructs[sort]
		self.agent  = ThompsonSampling(n_actions=len(self.actions))
		self.best_benchmark = None
		self.max_iter = 10 ** 3

		self.loc = f"{settings.db}/{uuid.uuid4().int}"
		os.makedirs(self.loc, exist_ok=True) 

	def run_solvers(self,benchmark):
		for solver in settings.reference_solvers:
			ans, time, output = run_solver(solver,benchmark,settings.timeout)
			benchmark.add_data(solver=solver,time=time, answer=ans)
		with open(f"{self.loc}/{benchmark.id}.smt2", 'w') as f:
			f.write(str(benchmark))

	def fuzz(self):
		self.best_benchmark = self.fuzzer.gen()
		self.run_solvers(self.best_benchmark)
		for it in range(1,self.max_iter):
			rand_gen = True
			if rand_gen:
				new_benchmark = self.fuzzer.gen()
				self.run_solvers(new_benchmark)
			else:
				new_benchmark = self.fuzzer.mutate(
					benchmark=self.best_benchmark,
					construct=self.actions[self.agent.select_action()]
				)

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


		'''dir_cov = settings.db + "/cov"
		for i in range(len(self.runs)):
			file = open("file_"+i,"a")
			file.write(self.runs[i][0])
			file.write("\nCoverage: " + self.runs[i][1])
			file.close()'''
		for i in range(len(best_coverage)):
			print(f"Best coverage for solver {i} is {best_coverage[i][1]}.\n")
			print(f"Total branch count is {best_coverage[i][2]}")

		for i in range(len(best_benchmark)):
			with open(f"bestBenchmark{i}.smt2", "w") as file:
				file.write(str(best_benchmark[i]))
				file.close()
