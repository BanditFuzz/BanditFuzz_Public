from banditfuzz.solvers.solver import Solver,run_solver
import banditfuzz.interface.Settings as settings

class cvc4(Solver):
	def __name__(self):
		return "cvc4"

	def solve(self,instance):	
		cmd = "solvers/bin/cvc4 --lang smt $file"
		run_solver(cmd,instance,self.__name__())
