from __future__ import absolute_import
import random
from literal import select_statements, store_statements
from variable import names

class Store_testcase:
    def __init__(self, arr_num, store_statement):
        self.testcase = "(assert (= "
        self.testcase += f'a_{arr_num} ' 
        self.testcase += f'{store_statement}))'
  
    def __str__(self):
        return self.testcase

class Select_testcase:   
    def __init__(self, element_num, select_statement):
        self.testcase = "(assert (= "
        self.testcase += f'e_{element_num} '
        self.testcase += f'{select_statement}))'

    def __str__(self):
        return self.testcase

class Equal_testcase:
    def __init__(self, arr1, arr2):
        self.testcase = "(assert (= "
        self.testcase += f'a_{arr1} a_{arr2}))'
    
    def __str__(self):
        return self.testcase

class NotEqual_testcase:
    def __init__(self, arr1, arr2):
        self.testcase = "(assert (not (= "
        self.testcase += f'a_{arr1} a_{arr2})))'
    
    def __str__(self):
        return self.testcase
    
## Generate Test cases
if names != []:
    arr_names = names[0][0]
    element_names = names[0][1] 
    random.shuffle(arr_names)
    random.shuffle(store_statements)
    random.shuffle(select_statements)
    
    zipped_arr_store = zip(arr_names,store_statements)
    for x in zipped_arr_store:
        print(Store_testcase(x[0], x[1]))
    
    zipped_arr_select = zip(element_names,select_statements)
    for y in zipped_arr_select:
        print(Select_testcase(y[0], y[1]))
    
    print(Equal_testcase(random.choice(arr_names), random.choice(arr_names)))
    print(NotEqual_testcase(random.choice(arr_names), random.choice(arr_names)))