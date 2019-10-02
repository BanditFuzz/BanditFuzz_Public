from banditfuzz.interface.smtlib.script import SExpr

CORE_SORTS = {
    'Bool' :  [],
    'Num'  :  []
}

CORE_FUNCS = {
    'not' : ['Bool', 'Bool'],
    'and' : ['Bool', 'Bool', 'Bool'],
    'or'  : ['Bool', 'Bool', 'Bool']
}

def mk_not(expr):
        return SExpr("not", expr)


def mk_and(left, right):
        return SExpr("and", left, right)

def mk_or(left, right):
        return SExpr("or", left, right)

CORE_MKS = {
    'not' : mk_not,
    'and' : mk_and,
    'or'  : mk_or
}