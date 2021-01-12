from banditfuzz.mutators.mutator import Mutator
import numpy as np
import banditfuzz.interface.Settings as settings
from banditfuzz.util import LogPrint
class Epsilon(Mutator):
	def __init__(self,ops):
		self.nIter = 0			
		self.epsilon = 0.33
		self.ops = ops
		self.name = "EpsilonBandit"
		self.nActions = len(self.ops)
		self.n = 0
		self.N = np.ones(self.nActions,dtype=int)
		self.empiricalMeans = np.zeros(len(self.ops))
		self.lastAction = -1

	def __name__(self):
		return "eps"		

	def select_action(self,banned_actions=[]):
		self.lastAction = -1
		if np.random.rand(1)[0] < self.epsilon:
			self.lastAction = np.random.randint(0,self.nActions)
			while self.ops[self.lastAction] in banned_actions:
				self.lastAction = np.random.randint(0,self.nActions)

		else:
			val = np.NINF
			for a in range(self.nActions):
				if self.ops[a] in banned_actions:
					continue
				if self.empiricalMeans[a] > val:
					self.lastAction , val = a, self.empiricalMeans[a]
		return self.ops[self.lastAction]

	def reward(self,rew):
		rewardVal = None
		if rew:
			rewardVal = 1.0
		else:
			rewardVal = 0.0
	
		self.empiricalMeans[self.lastAction] = (self.N[self.lastAction] * self.empiricalMeans[self.lastAction] + rewardVal) / (self.N[self.lastAction] + 1)
		self.N[self.lastAction] += 1
		self.n += 1
		self.nIter += 1

	def write_model(self):
		try:
			with open(settings.ModelFile, 'w') as file:
				file.write(str(self.epsilon) + "\n")
				
				file.write(str(self.n) + "\n")
				
				for i in range(len(self.N)):
					file.write(str(self.N[i]) + " ")
				file.write("\n")
				
				for i in range(len(self.empiricalMeans)):
					file.write(str(self.empiricalMeans[i]) + " ")
				file.write("\n")
				
				file.write(str(self.nIter) + "\n")
		except IOError as e:
			LogPrint("Couldn't save file.",verbose=3)
		
	def read_model(self):
		try:
			with open(settings.ModelFile, 'r') as file:
				lines = file.readlines()
				self.epsilon = float(lines[0])
				self.n = int(lines[1])
				
				self.N = []
				lines[2] = lines[2].split(" ")
				while lines[2][-1] == "" or lines[2][-1] == "\n":
					lines[2].pop()
				for i in range(len(lines[2])):
					self.N.append(int(lines[2][i]))
				
				
				self.empiricalMeans = []
				lines[3] = lines[3].split(" ")
				while lines[3][-1] == "" or lines[3][-1] == "\n":
					lines[3].pop()
				for i in range(len(lines[3])):
					self.empiricalMeans.append(float(lines[3][i]))
					
					
				self.nIter = int(lines[4])
				
		except IOError as e:
			LogPrint("Couldn't open model.",verbose=3)