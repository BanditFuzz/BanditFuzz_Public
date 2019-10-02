FuzzerNumberOfGenerations		        = 25
FuzzerPopulation 				        = 5
FuzzerNumberOfMutations		            = 2
FuzzerNumberOfHardestKept		        = 1
FuzzerNumberPopulationStart	            = 1
BugMode						            = False
SolverTimeout					        = 100
GeneratorMaxDepth				        = 6
GeneratorNumConst				        = 10
NoBandit = False

#Theory
theory = None #['QF_FP', 'QF_S']



#FP OPS
FP_Abs 	 				        	= True
FP_Neg    				            = True
FP_Add    				            = True
FP_Sub    				            = True
FP_Mul    				            = True
FP_Div   				            = True
FP_FMA   				            = False
FP_Rem   				            = False
FP_R2I   				            = True
FP_Sqrt   				            = True
FP_Min    				            = True
FP_Max    				            = True
FP_Leq    				            = True
FP_Lt     				            = True
FP_Geq    				            = True
FP_Gt     				            = True
FP_Eq     				            = True
FP_IsNorm 				            = True
FP_IsSub  				            = True
FP_IsZero 				            = True
FP_IsNan  				            = True
FP_IsNeg  				            = True
FP_IsPos  				            = True
FP_RNE								= True
FP_RNA								= False
FP_RTP								= True
FP_RTN								= True
FP_RTZ								= True
FloatWidth 					        = 64


#'=', '>', '<', '>=', '<=', 'Concat', 'Contains', 'At', 'Length', 'IndexOf', 'IndexOf2', 'PrefixOf', 'SuffixOf', 'Replace', 'ReInter', 'ReUnion', 'ReRange', 'RePlus', 'ReStar', 'ReConcat', 'Str2Re', 'InRegex', 'ToInt', 'FromInt', 'Substring')

STR_Eq 								= True
STR_Gt 								= True
STR_Geq								= True
STR_Lt 								= True
STR_Leq								= True
STR_Concat							= True
STR_Contains						= True
STR_At 								= True
STR_Length							= True
STR_IndexOf							= True
STR_IndexOf2						= True
STR_PrefixOf						= True
STR_SuffixOf 						= True
STR_Replace 						= True
STR_ReInter 						= True
STR_ReUnion 						= True
STR_ReRange 						= True
STR_RePlus 							= True
STR_ReStar 							= True
STR_ReConcat 						= True
STR_Str2RE 							= True
STR_InRegex 						= True
STR_ToInt 							= True
STR_FromInt							= True
STR_Substring						= True

Final_Input_Prefix = None




ConstNonNanTerms 				        = False
ConstNonInfTerms 				        = False
ConstNonZeroTerms 			            = False
ConstNonSubNormalTerms 		            = False
ConstRestrictRange_m1_p1 		        = False
ConstRestrictRange_fpmin_fpmax          = False
PythonRandomSeed 				        = -1
BanditTrainingMode 			            = False
BanditNumberTrainingIterations          = 99999999999999999999999999999
ModelFile						        = ""
RewardLogFile							= ""
ScoreLogFile							= ""
OutputDirectory							= ""
pdb							            = False
SaveAllSolve							= False

solvers = []
mutator = None

NumPrimaries							= 5
PrimarySolver							= ""


