from banditfuzz.solvers.solver import Solver,run_solver
import banditfuzz.interface.Settings as settings

class Z3(Solver):
	def __name__(self):
		return "z3"

	def solve(self,instance):	
		cmd = "z3 -smt2 -memory:4096 $file"
		run_solver(cmd,instance,self.__name__())
