import numpy as np
import sys,os,pdb,glob,random,time
from .fuzzers import Fuzzer	
from .parser import args as settings
from .agents import ThompsonSampling
from .solvers import run_solver

class BanditFuzz:
	def __init__(self):
		self.fuzzer = Fuzzer()
		self.actions = []
		for sort in self.fuzzer.constructs: self.actions += self.fuzzer.constructs[sort]
		self.agent  = ThompsonSampling(n_actions=len(self.actions))
		self.best_benchmark = None
		self.max_iter = 10 ** 3

	def run_solvers(self,benchmark):
		for solver in settings.reference_solvers:
			ans, time, output = run_solver(solver,benchmark,settings.timeout)


		

	def fuzz(self):
		self.best_benchmark = self.fuzzer.gen()
		self.run_solvers(self.best_benchmark)
		for it in range(1,self.max_iter):
			rand_gen = it % 5 == 0
			if rand_gen:
				new_benchmark = self.fuzzer.gen()
			else:
				new_benchmark = self.fuzzer.mutate(
					benchmark=self.best_benchmark,
					construct=self.actions[self.agent.select_action()]
				)


