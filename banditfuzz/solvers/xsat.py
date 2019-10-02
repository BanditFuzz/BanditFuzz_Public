from banditfuzz.solvers.solver import Solver,run_solver
import banditfuzz.interface.Settings as settings

class XSat(Solver):
	def __init__(self):
		settings.OperatorAbs 	 				        = False
#		settings.OperatorNeg    				            = False
#		settings.OperatorAdd    				            = False
#		settings.OperatorSub    				            = False
#		settings.OperatorMul    				            = False
#		settings.OperatorDiv   				            = False
		settings.OperatorFMA   				            = False
		settings.OperatorRem   				            = False
		settings.OperatorR2I   				            = False
		settings.OperatorSqrt   				            = False
		settings.OperatorMin    				            = False
		settings.OperatorMax    				            = False
#		settings.OperatorLeq    				            = False
#		settings.OperatorLt     				            = False
#		settings.OperatorGeq    				            = False
#		settings.OperatorGt     				            = False
#		settings.OperatorEq     				            = False
		settings.OperatorIsNorm 				            = False
		settings.OperatorIsSub  				            = False
		settings.OperatorIsZero 				            = False
		settings.OperatorIsNan  				            = False
		settings.OperatorIsNeg  				            = False
		settings.OperatorIsPos  				            = False
#		settings.RoundingModeRNE							= False
		settings.RoundingModeRNA							= False
		settings.RoundingModeRTP							= False
		settings.RoundingModeRTN							= False
		settings.RoundingModeRTZ							= False
	def __name__(self):
		return "xsat"		

	def solve(self,instance):
		cmd = "cd solvers/xsat/xsat; make IN=$file > /dev/null;" + " python2 xsat.py --bench; " + "cd ../../../ ;"
		run_solver(cmd,instance,self.__name__())

