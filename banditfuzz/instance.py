import sys
import os
import copy
import pdb

import numpy as np
import time
import banditfuzz.interface.Settings as settings

from banditfuzz.interface.smtlib.script import SMTLIBScript,print_sexp

class Instance(SMTLIBScript):
	def __init__(self,val=None):
		if settings.theory == 'QF_S':
			assert isinstance(val,str)
		else:
			assert isinstance(val,list)
	
		super().__init__()
		self.primaries = val
		self.times = {}
		self.stdout = {}

	def score(self):
		score = 0.0
		if settings.BugMode:
			if self.inconsistent():
				return 1.0
			else:
				return 0.0

		if len(self.times) == 1:
			score = 0.0
			for solver in self.times:
				score += self.times[solver]
		else:
			main_score = -1
			other_score = -999999999999999.0
			for solver in self.times:
				if solver == settings.PrimarySolver:
					main_score = self.times[solver]
				else:
					other_score = max(other_score,self.times[solver])
		
			if other_score >= settings.SolverTimeout:
				other_score = settings.SolverTimeout * 3.0
			if main_score >= settings.SolverTimeout:
				main_score = settings.SolverTimeout * 3.0
			score = main_score - other_score
		return score

		
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

	def to_file(self,fname=""):

		if settings.theory == 'QF_FP':
			n_terms = 0
			for i in range(len(self.primaries)):
				n_terms += self.num_primary_terms(prim_indx=i)


		with open(fname,'w') as out:
			out.write(";  depth   = " + str(settings.GeneratorMaxDepth) + "\n")
			out.write(";  nconst  = " + str(settings.GeneratorNumConst) + "\n")
			if settings.theory == 'QF_FP':
				out.write(";  fplen   = " + str(settings.FloatWidth) + "\n")
			out.write(";  assertions = " + str(settings.NumPrimaries ) + "\n")
			out.write(";  timeout = " + str(settings.SolverTimeout) + "\n")		
			out.write(";  time    = "  + str(self.times) 		+ "\n" )
			if settings.theory == 'QF_FP':				
				out.write(";  terms   = "  + str(n_terms) 	+ "\n" )
			out.write(";  score   = "  + str(self.score())	+ "\n")
			out.write(";  stdout  = "  + str(self.stdout)  		+ "\n")
			out.write(str(self))
			out.close()

	def __lt__(self, other):
		return self.score() < other.score()

	def __str__(self):
		if settings.theory == 'QF_FP':
			return super().__str__()
		else:
			return self.primaries
	
	__repr__ = __str__
	
	def inconsistent(self):
		for solver in self.stdout:
			clean = ""
			for i in range(len(self.stdout[solver])):
				if self.stdout[solver][i].isalpha():
					clean = clean + self.stdout[solver][i]
			self.stdout[solver] = clean
		ans = ""
		says_sat = False
		says_unsat = False
		for solver in self.stdout:
			if self.stdout[solver] == "sat":
				says_sat = True
			if self.stdout[solver] == "unsat":
				says_unsat = True
		return says_sat and says_unsat
	