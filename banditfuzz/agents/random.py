from banditfuzz.mutators.mutator import Mutator
import numpy as np
import banditfuzz.interface.Settings as settings
import random
class Random(Mutator):
	def __init__(self,ops):
		self.nIter = 0
		self.ops = ops

	def __name__(self):
		return "rand"

	def select_action(self, banned_actions = []):
		action = random.choice(self.ops)
		while action in banned_actions:
			action = random.choice(self.ops)
		return action
		
	def reward(self,rew):
		self.nIter += 1

		
	def write_model(self):
		try:
			with open(settings.ModelFile, 'w') as file:	
				file.write(str(self.nIter) + "\n")
		except IOError as e:
			LogPrint("Couldn't save file.",verbose=3)
		
	def read_model(self):
		try:
			with open(settings.ModelFile, 'r') as file:
				lines = file.readlines()					
				self.nIter = int(lines[0])
				
		except IOError as e:
			LogPrint("Couldn't open model.",verbose=3)