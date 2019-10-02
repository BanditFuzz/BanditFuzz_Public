from banditfuzz.solvers.solver import Solver,run_solver
import banditfuzz.interface.Settings as settings
		
class Colibri(Solver):
	def __init__(self):
		pass
	def __name__(self):
		return "colibri"
	def solve(self,instance):
		cmd =  "./solvers/colibri_2073/bin/colibri $file"
		run_solver(cmd,instance,self.__name__())


