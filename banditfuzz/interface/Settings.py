

FuzzerNumberOfGenerations		        = 100
FuzzerPopulation 				        = 5
FuzzerNumberOfMutations		            = 2
FuzzerNumberOfHardestKept		        = 1
FuzzerNumberPopulationStart	            = 5
BugMode						            = False
timeout							        = 2500
GeneratorMaxDepth				        = 5
GeneratorNumConst				        = 5
NoBandit = False

num_assertions							= 5

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
db										= None

save_all							= False

solvers = []

string_ops =  ['Concat', 'Contains', 'At', 'Length', 'IndexOf2', 'PrefixOf', 'SuffixOf', 'Replace', 'ReInter', 'ReRange', 'RePlus', 'ReStar', 'ReConcat', 'Str2Re', 'InRegex', 'ToInt', 'Substring']