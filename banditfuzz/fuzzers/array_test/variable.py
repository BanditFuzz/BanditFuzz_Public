## Inside fuzzers/Array Test Directory
from __future__ import absolute_import
from ..variable import Variable
import random

class ArrVariable(Variable):
    def __init__(self, arr_type):
        self.sort = 'arr'
        self.arr_type = arr_type

    def declare(self):
        return f'(declare-fun a1 () (Array {self.arr_type[0]} {self.arr_type[1]}))'

    def __str__(self):
        return self.arr_type[0]



# class ArrVariable(Variable):
#     def __init__(self, idx_name):
#         self.sort = 'arr'
#         self.idx_name = idx_name

#     def declare(self):
#         return f'(declare-fun i{self.idx_name} () Index)'

#     def __str__(self):
#         return self.idx_name

























# from literal import SelectLiteral, StoreLiteral
'''
Class:
- Initialize Sorts
- Initialize Arrays
    - Initialize Array
    - Declare New Arrayx`
    - Declare Array Index
    - Declare Array Element

'''

########################
## A) Initialize Sorts (Default)
########################
'''
(declare-sort Index 0)
(declare-sort Element 0)

'''

# class Init_Arrsort:
#     def __init__(self):
#         self.sort1 = 'Index'
#         self.sort2 = 'Element'
#         self.start = 0

#     def declare(self):
#         return f'(declare-sort {self.sort1} {self.start})\n(declare-sort {self.sort2} {self.start})'

#     def __repr__(self):
#         return self.start 


# #############################
# ## B) Initialize Array
# #############################
# class Init_arr(object):
#     def __init__(self, arr_num):
#         self.arr_num = arr_num
#         self.index_num = arr_num
#         # self.element_num = random.choice([arr_num + random.choice([1, 2]), arr_num - 1]) ## Element has to be different than Array Number
#         self.element_num = arr_num
#         self.sort0 = '(Array Index Element)'
#         self.sort1 = 'Index'
#         self.sort2 = 'Element'

#     def initialize(self):
#         return f'(declare-fun a1 () {self.sort0})'
    
#     def declare_new_array(self):
#         return f'(declare-fun a_{self.arr_num} () {self.sort0})'


#     def declare_arr_index(self):
#         return f'(declare-fun i{self.index_num} () {self.sort1})' ## Ex: [declare-fun i0 () Index]

#     def declare_arr_element(self):
#         return f'(declare-fun e_{self.element_num} () {self.sort2})' ## Ex: [declare-fun e_139 () Element]

#     def __repr__(self):
#         return self.arr_num

# ## Test Cases Structure
# '''

# Structure 1:
# - Declare Default Sorts
# - Declare New Arrays
# - Declare New Elements
# - Declare default array along with random number of Indexes
# - Assertions
# # Ex: https://clc-gitlab.cs.uiowa.edu:2443/SMT-LIB-benchmarks/QF_AX/-/blob/master/swap/swap_t3_np_sf_ai_00010_007.cvc.smt2

# Structure 2:
# - Declare Default Sorts
# - Declare Default array along with randon number of Indexes
# - Assertions ('?V_' is used) 
# # Ex: https://clc-gitlab.cs.uiowa.edu:2443/SMT-LIB-benchmarks/QF_AX/-/blob/master/swap/swap_invalid_t1_np_nf_ai_00003_001.cvc.smt2

# '''


# ## Function 1: Used as last part in Case 1 and Full Case 2
# names_of_default_indexes = [] 
# def default_arr():
#     default_val = 1
#     arr = Init_arr(default_val).initialize()
#     print(arr)
#     rdn = random.randint(3, 9)
#     for i in range(rdn):
#         names_of_default_indexes.append(default_val)
#         declare_index = Init_arr(default_val).declare_arr_index()
#         print(declare_index)
#         default_val += 1

# ## Function 2: Generate New Arrays & Elements for Case 1
# def case1_arr(x1):

