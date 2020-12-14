from .node import Node
from ..parser import args as settings
import pdb
import random
import string

class Benchmark:                ##return type of fuzzer.gen, fuzzer.mutate
    #override len, accessor, operator for indexing (ie .__getitem__, .__setitem__)
    id = 0
    def __init__(self, logic, read_str=False):
        if not read_str:
            self.logic = logic       # i.e, (set-logic LOGIC)
            self.assertions = []    # List of asserting ASTNodes1
            self._vars = {}
            self.solver_data = {}
            self.reference_score = 0
            self.target_score = 0
            self.dynamic_timeout = 0
            self.id = Benchmark.id
            Benchmark.id += 1
        else:
            pass

    def score(self):
        if len(self.solver_data) != len(settings.reference_solvers) + len(settings.target_solvers):
            raise ValueError("Benchmark is missing solving data.")
        # for solver in settings.reference_solvers
        ref_score, tar_score = (0 if len(settings.reference_solvers) == 0 else float('-inf')), float('inf')
        for solver in settings.reference_solvers:
            if self.solver_data[solver]['answer'].lower() in ['sat','unsat']:
                ref_score = max(ref_score,self.solver_data[solver]['time'])
            else:
                ref_score = max(ref_score, 2.0 * settings.timeout)
        for solver in settings.target_solvers:
            if self.solver_data[solver]['answer'].lower() in ['sat','unsat']:
                tar_score = min(tar_score,self.solver_data[solver]['time'])
            else:
                tar_score = min(tar_score, 2.0 * settings.timeout)
        # pdb.set_trace()
        return tar_score - ref_score

    def is_inconsistent(self):
        return len(set(self.solver_data[solver]['answer'] for solver in settings.reference_solvers + settings.target_solvers if self.solver_data[solver]['answer'].lower() in ['sat','unsat'])) == 2

    def vars(self,sort=None): 
        if sort: return self._vars[sort]
        else:
            ret = []
            for sort in self._vars: ret += self._vars[sort]
            return ret

    def add_data(self, solver, time, answer):
        self.solver_data[solver] = {}
        self.solver_data[solver]['time'] = time
        self.solver_data[solver]['answer'] = answer
        
    def add_score(self, reference_score, target_score, dynamic_timeout):    
        self.reference_score = reference_score
        self.target_score = target_score
        self.dynamic_timeout = dynamic_timeout

    def add_var(self,var):
        if var.sort not in self._vars: self._vars[var.sort] = [] 
        self._vars[var.sort].append(var)

    def check(self, node):
        assert isinstance(node,Node)
        self.assertions.append(node)

    def get_params(self):
        node_params = []
        for assertion in self.assertions:
            node_params.append(len(assertion.children))
        return [len(self.assertions), len(self._vars), node_params]

    def assertion_checker(self, sort):
        assertions = []
        for i in range(len(self.assertions)):
            node = self.assertions[i]
            if self.node_traversal(node, sort):
                assertions.append(i)
        return assertions

    def construct_assertion_checker(self, construct): #separate method used for delete mutate since we are looking for a specific construct rather than a sort
        assertions = []
        for i in range(len(self.assertions)):
            node = self.assertions[i]
            if self.construct_node_traversal(node, construct):
                assertions.append(i)
        return assertions

    def get_max_depth(self, node, depth=0, max_depth=0):
        if not node.children:
            return depth
        else:
            depth+=1
            for child in node.children:
                depth = self.get_max_depth(child, depth, max_depth)
                if depth > max_depth:
                    max_depth = depth
        return max_depth




    def node_traversal(self, node, sort):
        if node.sort == sort:
            return True
        elif node.children:
            for child in node.children:
                return self.node_traversal(child, sort)
        return False

    def construct_node_traversal(self, node, construct):
        if str(construct) in str(node):
            return True
        else:
            return False
    def get_assertion(self, depth):
        return self.assertions[depth]

    def change_assertion(self, sort, assertion_index, new_node, depth_to_mutate, label):
        assertion = self.assertions[assertion_index]
        _,assertion = self.mutate_operator(assertion, new_node, depth_to_mutate, label)
        self.assertions[assertion_index] = assertion

    def delete_assertion_node(self, construct, assertion_index, node_to_mutate):
        #pdb.set_trace()
        assertion = self.assertions[assertion_index]
        delete_assertion, assertion = self.remove_node(assertion, construct, node_to_mutate)
        if delete_assertion == "Delete assertion":
            self.assertions.pop(assertion_index)
        else:
            self.assertions[assertion_index] = assertion




    def assertion_traversal(self, node, sort,depth_dict,depth=0, label=1): #used to get all depths which contain the right sort
        if node.sort == sort:
            if depth not in depth_dict:
                depth_dict[depth] = [label]
            else:
                depth_dict[depth].append(label)
        if node.children:
            depth += 1
            for child in node.children:
                label += 1
                return self.assertion_traversal(child, sort, depth_dict, depth, label)
        return depth_dict

    def construct_assertion_traversal(self, node, construct, node_list, label=1): #for use in delete mutation; need specific depths at which the construct is present
        #pdb.set_trace()
        if str(construct) in str(node.val):
            node_list.append(label)
        if node.children:
            for child in node.children:
                label += 1
                node_list = self.construct_assertion_traversal(child, construct, node_list, label)
        return node_list

    def assertion_sort_traversal(self, node, sort_list, depth=0): #separate method to see which sorts are available in the benchmarj
        if node.sort not in sort_list:
            sort_list.append(node.sort)
        if node.children:
            depth += 1
            for child in node.children:
                return self.assertion_sort_traversal(child, sort_list, depth)
        return sort_list

    def mutate_operator(self, node, new_node, target_depth, target_node, depth=0, label=1, mutated=False):
        if depth == target_depth:
            #pdb.set_trace()
            if node.sort == new_node.sort and label == target_node:
                if node.children: #ensures no mutation of leaf node
                    node = new_node
                    mutated=True
                    #pdb.set_trace()
                    return mutated, node
                else:
                    return True, node
            #else:
             #   raise Exception(f"Sort at target depth {depth} doesn't match required sort {new_node.sort}.\n")
        else:
            depth += 1
            for it, child in enumerate(node.children):
                label += 1
                mutated,node.children[it] = self.mutate_operator(child, new_node, target_depth, target_node, depth, label, mutated)
                if mutated:
                    break
        return None, node

    '''def malform_mutate(self, node, target_depth, depth=0, mutated=False):
        if depth == target_depth:
            if not mutated:
                pdb.set_trace()
                random_string = random.choice(string.ascii_lowercase)
                position = random.randint(0,len(str(node.val)))
                node_val_list = list(node.val)
                node_val_list[position] = random_string
                node.val = ''.join(node_val_list)
                mutated = True
                return mutated, node
        else:
            depth += 1
            for it, child in enumerate(node.children):
                mutated, node.children[it] = self.malform_mutate(child, target_depth, depth, mutated)
                if mutated:
                    break
            return None, node'''

    def get_child_tree(self, node, sort):
        if node.children:
            for child in node.children:
                if child.sort == sort:
                    return child
                else:
                    return self.get_child_tree(child, sort)
        return None



    def remove_node(self, node, construct, target_node, label=1, removed=False):
        #pdb.set_trace()
        if target_node == 1:
            for child in node.children:
                if child.sort == 'bool':
                    new_node = child
                    removed = True
                    return removed, new_node
            else:
                return "Delete assertion", node


        if label == target_node:
            #pdb.set_trace()
            if str(construct) in str(node.val) and not removed:
                if not node.children:
                    return "Change Sibling", node
                else:
                    #pdb.set_trace()
                    acceptable_children = [child for child in node.children if child.sort == node.sort]
                    if acceptable_children:
                        new_node = random.choice(acceptable_children)
                        return True, new_node
                    else:
                        new_node = self.get_child_tree(node, construct.sort)
                        if new_node:
                            return True, new_node
                        else:
                            raise Exception(f"No child tree matching sort {construct.sort}\n")
                            #return True, node

        else:
            if node.children:
                for it, child in enumerate(node.children):
                    #pdb.set_trace()
                    label += 1
                    removed, node.children[it] = self.remove_node(child, construct, target_node, label, removed=removed)
                    if removed:
                        #node.children.remove(None)
                        break
                    elif removed == "Change Sibling":
                        if it == 0 and node.sort == node.children[1].sort:
                            node = node.children[1]
                        elif it == 1 and node.sort == node.children[1].sort:
                            node = node.children[0]
                        break
        return False, node

    def get_assertion_sorts(self):
        sort_list = []
        for assertion in self.assertions:
            sorts = []
            sorts = self.assertion_sort_traversal(assertion,sorts)
            for sort in sorts:
                if sort not in sort_list:
                    sort_list.append(sort)
        return sort_list


    def __str__(self):
        ret = ''
        ret += '(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )\n'
        ret += '(set-info :Author "Joe Scott, Trishal Sudula, Hammad Rehman, Akshay Goyal, Fed Mora, and Vijay Ganesh" )\n'
        ret += '(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")\n'
        for solver in self.solver_data:
            ret += f'; {solver}\n'
            for key in self.solver_data[solver]:
                ret += f'; \t{key} => {self.solver_data[solver][key]}\n'
        ret += f'; reference_score => {self.reference_score}\n'
        ret += f'; target_score => {self.target_score}\n'
        ret += f'; score => {self.target_score - self.reference_score}\n'
        ret += f'; dynamic_timeout => {self.dynamic_timeout}\n'
        ret += f'(set-logic {self.logic})\n'
        for var in self.vars():
            ret += var.declare() + '\n'
        for ast in self.assertions:
            ret += f'(assert {ast})\n'
        ret += '(check-sat)\n'
        ret += '(exit)\n'
        return ret

    def malformed(self):
        location = random.choice(['declaration', 'assertions'])
        mutated = False
        ret = ''
        ret += '(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )\n'
        ret += '(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )\n'
        ret += '(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")\n'
        for solver in self.solver_data:
            ret += f'; {solver}\n'
            for key in self.solver_data[solver]:
                ret += f'; \t{key} => {self.solver_data[solver][key]}\n'
        ret += f'; reference_score => {self.reference_score}\n'
        ret += f'; target_score => {self.target_score}\n'
        ret += f'(set-logic {self.logic})\n'
        for var in self.vars():
            mutate = False
            if location == 'declaration' and not mutated:
                mutate = random.choice([True, False])
            if not mutate:
                ret += var.declare() + '\n'
            else:
                addition = var.declare() + '\n'
                random_string = random.choice(string.ascii_lowercase)
                position = random.randint(0, len(addition))
                addition_list = list(addition)
                addition_list[position] = random_string
                addition = ''.join(addition_list)
                ret += addition
                mutated = True
        for ast in self.assertions:
            mutate = False
            if location == 'assertions' and not mutated:
                mutate = random.choice([True, False])
            if not mutate:
                ret += f'(assert {ast})\n'
            else:
                addition = f'(assert {ast})\n'
                random_string = random.choice(string.ascii_lowercase)
                position = random.randint(0, len(addition))
                addition_list = list(addition)
                addition_list[position] = random_string
                addition = ''.join(addition_list)
                ret += addition
                mutated = True
        ret += '(check-sat)\n'
        ret += '(exit)\n'
        return ret
