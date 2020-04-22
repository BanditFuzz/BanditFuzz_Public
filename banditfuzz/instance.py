import sys,os,copy,pdb,random,time
import numpy as np
import banditfuzz.interface.Settings as settings
from banditfuzz.interface.smtlib.script import SMTLIBScript,print_sexp
from banditfuzz.solver import run_solver

def par2(x): 
	if x < settings.timeout: return x
	else: return 2.0 * settings.timeout

class Instance(SMTLIBScript):
	def __init__(self,val=None):
		if settings.theory == 'QF_S':
			assert isinstance(val,str)
		else:
			assert isinstance(val,list)
	
		super().__init__()
		self.primaries = val
		self.times = {}
		self.results = {}
		self.name = str(time.time()).replace(".","") + str(os.getpid()) + str(random.randint(0,99999999)) + ".smt2"
		self.err_log = {}
		self._score = None
	def solve(self):
		for solver in settings.solvers:
			out, time, dump = run_solver(self,solver)
			self.results[solver] = out
			self.times[solver] = par2(time)
			if out is 'err': self.err_log[solver] = dump
		if len(self.err_log) > 0:
			self.to_file(settings.db + '/crashes/')

	def score(self):
		if self._score != None: return self._score
		if self.inconsistent():
			self.to_file(settings.db + '/bugs/')
			if settings.BugMode: self._score = 1.0
		elif settings.BugMode: self._score = 0.0
		elif len(self.err_log) > 0: self._score = 0.0
		elif len(self.times) == 1: self._score = par2(self.times[settings.solvers[0]]) if settings.solvers[0] not in self.err_log else float('-inf')
		else: self._score = par2(self.times[settings.solvers[0]]) - max([par2(self.times[solver]) for solver in settings.solvers if solver != settings.solvers[0] and solver not in self.err_log])
		return self._score
	def mk_auxilary(self):
		assert settings.theory == 'QF_FP'
		for c in self.funcs:
			if settings.ConstNonNanTerms:
				self.mk_assert(self.mk_not(self.mk_fp_isNaN(c)))
			if settings.ConstNonInfTerms:
				self.mk_assert(self.mk_not(self.mk_fp_isInfinite(c)))
			if settings.ConstNonZeroTerms:
				self.mk_assert(self.mk_not(self.mk_fp_isZero(c)))
			if settings.ConstNonSubNormalTerms:
				self.mk_assert(self.mk_not(self.mk_fp_isSubnormal(c)))
			if settings.ConstRestrictRange_m1_p1:
				self.mk_assert(self.mk_and(self.mk_fp_lt(c,self.mk_literal("0","01111111","00000000000000000000000")), self.mk_fp_gt(c,self.mk_literal("1","01111111","00000000000000000000000"))))

	def num_rounding_modes(self,form=None,prim_indx=0):
		assert settings.theory == 'QF_FP'
		if form is None:
			form = self.primaries[prim_indx]
		if len(form) == 1 or isinstance(form, str) or form.op == "fp":
			return 0
		else:
			op = form.op
			ret = 0
			start = 0
			if self.ops[op][0] == "Mode":
				start = 1
				ret +=  1
			for arg in form.args[start:]:
				ret += self.num_rounding_modes(arg)
			return ret

	def num_primary_terms(self, form=None, prim_indx=0 , count_round=False):
		assert settings.theory == 'QF_FP'
		if form is None:
			form = self.primaries[prim_indx]
		assert len(form) > 0
		#single float
		if len(form) == 1 or isinstance(form, str) or form.op == "fp":
			return 1
		else:
			op = form.op
			ret = 1
			start = 0
			if self.ops[op][0] == "Mode":
				start = 1
				if count_round:
					ret += 1
			for arg in form.args[start:]:
				ret += self.num_primary_terms(arg, count_round)
			return ret
	
	def num_consts(self,form=None,prim_indx=0):
		assert settings.theory == 'QF_FP'
		if form is None:
			form = self.primaries[prim_indx]
		assert len(form) > 0
		if isinstance(form, str):
			if form in self.funcs:
				return 1
			return 0
		#single float
		elif len(form) == 1:
			return 1
		else:
			op = form.op
			ret = 0
			start = 0
			if self.ops[op][0] == "Mode":
				start = 1
			for arg in form.args[start:]:
				ret += self.num_consts(arg)
			return ret

	def num_float_ops(self, form=None,prim_indx=0):
		assert settings.theory == 'QF_FP'
		if form is None:
			form = self.primaries[prim_indx]

		assert len(form) > 0
		#single float
		if len(form) == 1 or isinstance(form, str) or form.op == "fp":
			return 0
		else:
			op = form.op
			ret = 0
			if not self.ops[op][-1] == "Bool":
				ret = 1
			start = 0
			if self.ops[op][0] == "Mode":
				start = 1
			for arg in form.args[start:]:
				ret += self.num_float_ops(arg)
			return ret

	def to_file(self,loc,name=None):
		if name == None: name = self.name
		if loc[-1] != '/': loc = loc + '/'
		with open(loc + name ,'w') as outFile:
			outFile.write(";  depth   = " + str(settings.GeneratorMaxDepth) + "\n")
			outFile.write(";  nconst  = " + str(settings.GeneratorNumConst) + "\n")
			if settings.theory == 'QF_FP':
				outFile.write(";  fplen   = " + str(settings.FloatWidth) + "\n")
			outFile.write(";  assertions = " + str(settings.NumPrimaries ) + "\n")
			outFile.write(";  timeout = " + str(settings.timeout) + "\n")		
			outFile.write(";  time    = "  + str(self.times) 		+ "\n" )
			if settings.theory == 'QF_FP':				
				outFile.write(";  terms   = "  + str(n_terms) 	+ "\n" )
			if len(self.err_log) > 0:				
				outFile.write(";  output   = "  + str(self.err_log) 	+ "\n" )
			outFile.write(";  score   = "  + str(self.score())	+ "\n")
			outFile.write(";  result  = "  + str(self.results)  		+ "\n")
			outFile.write(str(self))
			outFile.close()

	def __lt__(self, other):
		return self.score() < other.score()

	def __str__(self):
		if settings.theory == 'QF_FP':
			return super().__str__()
		else:
			return self.primaries
	
	__repr__ = __str__
	
	def inconsistent(self):
		for solver in self.results:
			clean = ""
			for i in range(len(self.results[solver])):
				if self.results[solver][i].isalpha():
					clean = clean + self.results[solver][i]
			self.results[solver] = clean
		ans = ""
		says_sat = False
		says_unsat = False
		for solver in self.results:
			if self.results[solver] == "sat":
				says_sat = True
			if self.results[solver] == "unsat":
				says_unsat = True
		return says_sat and says_unsat
	