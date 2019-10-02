from banditfuzz.mutators.mutator import Mutator

class GeneticBuckets(Mutator):

	def __init__(self, settings, gen=None, id=None):
		settings = settings
		if gen == None:
			self.gen = mk_gen(settings)
		else:
			self.gen = gen

		self.name = "genetic"
		
		if id == None:
			self.id = settings.PythonRandomSeed
		else:
			self.id = id
	
	def mutate(self, instance, instance2=None):
		bin1 = self.make_bins(instance)
		bin2 = self.make_bins(instance2)
		assert len(bin1) == len(bin2)
		bins = [[],[]]
		for i in range(len(bin1)):
			bins[0].append(bin1[i])
			bins[1].append(bin2[i])
		
		return self.build_form(bins)		

	def make_bins(self,inst,depth=0,ret=[]):
		while len(ret) < depth:
			ret.append([])
		if isinstance(primary, str) and primary in self.gen.funcs:
			ret[depth].append(primary)
			return ret
		else:
			ret.append(inst.op)
			sig = self.gen.instance.ops[inst.op]
			start = 0
			if sig[0] == "Mode":
				start = 1
			for i in range(start,len(inst.args)):
				make_bins(inst.args[i],depth+1,ret)
			return ret
			
	def build_form(bins,depth=0):
		coin = randint(0,1)
		select = choice(bins[coin][depth])
		if isinstance(select, str) and select in self.gen.funcs:
			return select
		else:
			ret_form = SExpr()
			ret_form.op = select
			sig = self.gen.instance.ops[select]
			if sig[0] == "Mode":
				ret_form.args.append("RNE")
			while len(ret_form.args) < len(sig) -1:
				ret_form.args.append(build_form(bins,depth+1))
			return ret_form

	def reward(self,rewardVal):
		pass
		
	def write_model(self):
		pass
		
	def read_model(self):
		pass