#!/usr/bin/env python3
from __future__ import division
import re
import os
import pdb,sys,traceback,time
import matplotlib.pyplot as plt
import csv
import subprocess

def parser():

    in_file = open("out_file.txt", "r")
    lines = in_file.readlines()
    non_linear_count = 0
    bv_variable_count = 0
    bool_variable_count = 0
    variable_count = 0
    bv_construct_count = 0
    bool_construct_count = 0
    predicate_eq_count = 0
    predicate_ineq_count = 0
    
    info =[]

    for item in lines:

        word_list = item.strip().split()
        #print(word_list)
        for word in word_list:
            word = re.sub(r'[()]', '', word)

            if word == 'bvmul' or word == 'bvudiv' or word == 'bvurem' or word == 'bvsrem' or word == 'bvsmod' or word == 'bvsdiv':
                non_linear_count +=1
                

            if word == 'bv_0' or word == 'bv_1' or word == 'bv_2' or word == 'bv_3' or word == 'bv_4' :
                bv_variable_count +=1
            
            if word == 'bool_0' or word == 'bool_1' or word == 'bool_2' or word == 'bool_3' or word == 'bool_4' :
                bool_variable_count +=1

            if word == 'bvmul' or word == 'bvudiv' or word == 'bvurem' or word == 'bvnot' or word == 'bvand' or word == 'bvor' or word == 'bvadd' or word == 'bvsub' or word == 'bvshl' or word == 'bvneg' or word == 'bvlshr' or word == 'bvult' or word == 'bvnand' or word == 'bvnor' or word == 'bvxnor' or word == 'bvsrem' or word == 'bvsmod' or word == 'bvashr' or word == 'bvsdiv' or word == 'bvule' or word == 'bvugt' or word == 'bvuge' or word == 'bvslt' or word == 'bvsle' or word == 'bvsgt' or word == 'bvsge':
                bv_construct_count +=1

            if word == 'and' or word == 'or' or word == 'not' or word == 'xor' or word == '=>' :
                bool_construct_count +=1

            if word == 'bvule' or word == 'bvuge' or word == 'bvsle' or word == 'bvsge':
                predicate_eq_count +=1

            if word == 'bvult' or word == 'bvugt' or word == 'bvslt' or word == 'bvsgt':
                predicate_ineq_count +=1

    bv_variable_count -=5
    bool_variable_count -=5
    variable_count = bv_variable_count + bool_variable_count
    construct_count = bv_construct_count + bool_construct_count 
    ratio_non_linear_const = float(non_linear_count/construct_count)
    ratio_ineq_eq_const = float(predicate_eq_count/predicate_ineq_count)
    ratio_ineq_total = float((predicate_eq_count+predicate_ineq_count)/construct_count)
    info = [construct_count, variable_count, non_linear_count,ratio_non_linear_const,predicate_eq_count,predicate_ineq_count, ratio_ineq_eq_const, ratio_ineq_total]
    #print(non_linear_count)
    #print(variable_count)

    return info


def sort(dictionary):

    sorted_dict=sorted(dictionary.items(), key = lambda kv:(kv[1], kv[0]))

    return sorted_dict



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







