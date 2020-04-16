from random import randint, choice

from abc import ABCMeta, abstractmethod
from copy import deepcopy
import numpy as np

from banditfuzz.generators.gen import mk_gen
from banditfuzz.instance import Instance
from banditfuzz.interface.smtlib.script import SExpr

import  banditfuzz.interface.Settings as settings

class Mutator:
	def __init__(self):
		self.model_required = True

	@abstractmethod
	def mutate(self, instance):
		pass
		
	@abstractmethod
	def reward(self,rewardVal):
		pass
	
	@abstractmethod
	def write_model(self):
		pass

	@abstractmethod
	def read_model(self):
		pass

		

		

				
		

			
			
	
			
	