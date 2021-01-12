
from ..parser import args as settings
from ..util import warning,die,normalize
from .node import Node
from .benchmark import Benchmark
import inspect,pdb,random,copy
import numpy as np
import random
from .int.literal import IntLiteral

class BanditFuzzMutationException(Exception):
    pass

class Fuzzer: #break into loader class (checks settings etc), and one into quantifier free class which inherits from that?
    def __init__(self):
        self.logic = ''
        self.quantifed = False
        self.quantifiers = []
        self.actions = []
        self.literals = {
            'bool'  : [],
            'fp'    : [],
            'bv'    : [],
            'int'   : [],
            'real'  : [],
            'str'   : [],
            'reg'   : [],
            'arr'   : [],
            'uf'    : [],
            'round' : [],
        }
        self.constructs = {
            'bool'  : [],
            'fp'    : [],
            'bv'    : [],
            'int'   : [],
            'real'  : [],
            'str'   : [],
            'reg'   : [],
            'arr'   : [],
            'uf'    : [],
            'round' : [],
        }
        self._mk_from_settings()

    def _mk_from_settings(self):
        from .core import constructs as core_constructs_mod
        from .core.literal import BoolLiteral

        self.literals['bool'] += [BoolLiteral]
        core_constructs = [o[1] for o in inspect.getmembers(core_constructs_mod) if inspect.isclass(o[1])] #added by HR
        if settings.quantified:
            raise NotImplementedError
            self.quantifed = True
            from .core import quantifiers
            self.quantifiers = [o[1] for o in inspect.getmembers(quantifiers) if inspect.isclass(o[1])]
        else:
            self.logic += 'QF_'

        if settings.arrays:
            from .array_test.literal import ArrayLiteral
            self.literals['arr'] += [ArrayLiteral]
            ## After this, literals = {'arr': [<class 'literal.ArrayLiteral'>]}

            # if setting.fp or settings.real or settings.strings or settings.bv or 
            self.logic += 'ANIA'

            from .array_test import constructs as array_const_mod
            arr_constructs = [o[1] for o in inspect.getmembers(array_const_mod) if inspect.isclass(o[1])]
            for const in arr_constructs:
                self.constructs[const().sort].append(const)       
            ## After this, constructs =  {'arr': [<class 'constructs.Arr_Select'>, <class 'constructs.Arr_Store'>]}

        if settings.uf:
            raise NotImplementedError

        if settings.strings:
            from .str import constructs as str_const_mod
            from .str.literal import StrLiteral,RegExLiteral
            self.literals['str'] += [StrLiteral]
            self.literals['reg'] += [RegExLiteral]
            if not settings.integer:
                from .int.literal import IntLiteral
                self.literals['int']  += [IntLiteral]

            self.logic += "S"
            str_constructs = [o[1] for o in inspect.getmembers(str_const_mod) if inspect.isclass(o[1])]
            for const in str_constructs: 
                self.constructs[const().sort].append(const)


        if settings.fp:
            from .fp.literal import FPLiteral,RoundLiteral
            from .fp import constructs as fp_constructs_module
            self.literals['fp']     += [FPLiteral]           
            self.literals['round']  += [RoundLiteral]

            self.logic += 'FP'
            fp_constructs = [o[1] for o in inspect.getmembers(fp_constructs_module) if inspect.isclass(o[1])]
            for const in fp_constructs:
                self.constructs[const().sort].append(const)

        if settings.bv:
            from .bv.literal import BVLiteral
            from .bv import constructs as bv_constructs
            self.literals['bv']     += [BVLiteral]           

            self.logic += 'BV'
            bv_constructs = [o[1] for o in inspect.getmembers(bv_constructs) if inspect.isclass(o[1])]
            for const in bv_constructs:
                self.constructs[const().sort].append(const)

        if settings.diff:
            raise NotImplementedError

        if settings.linear:
            raise NotImplementedError

        if settings.nonlinear:
            raise NotImplementedError

        if settings.integer:
            from .int.literal import IntLiteral
            from .int import constructs as Int_constructs_module
            self.literals['int'] += [IntLiteral]

            self.logic += 'NIRA'
            int_constructs = [o[1] for o in inspect.getmembers(Int_constructs_module) if inspect.isclass(o[1])]
            for const in int_constructs:
                self.constructs[const().sort].append(const)

        if settings.real:
            from .real.literal import RealLiteral
            from .real import constructs as Real_constructs_module
            self.literals['real'] += [RealLiteral]

            self.logic += 'NRA'
            real_constructs = [o[1] for o in inspect.getmembers(Real_constructs_module) if inspect.isclass(o[1])]
            for const in real_constructs:
                self.constructs[const().sort].append(const)


        for ban_op in settings.ban:
            found = False
            for sort in self.constructs:
                for it,op in enumerate(self.constructs[sort]):
                    if str(op()) == ban_op:
                        found = True
                        break
                if found: break
            if not found: die("Could not find input operator: ", ban_op)
            del self.constructs[sort][it]
        for sort in self.constructs:
            for const in self.constructs[sort]:
                self.actions.append(const)


    def gen(self):
        benchmark = Benchmark(logic=self.logic)

        from .core.variable import BoolVariable
        for _ in range(settings.vars):
            benchmark.add_var(BoolVariable(f'bool_{_}'))

        ## ********IN PROGRESS******************
        if settings.arrays:
            from .array_test.variable import ArrVariable
            self.dt = ['Int', 'Int']
            benchmark.add_var(ArrVariable(self.dt))
            for _ in range(settings.vars):
                benchmark.check(self.mk_ast(depth=0,benchmark=benchmark)) ## Need to pass sort according to which flag in ON.
            # print('Sucx`ess')


            # from .array_test.variable import ArrVariable
            # index_counter = random.choice([settings.vars+random.randint(0, 4), settings.vars-random.randint(1, 3)])
            # print("Index COunter: ", index_counter)
            # for _ in range(index_counter):
            #     benchmark.add_var(ArrVariable(f'{_}'))

            # benchmark.check(self.mk_ast(depth=0,benchmark=benchmark, index=index_counter, sort='arr'))

        else:
            ##Add variables to benchmark
            if settings.uf:
                raise NotImplementedError

            if settings.strings:
                from .str.variable import StrVariable
                for _ in range(settings.vars):
                    benchmark.add_var(StrVariable(f'str_{_}'))

            if settings.fp:
                from .fp.variable import FP_Variable as FPVariable
                for _ in range(settings.vars):
                    if   settings._8:   benchmark.add_var(FPVariable(f'fp_{_}',3,5))
                    elif settings._16:  benchmark.add_var(FPVariable(f'fp_{_}',5,11))
                    elif settings._32:  benchmark.add_var(FPVariable(f'fp_{_}',8,24))
                    elif settings._64:  benchmark.add_var(FPVariable(f'fp_{_}',11,53))
                    elif settings._128: benchmark.add_var(FPVariable(f'fp_{_}',15,113))
                    elif settings._256: benchmark.add_var(FPVariable(f'fp_{_}',19,237))                

            if settings.bv:
                from .bv.variable import BV_Variable
                for _ in range(settings.vars):
                    if   settings._8:   benchmark.add_var(BV_Variable(f'bv_{_}', size=8))
                    elif settings._16:  benchmark.add_var(BV_Variable(f'bv_{_}', size=16))
                    elif settings._32:  benchmark.add_var(BV_Variable(f'bv_{_}', size=32))
                    elif settings._64:  benchmark.add_var(BV_Variable(f'bv_{_}', size=64))
                    elif settings._128: benchmark.add_var(BV_Variable(f'bv_{_}', size=128))
                    elif settings._256: benchmark.add_var(BV_Variable(f'bv_{_}', size=256))

            if settings.integer or settings.strings:
                from .int.variable import IntVariable
                # print("Int Test:\n", settings.vars) ## Number: 5
                for _ in range(settings.vars):  
                    benchmark.add_var(IntVariable(f'int_{_}'))

            if settings.real:
                from .real.variable import RealVariable
                for _ in range(settings.vars):
                    benchmark.add_var(RealVariable(f'real_{_}'))

            
            for _ in range(settings.nassert):
                # benchmark.check(self.mk_ast(depth=0,benchmark=benchmark, index = 0, newVarCounter = 0))
                benchmark.check(self.mk_ast(depth=0,benchmark=benchmark))

        return benchmark

    def mk_ast(self, depth, benchmark, sort='bool'):
        if depth == settings.depth:
            if sort == 'round' or sort == 'reg':
                return Node(random.choice(self.literals[sort])())

            if sort == "arr":
                # print(random.choice(benchmark.vars(sort=sort)))
                opts =  [random.choice(self.literals[sort])(), random.choice(self.literals[sort])()]
            elif sort == "int" and not settings.integer:
                opts = [IntLiteral(positive=True), IntLiteral(positive=True)]
            else:
                opts =  [random.choice(benchmark.vars(sort=sort)),    random.choice(self.literals[sort])()]
            odds =  [1,                                           1]
            return Node(
                np.random.choice(
                    p= odds/np.linalg.norm(odds)**2,
                    a= opts,
                )
            )
        
        if sort == "int" and not settings.integer:
            ret = Node(IntLiteral(positive=True))
        if sort == "arr":
            ret = Node(random.choice(self.constructs['arr'])())
        else:
            ret = Node(random.choice(self.constructs[sort])())
        
        for _ in range(ret.val.arity):
            ret.children.append(self.mk_ast(depth=depth+1, benchmark=benchmark, sort=ret.val.sig[_]))

        # if sort == "arr":
        #     for _ in range(ret.val.arity):
        #         ret.children.append(self.mk_ast(depth=depth+1, benchmark=benchmark, sort=ret.val.sig[_])) ## sort=ret.val.sig[_]   
        #         print("Ret: ", ret)
        #     print('\n')
            
        # else:
        #     for _ in range(ret.val.arity):
        #         ret.children.append(self.mk_ast(depth=depth+1, benchmark=benchmark, sort=ret.val.sig[_])) ## sort=ret.val.sig[_]
        #         newVarCount += 1
     
        return ret

    # def mk_ast(self, depth, benchmark, index, sort='bool'):
    #     idx = index
    #     if depth == settings.depth:
    #         if sort == 'round' or sort == 'reg':
    #             return Node(random.choice(self.literals[sort])(), sort)

    #         if sort == "arr":
    #             opts =  [random.choice(benchmark.vars(sort=sort)), random.choice(self.literals[sort])(index)]
    #         else:
    #             opts =  [random.choice(benchmark.vars(sort=sort)),    random.choice(self.literals[sort])()]
    #         odds =  [1,                                           1]
    #         return Node(
    #             np.random.choice(
    #                 p= odds/np.linalg.norm(odds)**2,
    #                 a= opts,
    #             ), sort
    #         )
          
    #     ret = Node(random.choice(self.constructs[sort])(), sort) ## Can't choose randomly for childrens

    #     if sort == "arr":
    #         for _ in range(ret.val.arity):
    #             ret.children.append(self.mk_ast(depth=depth+1, benchmark=benchmark, sort=ret.val.sig[_], index = idx)) ## sort=ret.val.sig[_]   
    #             print("Ret: ", ret)
    #         print('\n')
            
    #     else:
    #         for _ in range(ret.val.arity):
    #             ret.children.append(self.mk_ast(depth=depth+1, benchmark=benchmark, sort=ret.val.sig[_], index = idx)) ## sort=ret.val.sig[_]
    #             newVarCount += 1
     
    #     return ret

    def mutate(self, benchmark, construct, delete=False, malform=False):
        return_benchmark = copy.deepcopy(benchmark)
        construct_sort = construct.sort

        if delete:
            target_assertions = return_benchmark.construct_assertion_checker(construct)
            if not target_assertions:
                return return_benchmark
            target_assertion_index = random.choice(target_assertions)
            target_assertion = return_benchmark.assertions[target_assertion_index]
            nodes = []
            nodes = return_benchmark.construct_assertion_traversal(target_assertion, construct, nodes)
            node_to_mutate = random.choice(nodes)
            #pdb.set_trace()
            return_benchmark.delete_assertion_node(construct, target_assertion_index, node_to_mutate)
            return return_benchmark
        elif malform:
            return return_benchmark.malformed()
        else:

            target_assertions = return_benchmark.assertion_checker(construct_sort) #get list of assertion indexes containing required sort
            if len(target_assertions) == 0 :
                if settings.debug:
                    warning(f"Could not mutate {construct} into benchmark.") 
                raise BanditFuzzMutationException("No valid construct of this sort")
            target_assertion_index = random.choice(target_assertions)
            target_assertion = return_benchmark.assertions[target_assertion_index] #grab relevant assertion
            #target_assertion_depth = return_benchmark.get_assertion_depth(target_assertion)
            depths = {}
            depths = return_benchmark.assertion_traversal(target_assertion, construct_sort, depths)
            depth_to_mutate = random.choice(list(depths.keys()))
            new_node = self.mk_ast(depth_to_mutate, return_benchmark, construct_sort)
            node_to_mutate = random.choice(depths[depth_to_mutate])
            return_benchmark.change_assertion(construct_sort, target_assertion_index, new_node, depth_to_mutate, node_to_mutate)
            return return_benchmark