def main():

    result =[]
    time_difference = []
    time_z3 = []
    time_cvc4 = []
    time_bit = []
    user_time_z3 = []
    sys_time_z3 = []
    cpu_z3 = []
    user_time_cvc4 = []
    sys_time_cvc4 = []
    cpu_cvc4 = []
    user_time_diff = []
    sys_time_diff = []
    cpu_diff = []
    z3_bug_count = 0
    z3_bug_list =[]
    info = []
    full_info = []
    z3_time = {}
    cvc4_time = {}
    bit_time = {}
    x = []

    for i in range (50):
        x.append(i)
        cmd = 'smtfuzz -bv --weight bvudiv 10 bvurem 10 bvsrem 10 bvsdiv 10 --64  -d 5 > out_file.txt'
        cmd_cp= 'cp out_file.txt inputs/' + str(i) + '.txt'
        cmd_cp_bug= 'cp out_file.txt bugs/' + str(i) + '.txt'
        
        
        os.system(cmd)
        os.system(cmd_cp)
        tmp = parser()

        cmd_z3 = '/usr/bin/time -o time_file_z3.txt -f "%e" z3 -T:1200 out_file.txt > out_file_z3.txt'
        cmd_cvc4 = '/usr/bin/time -o time_file_cvc4.txt -f "%e" cvc4 --lang=smt2 --tlimit=1200000 out_file.txt > out_file_cvc4.txt'
        cmd_bit = '/usr/bin/time -o time_file_bit.txt -f "%e" /home/cha/project/Bitwuzla-fixed/bin/bitwuzla --smt2 -t 1200 out_file.txt > out_file_bit.txt'
        #cmd_z3 = 'z3 -T:1200 out_file.txt'
        #cmd_cvc4 = 'cvc4 --lang smt2 --tlimit=1200000 out_file.txt'
        
        z3 = os.system(cmd_z3)
        cvc4 = os.system(cmd_cvc4)
        bit = os.system(cmd_bit)
        #z3_results,z3_errors,z3_times = run_command(cmd_z3)
        #cvc4_results,cvc4_errors,cvc4_times = run_command(cmd_cvc4)
          
    
        z3_result_file = open("out_file_z3.txt", "r")
        cvc4_result_file = open("out_file_cvc4.txt", "r")
        bit_result_file = open("out_file_bit.txt", "r")
        #z3_err_file = open("err_file_z3.txt", "r")
        #cvc4_err_file = open("err_file_cvc4.txt", "r")



        #print(z3_results,z3_errors,z3_times)
        #print(cvc4_results,cvc4_errors,cvc4_times)
        #if (z3_result_file.readline() != cvc4_result_file.readline()):

         #   result.append(int('0'))

        #else:
            
         #   result.append(int('1'))

        #z3_result = z3_result_file.readline()
        #cvc4_result = cvc4_result_file.readline()

        tmp.append(cvc4_result_file.readline().rstrip("\n"))
        tmp.append(z3_result_file.readline().rstrip("\n"))
        tmp.append(bit_result_file.readline().rstrip("\n"))
        #tmp.append(cvc4_err_file.readline().rstrip("\n"))
        #tmp.append(z3_err_file.readline().rstrip("\n"))


        #tmp.append(cvc4_results.rstrip("\n"))
        #tmp.append(z3_results.rstrip("\n"))
        #tmp.append(cvc4_errors.rstrip("\n"))
        #tmp.append(z3_errors.rstrip("\n"))

        #time_analysis =analyze_time()

        #if time_analysis[3] == True:
            
         #   z3_bug_count += 1
         #   z3_bug_list.append(z3_bug_count)
         #   os.system(cmd_cp_bug)


        #else:
         #   z3_bug_list.append(z3_bug_count)
            
        #time_z3.append(time_analysis[0])
        #time_cvc4.append(time_analysis[1])
        #time_difference.append(time_analysis[2])
        
        z3_time_file = open("time_file_z3.txt", "r")
        cvc4_time_file = open("time_file_cvc4.txt", "r")
        bit_time_file = open("time_file_bit.txt", "r")

        cvc4_times = cvc4_time_file.readline().rstrip("\n")
        cvc4_time_tmp = cvc4_times.split()

        if cvc4_time_tmp[0]== 'Command':
            tmp.append(cvc4_times)
            cvc4_time[i] = float(cvc4_time_file.readline().rstrip("\n"))


        else:
            tmp.append(" ")
            cvc4_time[i] = float(cvc4_times)



        z3_times = z3_time_file.readline().rstrip("\n")
        z3_time_tmp = z3_times.split()

        if z3_time_tmp[0]== 'Command':
            tmp.append(z3_times)
            z3_time[i] = float(z3_time_file.readline().rstrip("\n"))
        
        else:
            tmp.append(" ")
            z3_time[i] = float(z3_times)

        
        bit_times = bit_time_file.readline().rstrip("\n")
        bit_time_tmp = bit_times.split()

        if bit_time_tmp[0]== 'Command':
            tmp.append(bit_times)
            bit_time[i] = float(bit_time_file.readline().rstrip("\n"))

        else:
            tmp.append(" ")
            bit_time[i] = float(bit_times)

        #z3_time[i] = float(time_analysis[0][1])
        #z3_time[i] = z3_times
        #cvc4_time[i] = float(time_analysis[1][1])
        #cvc4_time[i] = cvc4_times
        full_info.append(tmp)
        print("Z3 time: ", z3_time)
        print("cvc4 time ", cvc4_time)
        print("BitWuzla time ", bit_time)
        print(full_info)

        print("Completed count: ", i+1)

    #print(result)
    #print(time_z3)
    #print(time_cvc4)
    #print(time_difference)

    

    cvc4_sorted = sort(cvc4_time)
   # print(cvc4_sorted)
    cvc4_max = cvc4_sorted[:]
    info =[]
    for item in cvc4_max:

        key = item[0]
        value = item[1]
        tmp_list = [key, full_info[key][0], full_info[key][1], full_info[key][2], full_info[key][3],full_info[key][4], full_info[key][5],full_info[key][6], full_info[key][7], full_info[key][8], full_info[key][9],full_info[key][10], full_info[key][11], full_info[key][12], full_info[key][13], value, z3_time[key], bit_time[key]]
        info.append(tmp_list)

    #print(info)


    with open("output_cvc4.csv", "wb") as f:
        writer = csv.writer(f)
        writer.writerows(info)


    z3_sorted = sort(z3_time)
   # print(z3_sorted)
    z3_max = z3_sorted[:]
    tmp_list1 =[]
    info1 =[]
    for item1 in z3_max:

        key = item1[0]
        value = item1[1]
        tmp_list1 = [key, full_info[key][0], full_info[key][1], full_info[key][2], full_info[key][3],full_info[key][4], full_info[key][5],full_info[key][6], full_info[key][7], full_info[key][8], full_info[key][9], full_info[key][10], full_info[key][11], full_info[key][12], full_info[key][13], cvc4_time[key], value, bit_time[key]]
        info1.append(tmp_list1)

    #print(info)


    with open("output_z3.csv", "wb") as f1:
        writer1 = csv.writer(f1)
        writer1.writerows(info1)




    #for item in time_z3:

     #   user_time_z3.append(item[0])
      #  sys_time_z3.append(item[1])
      #  cpu_z3.append(item[2])

   # for item in time_cvc4:

    #    user_time_cvc4.append(item[0])
    #    sys_time_cvc4.append(item[1])
    #    cpu_cvc4.append(item[2])

    #for item in time_difference:

     #   user_time_diff.append(item[0])
     #   sys_time_diff.append(item[1])
     #   cpu_diff.append(item[2])

    #print(user_time_z3)        
    #plt.figure(1)
    #plt.plot(x, user_time_z3, label="Z3")
    #plt.plot(x, user_time_cvc4, label="CVC4")
    #plt.plot(x, user_time_diff, label="Difference")
    #plt.xlabel('Number of iterations')
    #plt.ylabel('Time')
    #plt.title("User Time")
    #plt.legend()
    
    #plt.figure(2)
    #plt.plot(x, sys_time_z3, label="Z3")
    #plt.plot(x, sys_time_cvc4, label="CVC4")
    #plt.plot(x, sys_time_diff, label="Difference")
    #plt.xlabel('Number of iterations')
    #plt.ylabel('Time')
    #plt.title("System Time")
    #plt.legend()

    #plt.figure(3)
    #plt.plot(x, cpu_z3, label="Z3")
    #plt.plot(x, cpu_cvc4, label="CVC4")
    #plt.plot(x, cpu_diff, label="Difference")
    #plt.xlabel('Number of iterations')
    #plt.ylabel('Precentage')
    #plt.title("CPU Utilization")
    #plt.legend()

    #plt.figure(4)
    #plt.plot(x, result, label="Result")
    #plt.xlabel('Number of iterations')
    #plt.ylabel('SAT/UNSAT')
    #plt.title("Result Comparison")
    #plt.legend()

    #plt.figure(5)
    #plt.plot(x, z3_bug_list, label="Bug Count")
    #plt.xlabel('Number of iterations')
    #plt.ylabel('Count')
    #plt.title("Z3 bug count")
    #plt.legend()

    #plt.show()


