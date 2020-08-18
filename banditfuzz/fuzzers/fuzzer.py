from ..parser import args as settings
from ..util import warning,die
from .node import Node
from .benchmark import Benchmark
from sklearn.preprocessing import normalize as norm
import inspect,pdb,random,copy
import numpy as np

class Fuzzer:
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
        from .core import constructs as core_constructs
        from .core.literal import BoolLiteral

        self.literals['bool'] += [BoolLiteral]
        for const in [o[1] for o in inspect.getmembers(core_constructs) if inspect.isclass(o[1])]:
            self.constructs[const().sort].append(const)
        if settings.quantified:
            raise NotImplementedError
            self.quantifed = True
            from .core import quantifiers
            self.quantifiers = [o[1] for o in inspect.getmembers(quantifiers) if inspect.isclass(o[1])]
            self.actions += self.quantifiers
        else:
            self.logic += 'QF_'

        if settings.arrays:
            raise NotImplementedError

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
            self.actions += str_constructs
            for const in str_constructs: 
                self.constructs[const().sort].append(const)


        if settings.fp:
            from .fp.literal import FPLiteral,RoundLiteral
            from .fp import constructs as fp_constructs_module
            self.literals['fp']     += [FPLiteral]           
            self.literals['round']  += [RoundLiteral]

            self.logic += 'FP'
            fp_constructs = [o[1] for o in inspect.getmembers(fp_constructs_module) if inspect.isclass(o[1])]
            self.actions += fp_constructs
            for const in fp_constructs:
                self.constructs[const().sort].append(const)

        if settings.bv:
            from .bv.literal import BVLiteral
            from .bv import constructs as bv_constructs
            self.literals['bv']     += [BVLiteral]           

            self.logic += 'BV'
            bv_constructs = [o[1] for o in inspect.getmembers(bv_constructs) if inspect.isclass(o[1])]
            self.actions += bv_constructs
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

            self.logic += 'NIA'
            int_constructs = [o[1] for o in inspect.getmembers(Int_constructs_module) if inspect.isclass(o[1])]
            self.actions += int_constructs
            for const in int_constructs:
                self.constructs[const().sort].append(const)

        if settings.real:
            from .real.literal import RealLiteral
            from .real import constructs as Real_constructs_module
            self.literals['real'] += [RealLiteral]
            if self.logic.find('NIA') != -1: self.logic = self.logic.replace('NIA', 'NIRA')
            else: self.logic += 'NRA'

            real_constructs = [o[1] for o in inspect.getmembers(Real_constructs_module) if inspect.isclass(o[1])]
            self.actions += real_constructs
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

    def gen(self):
        benchmark = Benchmark(logic=self.logic)

        ##Add variables to benchmark
        from .core.variable import BoolVariable
        for _ in range(settings.vars):
            benchmark.add_var(BoolVariable(f'bool_{_}'))

        if settings.arrays:
            raise NotImplementedError

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
            for _ in range(settings.vars):
                benchmark.add_var(IntVariable(f'int_{_}'))

        if settings.real:
            from .real.variable import RealVariable
            for _ in range(settings.vars):
                benchmark.add_var(RealVariable(f'real_{_}'))

        for _ in range(settings.nassert):
            benchmark.check(self.mk_ast(depth=0,benchmark=benchmark))

        return benchmark

    def mk_ast(self, depth, benchmark, sort='bool'):
        if depth == settings.depth:
            if sort == 'round' or sort == 'reg':
                return Node(random.choice(self.literals[sort])())
            opts =  [random.choice(benchmark.vars(sort=sort)),    random.choice(self.literals[sort])()]
            odds =  [1,                                           1]
            return Node(
                np.random.choice(
                    p= odds/np.linalg.norm(odds)**2,
                    a= opts,
                )
            )
        ret = Node(random.choice(self.constructs[sort])())
        for _ in range(ret.val.arity):
            ret.children.append(self.mk_ast(depth=depth+1, benchmark=benchmark, sort=ret.val.sig[_]))
        return ret

    def mutate(self, benchmark, construct): ##extremely gross. refactor ASAP
        return_benchmark = copy.deepcopy(benchmark)
        construct_sort = construct().sort
        def inorder_ast_counter(node,sort):
            n = 1 if node.sort == sort else 0
            for child in node.children:
                n += inorder_ast_counter(child,sort)
            return n
        total = 0
        for assertion in return_benchmark.assertions:
            total += inorder_ast_counter(assertion, construct_sort)
        if total == 0: return None
        indx =  np.random.randint(0,total)
        def get_node(node,indx,depth=0,cur_indx=0):
            if node.sort == construct_sort:
                if indx == cur_indx: return node,cur_indx
                else: cur_indx += 1
            for child in node.children:
                ret,cur_indx = get_node(child,indx,depth=depth+1,cur_indx=cur_indx)
                if ret != None: return ret,cur_indx
            return None,cur_indx

        def set_node(node,new_node,indx,depth=0,cur_indx=0):
            if node.sort == construct_sort:
                if indx == cur_indx:
                    return False,cur_indx
                else: cur_indx += 1
            for it,child in enumerate(node.children):
                ret,cur_indx = get_node(child,sort,indx,depth=depth+1,cur_indx=cur_indx)
                if ret != None: 
                    if ret == False:
                        node[it] = new_node
                        return True, cur_indx
                    else: return ret,cur_indx
            return None,cur_indx

        cur_indx = 0
        for assertion in return_benchmark.assertions:
            node, cur_indx = get_node(assertion,indx,depth=0,cur_indx=0)
            if node != None: break
        assert node != None
        sorted_children = {}
        children_its    = {}
        for child in node.children:
            if child.sort not in sorted_children: 
                sorted_children[child.sort] = []
                children_its[child.sort]    = 0
            sorted_children[child.sort].append(child)
        new_node = Node(val=construct())
        for i in range(new_node.val.arity):
            child_sort = new_node.val.sig[i]
            if child_sort in sorted_children:
                if children_its[child_sort] < len(sorted_children[child_sort]):
                    new_node.children.append(sorted_children[child_sort][children_its[child_sort]])
                    children_its[child_sort] += 1
                else:
                    new_node.children.append(self.mk_ast(depth+1,return_benchmark,child_sort))
            else:  new_node.children.append(self.mk_ast(depth+1,return_benchmark,child_sort))
        
        for it,assertion in enumerate(return_benchmark.assertions):
            result,_ = set_node(assertion,construct_sort,indx)
            if   result == True:    break
            elif result == False:   return_benchmark.assertions[it] = new_node
            else:                   continue


