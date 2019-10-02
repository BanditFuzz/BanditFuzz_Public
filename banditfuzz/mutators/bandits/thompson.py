from banditfuzz.mutators.mutator import Mutator
import numpy as np
import banditfuzz.interface.Settings as settings
from banditfuzz.util import LogPrint
class Thompson(Mutator):
	def __init__(self,ops):
		self.nIter = 0
		self.ops = ops
		self.nActions = len(self.ops)
		self.k = 1
		self.empiricalMeans = np.zeros(len(self.ops))
		self.lastAction = -1
		self.alphaBetaPairs = []
		for i in range(self.nActions):
			self.alphaBetaPairs.append([1,1])
	
	def __name__(self):
		return "thomp"
	
	def select_action(self,banned_actions=[]):
		R = np.zeros([self.nActions,self.k])
		for a in range(self.nActions):
			for i in range(self.k):
				R[a][i] = np.random.beta(self.alphaBetaPairs[a][0],self.alphaBetaPairs[a][1])
		for a in range(self.nActions):
			sum = 0.0
			for i in range(self.k):
				sum += R[a][i]
			self.empiricalMeans[a] = 1.0/self.k * sum
				
		self.lastAction = -1
		val = np.NINF
		for a in range(self.nActions):
			if self.ops[a] in banned_actions:
					continue
			if self.empiricalMeans[a] > val:
				self.lastAction, val = a, self.empiricalMeans[a]
				
		return self.ops[self.lastAction]
	
	def reward(self,rew):
		rewardVal = None
		if rew:
			self.alphaBetaPairs[self.lastAction][0]+=1
			rewardVal = 1.0
		else:
			self.alphaBetaPairs[self.lastAction][1]+=1
			rewardVal = 0.0
		self.nIter += 1
		
	def write_model(self):
		try:
			with open(settings.ModelFile, 'w') as file:
				file.write(str(self.k) + "\n")
								
				for i in range(len(self.alphaBetaPairs)):
					file.write(str(self.alphaBetaPairs[i][0]) + " " + str(self.alphaBetaPairs[i][1]) + " ")
				file.write("\n")
				
				file.write(str(self.nIter) + "\n")
				
		except IOError as e:
			LogPrint("Couldn't save file.",verbose=3)
		
	def read_model(self):
		try:
			with open(settings.ModelFile, 'r') as file:
				lines = file.readlines()
				self.k = int(lines[0])
				
				self.alphaBetaPairs = []
				lines[1] = lines[1].split(" ")
				while lines[1][-1] == "" or lines[1][-1] == "\n":
					lines[1].pop()
				for i in range(self.nActions):
					self.alphaBetaPairs.append([int(lines[1][2*i]),int(lines[1][2*i+1])])
				
				self.nIter = int(lines[2])
				
		except IOError as e:
			LogPrint("Couldn't open model.",verbose=3)
