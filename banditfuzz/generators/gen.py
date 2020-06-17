from random import randint, random, choice
import argparse,os,sys,pdb
import  banditfuzz.interface.Settings as settings
import banditfuzz.interface.smtlib.theories.fp as fp

from banditfuzz.interface.smtlib.script import SExpr
from banditfuzz.instance import Instance
from copy import copy, deepcopy
from banditfuzz.solver import run_command

import tempfile as tmpf


class Generator:
    def __init__(self, ops, rounding_modes, eb, sb):
        self.eb = eb
        self.sb = sb
        self.boolean_ops = []
        self.ops = []
        
        self.maxDepth = settings.GeneratorMaxDepth
        self.rounding_modes = rounding_modes

        self.funcs = fp.QF_FP_FUNCS 
        self.mks = fp.QF_FP_MKS

        self.consts = []
        for i in range(settings.GeneratorNumConst):
            self.consts.append('x'+str(i))

        for op in  ops:
            if self.funcs[op][-1] == "Bool":
                self.boolean_ops.append(op)
            elif self.funcs[op][-1] == "FloatingPoint":
                self.ops.append(op)

    def gen(self, depth=0):
        float_sort = SExpr("_", "FloatingPoint", self.eb, self.sb)
        exps = []
        for i in range(settings.NumPrimaries):
            exps.append(self.gen_rand_sexpr(depth))
        ret = Instance(exps)
        ret.set_logic("QF_FP")
        for i in range(settings.GeneratorNumConst):
            ret.declare_const("x"+str(i), float_sort)
        ret.mk_auxilary()
        for i in range(settings.NumPrimaries):
            ret.mk_assert(ret.primaries[i])
        ret.check_sat()
        return ret

    def mutate(self,instance,action):
        float_sort = SExpr("_", "FloatingPoint", self.eb, self.sb)
        exp = None
        done = None
        fail = None
        new_exp = None
        m = -1
        n = -1
        if action in self.ops:
            m = randint(0,settings.NumPrimaries-1)
            num_fp_ops = instance.num_float_ops(prim_indx=m)
            n = randint(0, num_fp_ops-1)
            exp = deepcopy(instance.primaries[m])
            new_exp, n, done, fail = self.bandit_mutate_core_fp_ops(exp, action, n)
            it=0
            while fail and it < 4:
                m = randint(0,settings.NumPrimaries-1)
                exp = deepcopy(instance.primaries[m])
                num_fp_ops = instance.num_float_ops(prim_indx=m)
                n = randint(0, num_fp_ops-1)
                new_exp, n, done, fail = self.bandit_mutate_core_fp_ops(exp, action, n)
                it += 1
        elif action in self.boolean_ops:
            m = randint(0,settings.NumPrimaries-1)
            exp = deepcopy(instance.primaries[m])
            new_exp,_, done, fail = self.bandit_mutate_core_bool_ops(exp, action)
            it = 0
            while fail and it < 4:
                m = randint(0,settings.NumPrimaries-1)
                exp = deepcopy(instance.primaries[m])
                new_exp,_, done, fail = self.bandit_mutate_core_bool_ops(exp, action)
                it += 1

        else: # action in self.rounding_modes:
            assert action in self.rounding_modes
            it = 0
            m = randint(0,settings.NumPrimaries-1)
            num_rounds = instance.num_rounding_modes(prim_indx=m)
            if num_rounds == 0:
                it += 1
                fail = True
            else:
                exp = deepcopy(instance.primaries[m])
                n = randint(0,num_rounds-1)
                new_exp,_,done,fail =  self.bandit_mutate_core_round_mode(exp, action, n)
            while fail and it < 4:
                m = randint(0,settings.NumPrimaries-1)
                num_rounds = instance.num_rounding_modes(prim_indx=m)
                if num_rounds == 0:
                    it += 1
                    continue
                n = randint(0,num_rounds-1)
                exp = deepcopy(instance.primaries[m])
                new_exp,_,done,fail =  self.bandit_mutate_core_round_mode(exp, action, n)
                it += 1
        if fail or it == 5:
            return None
        
        new_primaries = deepcopy(instance.primaries)
       # print(new_primaries[m])
       # print(new_exp)
       # input(action+" " + str(n))
        new_primaries[m] = new_exp
        ret = Instance(new_primaries)
        ret.set_logic("QF_FP")
        for i in range(settings.GeneratorNumConst):
            ret.declare_const("x"+str(i), float_sort)
        ret.mk_auxilary()
        for i in range(settings.NumPrimaries):
            ret.mk_assert(ret.primaries[i])
        ret.check_sat()
        return ret
   
    def bandit_mutate_core_fp_ops(self, primary,  new_op, n, indx=0, depth=0):
        if isinstance(primary, str):
            return primary, indx, False, False
        op = primary.op
        sig = self.funcs[op]
        ret_form = SExpr()
        if sig[-1] != 'Bool' and indx == n:
            new_sig = self.funcs[new_op]
            if op == new_op:
                return primary, indx, True, True

            
            ret_form.op = new_op
            start = 0
            if sig[0] == "Mode" and new_sig[0] == "Mode":
                ret_form.append(primary.args[0])
                start = 1
            elif sig[0] == "Mode":
                start = 1
            elif new_sig[0] == "Mode":
                ret_form.append(choice(self.rounding_modes))

            while len(ret_form.args) < len(new_sig)-1:
                if start < len(sig)-1:
                     ret_form.append(primary.args[start])
                     start += 1
                else:
                    ret_form.append(self.gen_rand_sexpr(depth+1))         
            return ret_form, indx, True, False
        elif depth != 0:
            indx += 1
        start = 0
        ret_form.op = op
        if sig[0] == "Mode":
            start = 1
            ret_form.append(primary.args[0])
        done = False
        fail = False
        for i in range(start, len(sig)-1):
            if not done:
                arg, indx, done, fail = self.bandit_mutate_core_fp_ops(primary.args[i], new_op, n, indx,depth + 1)
                ret_form.append(arg)
            else:
                ret_form.append(primary.args[i])

        return ret_form, indx, done, fail

    def bandit_mutate_core_bool_ops(self, primary, new_op):
        if primary.op == new_op:
            return primary,0,True,True
        ret_form = SExpr()
        ret_form.op = new_op
        new_sig = self.funcs[ret_form.op]
        start = 0
        while len(ret_form.args) < len(new_sig)-1:
            if start < len(primary.args):
                ret_form.append(primary.args[start])
                start += 1
            else:
                ret_form.append(self.gen_rand_sexpr(1))
        return ret_form,0,True,False

    def bandit_mutate_core_round_mode(self, primary, new_op, n, indx=0):
        if isinstance(primary, str):
            return primary, indx, False, False
        op = primary.op
        sig = self.funcs[op]
        if indx == n and sig[0] == 'Mode':
            if primary[1] == new_op:
                return primary,indx,True,True
            else:
                primary[1] = new_op
                return primary,indx,True,False
        else:
            start = 0
            if sig[0] == 'Mode':
                indx += 1
                start = 1
            done = False
            fail = False
            for i in range(start,len(primary.args)):
                primary.args[i],indx,done,fail = self.bandit_mutate_core_round_mode(primary.args[i],new_op,n,indx)
                if done:
                    break
            return primary,indx,done,fail


        
    def gen_rand_sexpr(self, depth=0):
        if depth == self.maxDepth:
            return choice(self.consts)
        
        op = None
        if depth == 0:
            op = choice(self.boolean_ops)
        else:
            op = choice(self.ops)
        
        args = []
        for sort in self.funcs[op][:-1]:
            if sort == "Mode":
                args.append(choice(self.rounding_modes))
            elif sort == "FloatingPoint":
                args.append(self.gen_rand_sexpr(depth+1))
            else:
                raise ValueError("Invalid Sort!", sort)
        return self.mks[op](*args)


