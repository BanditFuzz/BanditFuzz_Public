from __future__ import absolute_import
import random
# from variable import case, names_of_default_indexes

'''
Structure 1: (let ((?v_1 (select ?v_0 i0)))      ## <element> (select <arr> <index>)

'''

## Part 1: 
class SelectStatement:
    def __init__(self, arr, index):
        self.sort = 'arr'
        self.arr = arr
        self.index = index
        self.val = '(select '

    def s1(self): ## (select a1 i0)
        self.val += f'a1 i{random.choice(self.index)})'
        return self.val
    
    def s2(self): ## (select ?v_0 i0)
        self.val += f'?v_{self.arr} i{random.choice(self.index)})'
        return self.val

class SelectQuery:
    def __init__(self, ary, index):
        self.sort = 'arr'
        self.ary = ary
        self.index = index
        self.val = '(('

    def s1(self): ## ((?v_1 (select a1 i0)))                                                        ## <element> (select <arr> <index>)
        self.val += f'?v_{self.ary + 1} ' ## New Element (Let)
        self.val += f'{SelectStatement(self.ary, self.index).s1()}))'
        return self.val
    
    def s2(self): ## ((?v_1 (select ?v_0 i0)))                                                        ## <element> (select <arr> <index>)
        self.val += f'?v_{self.ary + 1} ' ## New Element (Let)
        self.val += f'{SelectStatement(self.ary, self.index).s2()}))'
        return self.val


x = SelectQuery(1, [1,2,3,4]).s1()
y = SelectQuery(1, [1,2,3,4]).s2()
r = random.choice([x, y])
print(r)



# '''
# Structure 2:

# - (let ((?v_0 (store (store a1 i1 (select a1 i2)) i2 (select a1 i1))))

# - (let ((?v_2 (store (store ?v_0 i0 ?v_1) i0 ?v_1)))

# '''
# class StoreLiteral:
#     def __init__(self, ary, index, element):
#         self.sort = 'arr'
#         self.ary = ary
#         self.index = index
#         self.element = element
#         self.val = '(let (('
    
#     def s1():
#         self.val += f'?{self.ary + 1} '
#         self.val = '(store (store '
#         self.val += 'a1' ## Using Default Array
#         self.val += f'i{random.choice(self.index)} '
#         self.val += f'{SelectLiteral}'' ## can be select statement or ?v
#         self.val += ')'
    
#     def s2(element_num):
#         self.val += f'?{self.ary + 1} '
#         self.val = '(store (store '
#         self.val += f'?v_{self.ary}' ## Using Default Array
#         self.val += f'i{random.choice(self.index)} '
#         self.val += f'v_{element_num}' ## Element number generated previously
#         self.val += ')'

    
#     def __str__(self):
#         return self.val
#     __repr__ = __str__


# # if case == 1:
# #     ## Initial two Select Literals
# #     v0 = SelectLiteral(1, names_of_default_indexes).new_var(0)
# #     print(SelectLiteral('a1', names_of_default_indexes))
# #     v1 = SelectLiteral(1, names_of_default_indexes).new_var(1)
# #     print(SelectLiteral('a1', names_of_default_indexes))

# #     arr_element = [v0, v1, StoreLiteral(v0, names_of_default_indexes, SelectLiteral(v0, names_of_default_indexes))]
# #     element_statement = [v0, v1]
# #     print(StoreLiteral(random.choice(arr_element), names_of_default_indexes, random.choice(element_statement)))



