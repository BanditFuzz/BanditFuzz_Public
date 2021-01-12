from banditfuzz.mutators.mutator import Mutator	
import numpy as np
import banditfuzz.interface.Settings as settings
from banditfuzz.util import LogPrint
class UCB(Mutator):
	def __init__(self,ops):
		self.nIter = 0		
		self.ops = ops
		self.name = "UCBBandit"
		self.nActions = len(self.ops)
		self.empiricalMeans = np.zeros(self.nActions)
		self.N = np.ones(self.nActions,dtype=int)
		self.lastAction = -1
		self.n = 0

	
	def __name__(self):
		return "ucb"
	
	def select_action(self,banned_actions = []):
		Hoef = np.zeros(self.nActions)
		for a in range(self.nActions):
			Hoef[a] = self.empiricalMeans[a] + np.sqrt( (2.0 * np.log(self.n+1.0))/self.N[a])
		self.lastAction = -1
		maxVal = np.NINF
		for a in range(self.nActions):
			if self.ops[a] in banned_actions:
				continue
			if Hoef[a] > maxVal:
				self.lastAction, maxVal = a,Hoef[a]
				
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
				for i in range(len(self.N)):
					file.write(str(self.N[i]) + " ")
				file.write("\n")
				
				for i in range(len(self.empiricalMeans)):
					file.write(str(self.empiricalMeans[i]) + " ")
				file.write("\n")
				
				file.write(str(self.n) + "\n")
				
				file.write(str(self.nIter) + "\n")
				
		except IOError as e:
			LogPrint("Couldn't save file.",verbose=3)
		
	def read_model(self):
		try:
			with open(settings.ModelFile, 'r') as file:
				lines = file.readlines()
				
				self.N = []
				lines[0] = lines[0].split(" ")
				while lines[0][-1] == "" or lines[0][-1] == "\n":
					lines[0].pop()
				for i in range(len(lines[0])):
					self.N.append(int(lines[0][i]))
				
				
				self.empiricalMeans = []
				lines[1] = lines[1].split(" ")
				while lines[1][-1] == "" or lines[1][-1] == "\n":
					lines[1].pop()
				for i in range(len(lines[1])):
					self.empiricalMeans.append(float(lines[1][i]))
					
				self.n = int(lines[2])
				
				self.nIter = int(lines[3])
				
		except IOError as e:
			LogPrint("Couldn't open model.",verbose=3)