class Generator_Str:
    def __init__(self):
        self.ops = settings.string_ops
    def gen(self, depth=0):
        cmd =  'stringfuzzg -r random-ast -m '
        cmd += '--depth ' + str(settings.GeneratorMaxDepth) + ' '
        cmd += '--num-asserts ' + str(settings.NumPrimaries) + ' '
        cmd += '--num-vars ' + str(settings.GeneratorNumConst) + ' '
        cmd += '-o ' + "".join([v+ ',' for v in settings.string_ops])
        cmd = cmd[:-1]
        print(cmd)
        smt, err, time = run_command(cmd)
        if smt.count('(set-logic QF_S)') == 0:
            smt = '(set-logic QF_S)' + smt

        assert smt != 'err' or smt != 'timeout' or smt != 'empty', smt
        assert smt.count('assert') > 0, smt

        return Instance(smt)

    # def indexof_fix(self,smt):
    #     ret = ''
    #     it = smt.find('indexof')
    #     if it == -1:
    #         return smt

    #     it+=7 #go to first space
    #     nargs = 0 #detected args to index of
    #     ret += smt[:it]

    #     args = []
    #     args.append('')

    #     #while we are within (indexof ....)
    #     while p != 0:
            
    #         cur_arg += smt[it]
    #         it += 1

    #         #arg is an ast
    #         if   smt[it] == '(':
    #             args[-1] += smt[it]
    #             p += 1
    #             q 
    #         elif smt[end] == ')':
    #             p -= 1
    #         #argument is a var or a literal
    #         elif p == 1 and not smt[end].isspace():
    #             nargs += 1
    #             #literal
    #             if smt[end] == '"':
    #                 end += 1
    #                 while smt[end] != '"' and smt[end-1] != '\\':
    #                     end += 1
    #             #var
    #             else:
    #                 while not smt[end].isspace() and smt[end] != ')':
    #                     end += 1
    #                 if smt[end] == ')':
    #                     p -= 1
    #     except  BaseException as e:
    #         print("Error: " + str(e))
    #         print("SMT=" + smt, flush=True)
    #         sys.exit(0)
    #     assert nargs == 2 or nargs == 3, "nargs = " + str(nargs) + ', but expected 2 or 3 on: ' + str(smt)
    #     if nargs == 2:
    #         return smt[:start] + self.indexof_fix(smt[start:end]) + ' 0)'
    #     else:
    #         return smt


    def mutate(self,instance,action):
        fname = '/tmp/' + instance.name
        instance.to_file('/tmp/')
        cmd   =  'stringfuzzx --file ' + fname + ' '
        cmd  += '--random ' 
        cmd  += 'bandit --operator \'' + action + '\''

        #cmd += '--num-asserts ' + str(settings.NumPrimaries) + ' '
        #cmd += '--num-vars ' + str(settings.GeneratorNumConst) + ' '
        #print("Mutated with the following command: " + cmd)
        smt,_,_ = run_command(cmd)
        if smt.count('(set-logic QF_S)') == 0:
            smt = '(set-logic QF_S)' + smt


        os.remove(fname)
        assert smt != 'err' or smt != 'timeout' or smt != 'empty'
        assert smt.count('assert') > 0, smt + '\n' + ' on input: ' + str(instance) + ' with action ' + str(action) + ' with command: ' + cmd
        return Instance(smt)

