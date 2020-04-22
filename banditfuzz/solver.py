import os,sys,subprocess,time,random,pdb,tempfile
import banditfuzz.interface.Settings as settings

def run_command(command):

	start = time.time()
	process = subprocess.Popen(command,stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
	proc_stdout,proc_stderr = process.communicate()
	wall_time = time.time() - start


	proc_stdout = proc_stdout.decode('utf-8').strip()
	proc_stderr = proc_stderr.decode('utf-8').strip()
	out_lines = str(proc_stdout)
	err_lines = str(proc_stderr)

	return out_lines,err_lines,wall_time

	# if proc_stderr.upper().find("ERR") != -1 and proc_stderr.upper().find("TRACE") != -1:
	# 	print(proc_stderr)
	# 	return "err"
	# if proc_stderr.upper().find("CVC4 interrupted by SIGTERM".upper()) != -1 or t >= settings.SolverTimeout:
	# 	return "timeout"
	# if proc_stderr != "" and proc_stderr.find('FINISHED') == -1:
	# 	print("unhandled error warning: " + proc_stderr,file=sys.stderr)
	# 	return "crash"
	# for line in lines:
	# 	if line.lower().find("error") != -1  or line.lower().find("traceback") != -1 or line.lower().find("traceback") != -1:
	# 		print("Solver Error:" +  line)
	# 		print("Command: " + command)
	# 		return "err"
	# stdout = ""
	# stderr = "" 
	# for l in lines:
	# 	stdout += l
	# if stdout == "":
	# 	stdout = "empty"
	# for l in err_lines:
	# 	stderr += l
	# if stderr == "":
	# 	stderr = "empty"

	# if stdout == "empty" and proc_stderr != "empty":
	# 	return 'err'

	# if stdout == "empty" and stderr == "empty":
	# 	print('Warning: EMPTY OUTPUT: ' + command + "\t" + proc_stdout + "\t" + proc_stderr)
	# return stdout

def run_solver(instance,solver):
	tfile = tempfile.NamedTemporaryFile(delete=True)
	with open(tfile.name,'w') as outFile:
		outFile.write(str(instance))
		outFile.close()
		out,err,time = run_command("timeout " + str(settings.timeout+1) + " bash -c \'" + solver + " " + outFile.name + '\'')
		if time > settings.timeout: return 'timeout',time, out + err
		if out.lower() in ['sat','unsat']: return out.lower(),time, out + err
		return 'err',time, out + err

		

	# start = time.time()
	# out = subprocess_cmd(cmd)
	# instance.times[solver_name] = min(time.time() - start,settings.SolverTimeout)
	# instance.results[solver_name] = out 
	# if out != "err" and out != "sat" and out != "unsat" and instance.times[solver_name] >= settings.SolverTimeout:
	# 	instance.results[solver_name] = "timeout"

	# if not (instance.results[solver_name] == 'sat' or instance.results[solver_name] == 'unsat'):
	# 	instance.times[solver_name] = settings.SolverTimeout

	# os.remove('/tmp/' + instance.name)
