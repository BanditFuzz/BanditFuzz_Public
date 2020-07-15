import os,sys,subprocess,time,random,pdb,tempfile
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

def run_solver(solver,benchmark,timeout):
	tfile = tempfile.NamedTemporaryFile(delete=True)
	with open(tfile.name,'w') as outFile:
		outFile.write(str(benchmark))
		outFile.close()
		out,err,time = run_command("timeout " + str(timeout+1) + " bash -c \'" + solver + " " + outFile.name + '\'')
		if time > timeout: return 'timeout',time, out + err
		if out.lower() in ['sat','unsat']: return out.lower(),time, out + err
		return 'err',time, out + err