descriptions ={ 
	"FuzzerNumberOfGenerations"		: "Number of generations in fuzzer.",
	"FuzzerPopulation" 				: "Number in population of current generation.",
	"FuzzerNumberOfMutations"		: "Number of mutations performed on best observed instances",
	"FuzzerNumberOfHardestKept"		: "Number of hardest instances carried over into the next generation.",
	"FuzzerNumberPopulationStart"	: "Number of instances in the initial generation.",
	"BugMode"						: "Fuzz for inconsistencies amongst solvers. (Training only.)",
	"SolverTimeout"					: "Timeout for all solvers.",
	"GeneratorMaxDepth"				: "Max depth of AST",
	"GeneratorNumConst"				: "Number of unique constants in assertions.",
	"FP_Abs" 	 				: "Allow for generated formula with fp.abs",
	"FP_Neg"    				: "Allow for generated formula with fp.neg",
	"FP_Add"    				: "Allow for generated formula with fp.add",
	"FP_Sub"    				: "Allow for generated formula with fp.sub",
	"FP_Mul"    				: "Allow for generated formula with fp.mul",
	"FP_Div"   				: "Allow for generated formula with fp.div",
	"FP_FMA"   				: "Allow for generated formula with fp.fma",
	"FP_Rem"   				: "Allow for generated formula with fp.rem",
	"FP_R2I"   				: "Allow for generated formula with fp.roundToIntegral",
	"FP_Sqrt"   				: "Allow for generated formula with fp.sqrt",
	"FP_Min"    				: "Allow for generated formula with fp.min",
	"FP_Max"    				: "Allow for generated formula with fp.max",
	"FP_Leq"    				: "Allow for generated formula with fp.leq",
	"FP_Lt"     				: "Allow for generated formula with fp.lt",
	"FP_Geq"    				: "Allow for generated formula with fp.geq",
	"FP_Gt"     				: "Allow for generated formula with fp.gt",
	"FP_Eq"     				: "Allow for generated formula with fp.eq",
	"FP_IsNorm" 				: "Allow for generated formula with fp.isNormal",
	"FP_IsSub"  				: "Allow for generated formula with fp.IsSubnormal",
	"FP_IsZero" 				: "Allow for generated formula with fp.IsZero",
	"FP_IsNan"  				: "Allow for generated formula with fp.IsNaN",
	"FP_IsNeg"  				: "Allow for generated formula with fp.IsNeg",
	"FP_IsPos"  				: "Allow for generated formula with fp.IsPos",
	"FP_RNE"				: "Allow for generated formula with rounding mode RNE (round nearest even)",
	"FP_RNA"				: "Allow for generated formula with rounding mode RNA (round nearest away)",
	"FP_RTP"				: "Allow for generated formula with rounding mode RTP (round towards positive inf)",
	"FP_RTN"				: "Allow for generated formula with rounding mode RTN (round towards negative inf)",
	"FP_RTZ"				: "Allow for generated formula with rounding mode RTZ (round towards 0)",
	"ForceSatisfiableInstance" 		: "Force staisfiable instances by creating (a or (not a)) styled assertions.",
	"ForceUnsatisfiableInstance" 	: "Force unsatisfiable instances by creating (a and (not a)) styled instances",
	"Verbose" 						: "Printer Verbosity level.",
	"FloatWidth" 					: "Width of floating point constants.",
	"ConstNonNanTerms" 				: "Add auxilary assertion to prevent NaN consts",
	"ConstNonInfTerms" 				: "Add auxilary assertion to prevent Inf consts",
	"ConstNonZeroTerms" 			: "Add auxilary assertion to prevent 0 consts",
	"ConstNonSubNormalTerms" 		: "Add auxilary assertions to prevent subnormal consts.",
	"ConstRestrictRange_m1_p1" 		: "Restrict consts to be within the interval [-1,1]",
	"ConstRestrictRange_fpmin_fpmax": "Restrict consts to be within the interval [fp32.min, fp32.max]",
	"PythonRandomSeed" 				: "Random seed used in generation",
	"BanditTrainingMode" 			: "Bandit training.",
	"BanditNumberTrainingIterations": "Capped number of training iterations.",
	"ModelFile"						: "Model File of Learned Mutator",
	"RewardLogFile"					: "Log of rewards over training iterations.",
	"ScoreLogFile"					: "Log of scores over generation for RunTime Fuzzing",
	"OutputDirectory"				: "Directory of returned instances",
	"NumPrimaries"					: "Number of primary assertions in generated instances.",
	"pdb"							: "Enter PDB trace",
	"SaveAllSolve"					: "Save all solved instances",
	"PrimarySolver"					: "Primary Solver (defaulted to first argument)"
}