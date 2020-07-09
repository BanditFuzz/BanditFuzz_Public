from ..parser import args as settings
from .node import Node
from .benchmark import Benchmark
import inspect,pdb

class Fuzzer:
    def __init__(self):
        self.logic = ''
        self.quantifed = False
        self.quantifiers = []
        self.actions = []
        self.sorts = {
            'bool'  : [],
            'fp'    : [],
            'bv'    : [],
            'int'   : [],
            'real'  : [],
            'str'   : [],
            'reg'   : [],
            'arr'   : [],
        }

        self.ops = {
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
            self.logic += "S"
            from .str import constructs as str_const_mod
            str_constructs = [o[1] for o in inspect.getmembers(str_const_mod) if inspect.isclass(o[1])]
            self.actions += str_constructs
            for const in str_constructs: 
                if hasattr(const(),'type'):
                    self.ops[const().type].append(const)


        if settings.fp:
            self.logic += 'FP'
            from .fp import constructs as fp_const_mod
            fp_constructs = [o[1] for o in inspect.getmembers(fp_const_mod) if inspect.isclass(o[1])]
            self.actions += fp_constructs
            for const in fp_constructs:
                if hasattr(const(),'type'):
                    self.ops[const().type].append(const)

        if settings.bv:
            raise NotImplementedError

        if settings.diff:
            raise NotImplementedError

        if settings.linear:
            raise NotImplementedError

        if settings.nonlinear:
            raise NotImplementedError

        if settings.integer:
            raise NotImplementedError

        if settings.real:
            raise NotImplementedError
        

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
            from .fp.variable import FPVariable
            for _ in range(settings.vars):
                if   settings._8:   benchmark.add_var(FPVariable(f'fp_{_}',3,5))
                elif settings._16:  benchmark.add_var(FPVariable(f'fp_{_}',5,11))
                elif settings._32:  benchmark.add_var(FPVariable(f'fp_{_}',8,24))
                elif settings._64:  benchmark.add_var(FPVariable(f'fp_{_}',11,53))
                elif settings._128: benchmark.add_var(FPVariable(f'fp_{_}',15,113))
                elif settings._256: benchmark.add_var(FPVariable(f'fp_{_}',19,237))
                elif settings.rand_bit_len: benchmark.add_var(FPVariable(f'fp_{_}',random.randint(0,256), random.randint(0,256)))
                else:
                    benchmark.add_var(np.random.choice(
                        (FPVariable(f'fp_{_}',3,5), FPVariable(f'fp_{_}',5,11), FPVariable(f'fp_{_}',8,24), FPVariable(f'fp_{_}',11,53), FPVariable(f'fp_{_}',15,113), FPVariable(f'fp_{_}',19,237), FPVariable(f'fp_{_}',random.randint(2,256), random.randint(2,256))),
                        p=(0.14285,                    0.14285,                    0.14285,                    0.14285,                     0.14285,                      0.14285,                      0.14285)
                    ))

        if settings.bv:
            raise NotImplementedError

        if settings.integer or settings.strings:
            from .int.variable import IntVariable
            for _ in range(settings.vars):
                benchmark.add_var(IntVariable(f'int_{_}'))

        if settings.real:
            raise NotImplementedError

        for _ in range(settings.nassert):
            benchmark.check(self.mk_ast(depth=0))

        print(benchmark)
        return benchmark

    def mk_ast(self,depth,sort='bool'):
        if depth == settings.depth:
            return Node()
        ret = Node(random.choice(self.ops[sort]))
        for _ in range(ret.val.arity):
            ret.children.append(self.mk_ast(depth+1,ret.val.sig[_]))

    def mutate(self, construct):
        pass
