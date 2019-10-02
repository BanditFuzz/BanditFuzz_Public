import collections
import re

dbg = False
 
term_regex = r'''(?mx)
    \s*(?:
        (?P<brackl>\()|
        (?P<brackr>\))|
        (?P<num>\-?\d+\.\d+|\-?\d+)|
        (?P<sq>"[^"]*")|
        (?P<s>[^(^)\s]+)
       )'''

class SMTLIBScript(collections.MutableSequence):
    def __init__(self, *args):
        self._storage = list(args)
        import banditfuzz.interface.smtlib.theories.core as core
        self.ops = core.CORE_FUNCS
        self.sorts = core.CORE_SORTS
        self.mks = core.CORE_MKS
        for name, val in core.__dict__.items():
            if callable(val):
                setattr(self, name, val)

    ## INTERFACE
    def set_logic(self, logic):
        '''
        Load all the things you need to load for that logic!
        '''
        self.funcs = {}

        if logic == "QF_FP":
            import banditfuzz.interface.smtlib.theories.fp as fp
            self.ops = {**self.ops, **fp.QF_FP_FUNCS}
            self.sorts = {**self.sorts, **fp.QF_FP_SORTS}
            self.mks = {**self.mks, **fp.QF_FP_MKS}
            self.alias = fp.QF_FP_ALIAS
            for name, val in fp.__dict__.items():
                if callable(val):
                    setattr(self, name, val)
        else:
            raise ValueError("Unsupported Logic!", logic)

        self.append(SExpr("set-logic", logic))

    def mk_assert(self, exp, make_primary=False):
        if exp.op in self.ops and self.ops[exp.op][-1] == "Bool":
            self.append(SExpr("assert", exp))
        else:
            raise ValueError("Assertion must be Boolean!")
        if make_primary:
            self.primary = self[-1].args[0]
        return self[-1]

    def declare_const(self, name, sort):
        # if sort in self.alias:
        #     sort = self.alias[sort]
        if name not in self.funcs:
            self.append(SExpr("declare-const", name, sort))
            self.funcs[name] = sort
        else:
            raise ValueError("Const", name, "already declared!")
        return name

    def check_sat(self):
        self.append(SExpr("check-sat"))

    def get_model(self):
        self.append(SExpr("get-model"))

    ## END INTERFACE
    def __str__(self):
        return "\n".join(str(sexp) for sexp in self._storage)

    __repr__ = __str__

    ## OTHER STUFF TO BEHAVE LIKE LIST
    def __len__(self):
        return len(self._storage)

    def __delitem__(self, index):
        self._storage.__delitem__(index)

    def insert(self, index, value):
        self._storage.insert(index, value)
    
    def append(self, value):
        self._storage.append(value)

    def __setitem__(self, index, value):
        self._storage.__setitem__(index, value)

    def __getitem__(self, index):
        return self._storage.__getitem__(index)

class SExpr(collections.MutableSequence):
    def __init__(self, *args):
        self._storage = list(args)

    ## INTERFACE
    @property
    def op(self):
        return self._storage[0]

    @op.setter
    def op(self, new_op):
        if len(self._storage) == 0:
            self._storage.append(new_op)
        else:
            self._storage[0] = new_op

    @property
    def args(self):
        return self._storage[1:]

    @args.setter
    def args(self, new_args):
        self._storage = [self._storage[0]] + new_args

    def get_nth_arg(self, n):
        return self.args[n]

    def get_nth_sexpr(self, n):
        """
        Depth first traversal of sexpr to get the n-th sexpr
        """
        if n < 0:
            raise ValueError("n must be greater than 0!")

        if n==0:
            return self
        
        for arg in self.args:
            return arg.get_nth_sexpr(n-1)
        
        raise ValueError("n is too large!")

    def count_sxpr(self, n=0):
        n += 1
        args = self.args
        for arg in args:
            return arg.count_sexpr(n)

    ## OTHER STUFF TO BEHAVE LIKE LIST
    def __len__(self):
        return len(self._storage)

    def __delitem__(self, index):
        self._storage.__delitem__(index)

    def insert(self, index, value):
        self._storage.insert(index, value)

    def __setitem__(self, index, value):
        self._storage.__setitem__(index, value)

    def __getitem__(self, index):
        return self._storage.__getitem__(index)

    def __eq__(self, other):
        return str(self) == str(other)

    def __str__(self):
        return print_sexp(self)

    __repr__ = __str__

    def __hash__(self):
        return hash(str(self))

def parse_sexp(sexp):
    stack = []
    out = SExpr()
    if dbg: print("%-6s %-14s %-44s %-s" % tuple("term value out stack".split()))
    for termtypes in re.finditer(term_regex, sexp):
        term, value = [(t,v) for t,v in termtypes.groupdict().items() if v][0]
        if dbg: print("%-7s %-14s %-44r %-r" % (term, value, out, stack))
        if   term == 'brackl':
            stack.append(out)
            out = []
        elif term == 'brackr':
            assert stack, "Trouble with nesting of brackets"
            tmpout, out = out, stack.pop(-1)
            out.append(tmpout)
        elif term == 'num':
            v = float(value)
            if v.is_integer(): v = int(v)
            out.append(v)
        elif term == 'sq':
            out.append(value[1:-1])
        elif term == 's':
            out.append(value)
        else:
            raise NotImplementedError("Error: ", term, value)
    assert not stack, "Trouble with nesting of brackets"
    return out[0]

def parse_script(smtlib):
    smtlib = smtlib.splitlines()
    result = []
    for i in range(len(smtlib)):
        line = smtlib[i].split(";")[0]
        if line:
            result.append(line)
    return SMTLIBScript(*result)

def print_sexp(exp):
    out = ''
    if isinstance(exp, (list, SExpr)):
        out += '(' + ' '.join(print_sexp(x) for x in exp) + ')'
    elif isinstance(exp, str) and re.search(r'[\s()]', exp):
        out += '"%s"' % repr(exp)[1:-1].replace('"', '\"')
    else:
        out += '%s' % exp
    return out