from .. construct import Construct

class FP_ABS(Construct):
    def __init__(self):
        self.arity = 1
        self.type = 'fp'
        self.sig = [
            'fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.abs"
    __repr__ = __str__

class FP_NEG(Construct):
    def __init__(self):
        self.arity = 1
        self.type = 'fp'
        self.sig = [
            'fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.neg"
    __repr__ = __str__

class FP_ADD(Construct):
    def __init__(self):
        self.arity = 3
        self.type = 'fp'
        self.sig = [
            'round', 'fp', 'fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.add"
    __repr__ = __str__

class FP_SUB(Construct):
    def __init__(self):
        self.arity = 3
        self.type = 'fp'
        self.sig = [
            'round', 'fp', 'fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.sub"
    __repr__ = __str__

class FP_MUL(Construct):
    def __init__(self):
        self.arity = 3
        self.type = 'fp'
        self.sig = [
            'round', 'fp','fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.mul"
    __repr__ = __str__

class FP_DIV(Construct):
    def __init__(self):
        self.arity = 3
        self.type = 'fp'
        self.sig = [
            'round','fp','fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.div"
    __repr__ = __str__

class FP_FMA(Construct):
    def __init__(self):
        self.arity = 4
        self.type = 'fp'
        self.sig = [
            'round', 'fp','fp','fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.fma"
    __repr__ = __str__

class FP_R2I(Construct):
    def __init__(self):
        self.arity = 2
        self.type = 'fp'
        self.sig = [
            'fp', 'round',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.roundToIntegral"
    __repr__ = __str__

class FP_MIN(Construct):
    def __init__(self):
        self.arity = 2
        self.type = 'fp'
        self.sig = [
            'fp','fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.min"
    __repr__ = __str__

class FP_MAX(Construct):
    def __init__(self):
        self.arity = 2
        self.type = 'fp'
        self.sig = [
            'fp', 'fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.max"
    __repr__ = __str__
        
class FP_LEQ(Construct):
    def __init__(self):
        self.arity = 2
        self.type = 'bool'
        self.sig = [
            'fp', 'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.leq"
    __repr__ = __str__

class FP_LT(Construct):
    def __init__(self):
        self.arity = 2
        self.type = 'bool'
        self.sig = [
            'fp', 'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.lt"
    __repr__ = __str__

class FP_GEQ(Construct):
    def __init__(self):
        self.arity = 2
        self.type = 'fp'
        self.sig = [
            'fp', 'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.geq"
    __repr__ = __str__

class FP_GT(Construct):
    def __init__(self):
        self.arity = 2
        self.type = 'fp'
        self.sig = [
            'fp', 'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.gt"
    __repr__ = __str__

class FP_EQ(Construct):
    def __init__(self):
        self.arity = 2
        self.type = 'bool'
        self.sig = [
            'fp', 'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.eq"
    __repr__ = __str__

class FP_IS_NORM(Construct):
    def __init__(self):
        self.arity = 1
        self.type = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isNormal"
    __repr__ = __str__

class FP_IS_SUBNORM(Construct):
    def __init__(self):
        self.arity = 1
        self.type = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isSubnormal"
    __repr__ = __str__

class FP_IS_INF(Construct):
    def __init__(self):
        self.arity = 1
        self.type = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isInfinite"
    __repr__ = __str__

class FP_IS_NAN(Construct):
    def __init__(self):
        self.arity = 1
        self.type = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isNaN"
    __repr__ = __str__

class FP_IS_NEG(Construct):
    def __init__(self):
        self.arity = 1
        self.type = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isNegative"
    __repr__ = __str__

class FP_IS_POS(Construct):
    def __init__(self):
        self.arity = 1
        self.type = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isPositive"
    __repr__ = __str__

class RNE(Construct):
    def __init__(self):
        self.arity = 0
        self.type = 'round'
        self.sig = []
        self.chainable = False
    def __str__(self):
        return "RNE"
    __repr__ = __str__

class RNA(Construct):
    def __init__(self):
        self.arity = 0
        self.type = 'round'
        self.sig = []
        self.chainable = False
    def __str__(self):
        return "RNA"
    __repr__ = __str__

class RTP(Construct):
    def __init__(self):
        self.arity = 0
        self.type = 'round'
        self.sig = []
        self.chainable = False
    def __str__(self):
        return "RTP"
    __repr__ = __str__

class RTN(Construct):
    def __init__(self):
        self.arity = 0
        self.type = 'round'
        self.sig = []
        self.chainable = False
    def __str__(self):
        return "RTN"
    __repr__ = __str__

class RTZ(Construct):
    def __init__(self):
        self.arity = 0
        self.type = 'round'       
        self.sig = []
        self.chainable = False
    def __str__(self):
        return "RTZ"    
    __repr__ = __str__
    