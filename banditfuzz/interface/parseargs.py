import  banditfuzz.interface.Settings as settings
from random import randrange,seed
from banditfuzz.mutators import mutator
from banditfuzz.mutators.mutator import Mutator
import banditfuzz.solvers.solver as solvers
import banditfuzz.mutators as mutators
import banditfuzz.solvers as solvers
import sys,inspect
import time
import numpy as np
import argparse
import pdb
import os
from os.path import dirname
import glob

def parse():
	parser = argparse.ArgumentParser()
	parser.add_argument('solvers' , type=str,nargs='+')
	parser.add_argument('ModelFile',type=str,nargs='?')
	parser.add_argument('-fp',action='store_true')
	parser.add_argument('-rt' ,action='store_true')
	parser.add_argument('-all',action='store_true')

	for arg in dir(settings):
		if not arg.startswith("__") and arg != 'descriptions' and arg != 'solvers' and arg != 'mutator':
			if arg in settings.descriptions:
				parser.add_argument('--' + arg ,type = type(getattr(settings,arg)), default=getattr(settings,arg), help=settings.descriptions[arg])
			else:
				parser.add_argument('--' + arg ,type = type(getattr(settings,arg)), default=getattr(settings,arg), help="No provided description.")
	args = parser.parse_args()
	
	for a in dir(args):
		if not a.startswith('_'):
			setattr(settings,a,getattr(args,a))


	# if not settings.NoBandit:	
	# 	mutator_modules = glob.glob(mutators.__path__._path[0]+"/bandits/*.py")

	# 	mutator_modules[:] = [m.split('/')[-1] for m in mutator_modules ]
	# 	mutator_modules[:] = [m[0:len(m)-3] for m in mutator_modules]
	# 	for mut in mutator_modules:
	# 		__import__('banditfuzz.mutators.bandits.' + mut)

	# 	done = False
	# 	all_mutators  = []
	# 	settings.mutator = Thompson
	# 	for mut in mutator_modules:
	# 		if mut.upper() == settings.mutator.upper():
	# 			for m in inspect.getmembers(sys.modules['banditfuzz.mutators.bandits.'+mut], inspect.isclass):
	# 				if m[0].upper() == mut.upper():
	# 					settings.mutator = m[1]
	# 					done = True
	# 					break
	# 			if done:
	# 				break
	# 	if not done:
	# 		print("Could not find " + settings.mutator)
	# 		print("Mutators = " + str(mutator_modules))
	# 		sys.exit(1)
	


	# solver_modules = glob.glob(solvers.__path__[0]+"/*.py")
	# solver_modules[:] = [m.split('/')[-1] for m in solver_modules ]
	# solver_modules[:] = [m[0:len(m)-3] for m in solver_modules]
	# for solver in solver_modules:
	# 	__import__('banditfuzz.solvers.'+solver)
	
	# for s in range(len(settings.solvers)):
	# 	done = False
	# 	for solver in solver_modules:	
	# 		if solver.upper() == settings.solvers[s].upper():
	# 			for m in inspect.getmembers(sys.modules['banditfuzz.solvers.'+solver], inspect.isclass):
	# 				if m[0].upper() == solver.upper():
	# 					settings.solvers[s] = m[1]
	# 					done = True
	# 					break
	# 		if done:
	# 			break
	# 	if not done:
	# 		print("Could not find " + settings.solvers[s])
	# 		print("Solvers = " + str(solver_modules))
	# 		sys.exit(1)
	for solver in args.solvers:
		assert os.path.isfile(solver), "No path to: " + solver
	settings.solver = list(args.solvers)
	if not settings.NoBandit:	
		if settings.ModelFile == None:
			print("No Model File!")
			# sys.exit(1)

	if settings.PythonRandomSeed == -1:
		rng = randrange(sys.maxsize)
		seed(rng)
		np.random.seed(rng % (2 ** 32 -1))
		print("Using RNG:", rng)
		settings.PythonRandomSeed = rng

	if settings.RewardLogFile == "":
		print("No specified reward file.")
		print("Rewards will be printed to stdout")
		settings.RewardLogFile = None
	else:
		file = open(settings.RewardLogFile,"w")
		file.close()
	
	if settings.ScoreLogFile == "":
		print("No specified file for score logging.")
		print("Scores can be found in stdout")
		settings.ScoreLogFile = None


	if settings.OutputDirectory != "":
		if not os.path.isdir(settings.OutputDirectory):
			print("Creating directory: " + settings.OutputDirectory)
			os.mkdir(settings.OutputDirectory)
		print("Saving to " + settings.OutputDirectory)

		if not os.path.isdir(settings.OutputDirectory+"/all_tests"):
			print("Creating  directory: " + str(settings.OutputDirectory + "/all_tests"))
			os.mkdir(settings.OutputDirectory + "/all_tests")
		print("Saving all solved to " + settings.OutputDirectory+"/all_tests")

		if not os.path.isdir(settings.OutputDirectory+"/crashes"):
			print("Creating  directory: " + str(settings.OutputDirectory + "/crashes"))
			os.mkdir(settings.OutputDirectory + "/crashes")
		print("Saving crashes to " + settings.OutputDirectory+"/crashes")

		if not os.path.isdir(settings.OutputDirectory+"/final"):
			print("Creating  directory: " + str(settings.OutputDirectory + "/final"))		
			os.mkdir(settings.OutputDirectory + "/final")
		print("Saving final instances to " + settings.OutputDirectory+"/final")

		if not os.path.isdir(settings.OutputDirectory+"/bugs"):
			print("Creating  directory: " + str(settings.OutputDirectory + "/bugs"))		
			os.mkdir(settings.OutputDirectory + "/bugs")
		print("Saving found bugged instances to " + settings.OutputDirectory+"/bugs")
	else:
		settings.OutputDirectory = None


	if args.fp:
		settings.theory = 'QF_FP'
	else:
		settings.theory = 'QF_S'
		

	if args.rt:
		settings.BugMode = False
	
