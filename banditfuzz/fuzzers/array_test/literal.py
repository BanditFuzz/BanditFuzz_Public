## For Assertions:

# from ...parser import args as settings
from __future__ import absolute_import
import random
# from ..fuzzer import Fuzzer

class ArrayLiteral:
    def __init__(self):
        self.sort = 'arr'
        import numpy as np
        rog = random.choice(['(store '])
    
        # if rog == '(select ':
        #     self.val = f'{rog}'
        #     self.val += 'a1 '
        #     self.val += '4'
        #     self.val += ')'
        # else:
        self.val = f'{rog}'
        self.val += 'a1 '   
        self.val += f'{random.randint(0, 10**9)} '
        self.val += f'{random.randint(0, 10**9)}'
        self.val += ')'
    
    def __str__(self):
        return self.val
    __repr__ = __str__


# (model 
#   (define-fun a1 () (Array Real Int)
#     (_ as-array k!0))
#   (define-fun k!0 ((x!0 Real)) Int
#     (ite (= x!0 4.0) 6
#       0))
# )



# class ArrayLiteral:
#     def __init__(self, idx):
#         self.sort = 'arr'
#         self.counter = 0
#         self.idx = list(range(idx))
#         # self.rng = f'?v_{random.randint(1,9)}'
#         self.rng = 'a1'
#         # self.rng = f'?v_{self.counter}'
#         import numpy as np
#         rog = random.choice(['(select ', '(store ']) ## Random Operator Generator
        
#         ## Select Value
#         if rog == '(select ':
#             self.val = f'{rog}'
#             self.val += 'a1 '
#             self.val += f'i{random.choice(self.idx)}'
#             self.val += ')'
#         else:                          ## Store Value
#             self.val = f'{rog}'
#             self.val += random.choice(['a1 '])   ## 3 things, a1, previous array saved as: ?v, store statement in which element has to be previous v
#             self.val += f'i{random.choice(self.idx)} '
#             self.val += self.rng
#             self.val += ')'
    
#     def __str__(self):
#         return self.val
#     __repr__ = __str__















































# class ArrayLiteral:
#     def __init__(self):
#         self.sort = 'arr'
#         self.rng = f'?v_{random.choice(random.randint(1,9))} '
#         self.val = ''
#         import numpy as np
#         ## Random Operator Generator
#         self.rog = random.choice(['(select ', '(store '])
           
#     def selectStatement(self):
#         self.val += '(select '
#         self.val += random.choice(['a1 ', self.storeStatement()]),
#         self.val += f'i{random.choice(index)}'
#         self.val += ')'
    
#     def storeStatement(self):
#         self.val += '(store '
#         self.val += random.choice(['a1 ', self.rng])
#         self.val += f'i{random.choice(index)} '
#         self.val += f'e_{random.choice(element)}'
#         self.val += ')'
    
#     def __str__(self):
#         return self.val
#     __repr__ = __str__

# class SelectLiteral:
#     def __init__(self, ary, index):
#         self.sort = 'arr'
#         self.val = '(select '
#         self.val += f'a_{ary} '
#         self.val += f'i{random.choice(index)}'
#         self.val += ')'

#     def __str__(self):
#         return self.val

#     __repr__ = __str__


# class StoreLiteral:
#     def __init__(self, ary, index, element):
#         self.sort = 'arr'
#         self.val = '(store '
#         self.val += f'a_{ary} '
#         self.val += f'i{random.choice(index)} '
#         self.val += f'e_{random.choice(element)}'
#         self.val += ')'
    
#     def __str__(self):
#         return self.val
#     __repr__ = __str__



##############################################
## Part 5: Generate Assertions Statements
##############################################
# statements = []
# if case == 0:  
#     ary = names[0][0]
#     element = names[0][1]
#     index = names_of_default_indexes
#     for i in ary:
#         query = ArrayLiteral(i, index, element)
#         print(query)
#         statements.append(query)




# ##############################################
# ## Part 5: Generate Assertions Statements
# ##############################################
# select_statements = []
# store_statements = []
# if case == 0:  
#     ary = names[0][0]
#     # print("Array: ", ary)
#     element = names[0][1]
#     # print("Elements: ", element)
#     index = names_of_default_indexes
#     # rng = random.randint(5, 50)

#     ## Duplicates are possible, need to remove them
#     # for r in range(rng):
#     for i in ary:
#         select_ex = SelectLiteral(i, index)
#         print(select_ex)
#         # print(SelectLiteral(i, index))
#         select_statements.append(select_ex)
#     for x in range(rng):
#     for j in ary:
#         store_ex = StoreLiteral(j, index, element)
#         print(store_ex)
#         store_statements.append(store_ex)



###+THEND================================================================================
# class SelectLiteral:
#     def __init__(self, ary, index):
#         self.sort = 'arr'
#         self.val = '(select '
#         self.val += f'a_{random.choice(ary)} '
#         self.val += f'i{random.choice(index)}'
#         self.val += ')'

#     def __str__(self):
#         return self.val

#     __repr__ = __str__
# class StoreLiteral:
#     def __init__(self, ary, index, element):
#         self.sort = 'arr'
#         self.val = '(store '
#         self.val += f'a_{random.choice(ary)} '
#         self.val += f'i{random.choice(index)} '
#         self.val += f'e_{random.choice(element)}'
#         self.val += ')'
    
#     def __str__(self):
#         return self.val
#     __repr__ = __str__



# ##############################################
# ## Part 5: Generate Assertions Statements
# ##############################################
# if case == 0:  
#     ary = names[0][0]
#     print("Array: ", ary)
#     element = names[0][1]
#     index = names_of_default_indexes
#     rng = random.randint(5, 10)

#     ## Duplicates are possible, need to remove them
#     for r in range(rng): 
#         print(SelectLiteral(ary, index))
#     for x in range(rng):
#         print(StoreLiteral(ary, index, element))


