import numpy as np
class ThompsonSampling:
	def __init__(self,n_actions):
		self.n_it = 0
		self.n_actions = n_actions
		self.k = 1
		self.action = None
		self.alpha_beta = [[1,1] for i in range(self.n_actions)]
	
	def select_action(self):
		samples = [0] * self.n_actions
		for a in range(self.n_actions):
			for i in range(self.k):
				samples[a]  += np.random.beta(self.alpha_beta[a][0],self.alpha_beta[a][1])				
		self.action = np.argmax(samples)
		return self.action
	
	def reward(self,reward):
		if reward:
			self.alpha_beta[self.action][0] += 1
		else:
			self.alpha_beta[self.action][1] += 1
		self.n_it += 1
