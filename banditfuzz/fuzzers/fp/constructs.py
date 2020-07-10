class ABS:
    def __init__(self):
        self.arity = 1
        self.sort = 'fp'
        self.sig = [
            'fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.abs"
    __repr__ = __str__

class NEG:
    def __init__(self):
        self.arity = 1
        self.sort = 'fp'
        self.sig = [
            'fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.neg"
    __repr__ = __str__

class ADD:
    def __init__(self):
        self.arity = 3
        self.sort = 'fp'
        self.sig = [
            'round', 'fp', 'fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.add"
    __repr__ = __str__

class SUB:
    def __init__(self):
        self.arity = 3
        self.sort = 'fp'
        self.sig = [
            'round', 'fp', 'fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.sub"
    __repr__ = __str__

class MUL:
    def __init__(self):
        self.arity = 3
        self.sort = 'fp'
        self.sig = [
            'round', 'fp','fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.mul"
    __repr__ = __str__

class DIV:
    def __init__(self):
        self.arity = 3
        self.sort = 'fp'
        self.sig = [
            'round','fp','fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.div"
    __repr__ = __str__

class FMA:
    def __init__(self):
        self.arity = 4
        self.sort = 'fp'
        self.sig = [
            'round', 'fp','fp','fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.fma"
    __repr__ = __str__

class R2I:
    def __init__(self):
        self.arity = 2
        self.sort = 'fp'
        self.sig = [
            'fp', 'round',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.roundToIntegral"
    __repr__ = __str__

class MIN:
    def __init__(self):
        self.arity = 2
        self.sort = 'fp'
        self.sig = [
            'fp','fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.min"
    __repr__ = __str__

class MAX:
    def __init__(self):
        self.arity = 2
        self.sort = 'fp'
        self.sig = [
            'fp', 'fp',
            'fp'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.max"
    __repr__ = __str__
        
class LEQ:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'fp', 'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.leq"
    __repr__ = __str__

class LT:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'fp', 'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.lt"
    __repr__ = __str__

class GEQ:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'fp', 'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.geq"
    __repr__ = __str__

class GT:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'fp', 'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.gt"
    __repr__ = __str__

class EQ:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'fp', 'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.eq"
    __repr__ = __str__

class IS_NORM:
    def __init__(self):
        self.arity = 1
        self.sort = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isNormal"
    __repr__ = __str__

class IS_SUBNORM:
    def __init__(self):
        self.arity = 1
        self.sort = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isSubnormal"
    __repr__ = __str__

class IS_INF:
    def __init__(self):
        self.arity = 1
        self.sort = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isInfinite"
    __repr__ = __str__

class IS_NAN:
    def __init__(self):
        self.arity = 1
        self.sort = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isNaN"
    __repr__ = __str__

class IS_NEG:
    def __init__(self):
        self.arity = 1
        self.sort = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isNegative"
    __repr__ = __str__

class IS_POS:
    def __init__(self):
        self.arity = 1
        self.sort = 'bool'
        self.sig = [
            'fp',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "fp.isPositive"
    __repr__ = __str__

class RNE:
    def __init__(self):
        self.arity = 0
        self.sort = 'round'
        self.sig = []
        self.chainable = False
    def __str__(self):
        return "RNE"
    __repr__ = __str__

class RNA:
    def __init__(self):
        self.arity = 0
        self.sort = 'round'
        self.sig = []
        self.chainable = False
    def __str__(self):
        return "RNA"
    __repr__ = __str__

class RTP:
    def __init__(self):
        self.arity = 0
        self.sort = 'round'
        self.sig = []
        self.chainable = False
    def __str__(self):
        return "RTP"
    __repr__ = __str__

class RTN:
    def __init__(self):
        self.arity = 0
        self.sort = 'round'
        self.sig = []
        self.chainable = False
    def __str__(self):
        return "RTN"
    __repr__ = __str__

class RTZ:
    def __init__(self):
        self.arity = 0
        self.sort = 'round'       
        self.sig = []
        self.chainable = False
    def __str__(self):
        return "RTZ"    
    __repr__ = __str__
    