def analyze_time():

    time_diff = []
    time_z3 = []
    time_cvc4 = []
    z3_bug = False
    cvc4_bug = False
    
    
    z3_time_file = open("time_file_z3.txt", "r")
    cvc4_time_file = open("time_file_cvc4.txt", "r")

    z3_tmp = z3_time_file.readline()
    cvc4_tmp = cvc4_time_file.readline()    
    z3_list = z3_tmp.split()
    cvc4_list = cvc4_tmp.split()
    #print(z3_list)
    #print(cvc4_list)

    #z3_list = ['sdgs', 'sgrth', 'sgrerhg', 'srge', 'erget']   
    

    if (re.match(r"([0-9,.,:]+)",z3_list[0]) is not None) and (re.match(r"([0-9,.,:]+)",cvc4_list[0]) is not None): 
        for i in range(4): 

            m1 = re.match(r"([0-9,.,:]+)",z3_list[i])
            m2 = re.match(r"([0-9,.,:]+)",cvc4_list[i])
            #print(z3_list[i])
            #print(m1.group(0))
            #print(m1.group(1))
            #print(m1.group(2))
            #print(m1.group(3))
            if i != 2:
            
                time_z3.append(float(m1.group(1)))
                time_cvc4.append(float(m2.group(1)))
                time_diff.append( float(m1.group(1)) - float(m2.group(1)))
        
    elif (re.match(r"([0-9,.,:]+)",z3_list[0]) is None) and (re.match(r"([0-9,.,:]+)",cvc4_list[0]) is None):

        z3_bug = True
        time_z3 = [1500, 1500 ,200]
        cvc4_bug = True
        time_cvc4 = [1500, 1500 ,200]
        time_diff = [0, 0, 0]

    elif re.match(r"([0-9,.,:]+)",z3_list[0]) is None:

        z3_bug = True
        z3_list = [1500, 1500, 999, 200]

        for i in range(4):

            m2 = re.match(r"([0-9,.,:]+)",cvc4_list[i])

            if i != 2:

                time_z3.append(z3_list[i])
                time_cvc4.append(float(m2.group(1)))
                time_diff.append(z3_list[i] - float(m2.group(1)))

    elif re.match(r"([0-9,.,:]+)",cvc4_list[0]) is None:

        cvc4_bug = True
        cvc4_list = [1500, 1500, 999, 200]

        for i in range(4):

            m1 = re.match(r"([0-9,.,:]+)", z3_list[i])

            if i != 2:

                time_z3.append(float(m1.group(1)))
                time_cvc4.append(cvc4_list[i])
                time_diff.append(float(m1.group(1)) - cvc4_list[i])


            
    return time_z3, time_cvc4, time_diff, z3_bug, cvc4_bug

if __name__ == "__main__":

    main()