#     ################################
#     ## Part 2: Declare Arrays (a_)
#     ################################
#     counter1 = random.randint(3, 15) ## (Can Change how many number of new arrays we need)
#     name_for_array = []
#     for r1 in range(counter1):
#         name_for_array.append(x1)
#         new_arr = Init_arr(x1).declare_new_array()
#         print(new_arr)
#         increment_counter = random.choice([1, 2])
#         x1 += increment_counter

#     ############################################
#     #####Part 3: Declare Elements (e_)######## 
#     ############################################
#     # In all the test cases, number of elements is slightly less than the number of new arrays. Ex: New Arrays: 39, Elements: 37
#     # Ex: https://clc-gitlab.cs.uiowa.edu:2443/SMT-LIB-benchmarks/QF_AX/-/blob/master/swap/swap_t3_np_sf_ai_00010_007.cvc.smt2

#     name_for_element = list(range(r-1,x1-1))
#     rem_names = sorted(set(name_for_element) - set(name_for_array))

#     for r2 in rem_names:
#         declare_element = Init_arr(r2).declare_arr_element()
#         print(declare_element)

#     #########################################
#     ## Part 4: Declare New Array and Indexes
#     ##########################################

#     # default_val = 1
#     # arr = Init_arr(default_val).initialize()
#     # print(arr)
#     # rdn = random.randint(1, 8)
#     # for i in range(rdn):
#     #     declare_index = Init_arr(default_val).declare_arr_index()
#     #     print(declare_index)
#     #     default_val += 1
#     # print("Generated Array Names: ", name_for_array)
#     # print("\nGenerated Element Names: ", name_for_element)
#     # print("\nRemaining Elements: ", rem_names)
#     # print("\nDefault Indexes: ", names_of_default_indexes)

#     return [name_for_array, rem_names]

# ###########################
# ## Part 1: (Declare Sorts)
# ###########################
# declare_sort = Init_Arrsort().declare()
# print(declare_sort)

# case = random.choice([0, 1])
# names =[]
# if case == 0:
#     r = random.randint(15, 50)
#     x1 = r
#     names_list = case1_arr(x1)
#     names.append(names_list)
#     default_arr()
# else:

#     default_arr()
#     # print("\nDefault Indexes: ", names_of_default_indexes)

# # ## Part 3: For Array Index
# # '''
# # (declare-fun i1 () Index)

# # '''
# # class Arr_index_Variable(object): ## Need to change object to Variable
# #     ## Constructor
# #     def __init__(self, index_num):
# #         self.sort = 'Index'
# #         self.index_num = index_num ## Ex: i0, i1, i3, etc

# #     def declare(self):
# #         return f'(declare-fun i{self.index_num} () {self.sort})' ## Ex: [declare-fun i0 () Index]

# #     def __repr__(self):
# #         return self.index_num


# # ## Part 4: For Array Element
# # '''
# # (declare-fun e1 () Element)

# # '''
# # class Arr_element_Variable(object): ## Need to change object to Variable
# #     ## Constructor
# #     def __init__(self,element_num):
# #         self.sort = 'Element'
# #         self.element_num = element_num + random.choice([0, 1, 2]) ## Ex: e_133, e_134 etc

# #     def declare(self):
# #         return f'(declare-fun e{self.element_num} () {self.sort})' ## Ex: [declare-fun e_139 () Element]
        

# #     def __repr__(self):
# #         return self.element_num



# # ## Dynamic Content
# # # Initialize Arrays
# # x = 1
# # declare_arr = Init_arr(x).initialize()
# # print(declare_arr)
# # y = 2
# # declare_arr = Init_arr(y).initialize()
# # print(declare_arr)
# # z = 3
# # declare_arr = Init_arr(z).initialize()
# # print(declare_arr)


# # # 
# # declare_index = Arr_index_Variable(x).declare()
# # print(declare_index)

# # declare_element = Arr_element_Variable(x).declare()
# # print(declare_element)

