from ..parser import args as settings
from .node import Node
from .benchmark import Benchmark
from sklearn.preprocessing import normalize as norm
import inspect,pdb,random
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


        for sort in self.constructs:
            rm = []
            for op in self.constructs[sort]:
                if str(op()) in settings.ban:
                    rm.append(op)
            for op in rm:
                pdb.set_trace()
        

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
                # elif settings.rand_bit_len: benchmark.add_var(FPVariable(f'fp_{_}',random.randint(0,256), random.randint(0,256)))
                # else:
                #     opts =  (FPVariable(f'fp_{_}',3,5), FPVariable(f'fp_{_}',5,11), FPVariable(f'fp_{_}',8,24), FPVariable(f'fp_{_}',11,53), FPVariable(f'fp_{_}',15,113), FPVariable(f'fp_{_}',19,237), FPVariable(f'fp_{_}',random.randint(2,256), random.randint(2,256)))
                #     odds =  (1,                         1,                          1,                          1,                           1,                            1,                            1)
                #     benchmark.add_var(np.random.choice(
                #         a = opts,
                #         p = odds/np.linalg.norm(odds)**2,
                #     ))

        if settings.bv:
            raise NotImplementedError

        if settings.integer or settings.strings:
            from .int.variable import IntVariable
            for _ in range(settings.vars):
                benchmark.add_var(IntVariable(f'int_{_}'))

        if settings.real:
            raise NotImplementedError

        for _ in range(settings.nassert):
            benchmark.check(self.mk_ast(depth=0,benchmark=benchmark))

        print(benchmark)
        return benchmark

    def mk_ast(self, depth, benchmark, sort='bool'):
        if depth == settings.depth:
            if sort == 'round' or sort == 'reg':
                return random.choice(self.literals[sort])()
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

    def mutate(self, construct):
        pass
