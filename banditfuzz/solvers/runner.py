import os,sys,subprocess,time,random,pdb,tempfile,resource
from ..util import die,warning
from ..parser import args as settings


max_memory = 6 * 1024**1
def limit_virtual_memory():
	pass

def run_command(command):
	start = time.time()
	process = subprocess.Popen(command,stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True,preexec_fn=limit_virtual_memory)
	proc_stdout,proc_stderr = process.communicate()
	wall_time = time.time() - start
	proc_stdout = proc_stdout.decode('utf-8').strip()
	proc_stderr = proc_stderr.decode('utf-8').strip()
	out_lines = str(proc_stdout)
	err_lines = str(proc_stderr)
	return out_lines,err_lines,wall_time

def is_memout(out,err):
	if out.find('out of memory') != -1 or err.find('out of memory') != -1: return True
	return False

def run_solver(solver,benchmark,timeout):
	tfile = tempfile.NamedTemporaryFile(delete=True)
	with open(tfile.name,'w') as outFile:
		outFile.write(str(benchmark))
		outFile.close()

		out,err,time = run_command("timeout " + str(timeout+1) + " bash -c \'" + solver + " " + outFile.name + '\'')
		if time > timeout: return 'timeout',timeout+1, err
		if is_memout(out,err): return 'memout',time, err
		if out.lower() in ['sat','unsat']: return out.lower(),time, err
		if out.lower() in ['unknown']: return out.lower(),time, err

		warning(f"Error on solver: {solver}, benchmark = \n{str(benchmark)}\nstdout={out}\nerr={err}")
		return 'err/memory out',time, err