def mk_gen():
    if settings.theory == 'QF_S':
        return Generator_Str()
    
    assert settings.theory == 'QF_FP'

    width = settings.FloatWidth
    ne = 0
    ns = 0
    if width == 5:
        ne = 2
        ns = 3
    elif width == 32:
        ne = 8 
        ns = 24
    elif width == 64:
        ne = 11
        ns = 53
    elif width == 128:
        ne = 15
        ns = 113
    elif width == 256:
        ne = 19
        ns = 237
    else:
        if width < 32:
            ne = round(width * 8/24)
            ns = width - ne
        elif width < 64:
            ne = round(width * 11/53)
            ns = width - ne
        elif width < 128:
            ne = round(width * 15/113)
            ns = width - ne
        else:
            ne = round(width * 19/237)
            ns = width - ne

    ops = []
    
    if settings.FP_Abs:
        ops.append("fp.abs")
    if settings.FP_Neg:
        ops.append("fp.neg")
    if settings.FP_Add:
        ops.append("fp.add")
    if settings.FP_Sub:
        ops.append("fp.sub")
    if settings.FP_Mul:
        ops.append("fp.mul")
    if settings.FP_Div:
        ops.append("fp.div")
    if settings.FP_FMA:
        ops.append("fp.fma")
    if settings.FP_Rem:
        ops.append("fp.rem")
    if settings.FP_R2I:
        ops.append("fp.roundToIntegral")
    if settings.FP_Sqrt:
        ops.append("fp.sqrt")
    if settings.FP_Min:
        ops.append("fp.min")
    if settings.FP_Max:
        ops.append("fp.max")
    if settings.FP_Leq:
        ops.append("fp.leq")
    if settings.FP_Lt:
        ops.append("fp.lt")
    if settings.FP_Geq:
        ops.append("fp.geq")
    if settings.FP_Gt:
        ops.append("fp.gt")
    if settings.FP_Eq:
        ops.append("fp.eq")
    if settings.FP_IsNorm:
        ops.append("fp.isNormal")
    if settings.FP_IsSub:
        ops.append("fp.isSubnormal")
    if settings.FP_IsZero:
        ops.append("fp.isZero")
    if settings.FP_IsNan:
        ops.append("fp.isNaN")
    if settings.FP_IsNeg:
        ops.append("fp.isNegative")
    if settings.FP_IsPos:
        ops.append("fp.isPositive")

    rounding_modes = []
    if settings.FP_RNE:
        rounding_modes.append("RNE")
    if settings.FP_RNA:
        rounding_modes.append("RNA")
    if settings.FP_RTP:
        rounding_modes.append("RTP")
    if settings.FP_RTN:
        rounding_modes.append("RTN")
    if settings.FP_RTZ:
        rounding_modes.append("RTZ")

    return Generator(ops, rounding_modes, ne, ns)
