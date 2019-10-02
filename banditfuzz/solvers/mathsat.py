from banditfuzz.solvers.solver import Solver,run_solver
import banditfuzz.interface.Settings as settings
		
class MathSat(Solver):
	def __init__(self):
		settings.OperatorFMA = False
		settings.OperatorRem = False
		settings.RoundingModeRNA = False
	def __name__(self):
		return "mathsat"
	def solve(self,instance):
		cmd = "solvers/bin/mathsat5.5.3 $file"
		run_solver(cmd,instance,self.__name__())

