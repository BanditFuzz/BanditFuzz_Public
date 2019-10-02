from abc import ABCMeta, abstractmethod
import os
import banditfuzz.interface.Settings as settings
import sys
import subprocess
import time
import random
import tempfile as tmpf
import pdb
import tempfile as tmpf
import time

def subprocess_cmd(command):

	start = time.time()
	process = subprocess.Popen(command,stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
	proc_stdout,proc_stderr = process.communicate()
	t = time.time() - start


	proc_stdout = proc_stdout.decode('utf-8').strip()
	proc_stderr = proc_stderr.decode('utf-8').strip()
	lines = str(proc_stdout).split("\n")
	err_lines = str(proc_stderr.split("\n"))
	if proc_stderr.upper().find("ERR") != -1 and proc_stderr.upper().find("TRACE") != -1:
		print(proc_stderr)
		return "err"
	if proc_stderr.upper().find("CVC4 interrupted by SIGTERM".upper()) != -1 or t >= settings.SolverTimeout:
		return "timeout"
	if proc_stderr != "" and proc_stderr.find('FINISHED') == -1:
		print("unhandled error warning: " + proc_stderr,file=sys.stderr)
		return "crash"
	for line in lines:
		if line.lower().find("error") != -1  or line.lower().find("traceback") != -1 or line.lower().find("traceback") != -1:
			print("Solver Error:" +  line)
			print("Command: " + command)
			return "err"
	stdout = ""
	stderr = "" 
	for l in lines:
		stdout += l
	if stdout == "":
		stdout = "empty"
	for l in err_lines:
		stderr += l
	if stderr == "":
		stderr = "empty"

	if stdout == "empty" and proc_stderr != "empty":
		return 'err'

	if stdout == "empty" and stderr == "empty":
		print('Warning: EMPTY OUTPUT: ' + command + "\t" + proc_stdout + "\t" + proc_stderr)
	return stdout

def run_solver(cmd,instance,solver_name):
	if solver_name in instance.times:
		return		
	f = tmpf.NamedTemporaryFile(delete=False)
	instance.to_file(f.name)
	cmd = "timeout " + str(settings.SolverTimeout) + " bash -c \'" + cmd.replace('$file',f.name) + '\''

	start = time.time()
	out = subprocess_cmd(cmd)
	instance.times[solver_name] = min(time.time() - start,settings.SolverTimeout)
	instance.stdout[solver_name] = out 
	if out != "err" and out != "sat" and out != "unsat" and instance.times[solver_name] >= settings.SolverTimeout:
		instance.stdout[solver_name] = "timeout"

	if not (instance.stdout[solver_name] == 'sat' or instance.stdout[solver_name] == 'unsat'):
		instance.times[solver_name] = settings.SolverTimeout

	if out == 'empty':
		print(str(instance))

	process = subprocess.Popen("rm core*; rm filtered_file*;",stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
	proc_stdout,proc_stderr = process.communicate()

class Solver:
	def __init__(self,name):
		self.name = name

	def solve(self, instance):
		run_solver("" + self.name + "/run.sh $file" , instance, self.name)
		
	def __name__(self):
		return self.name