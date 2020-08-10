class NEG:
    def __init__(self):
        self.arity = 1
        self.sort = 'real'
        self.sig = [
            'real',
            'real'
        ]
        self.chainable = False

    def __str__(self):
        return "-"

    __repr__ = __str__

class ADD:
    def __init__(self):
        self.arity = 2
        self.sort = 'real'
        self.sig = [
            'real', 'real',
            'real'
        ]
        self.chainable = False

    def __str__(self):
        return "+"

    __repr__ = __str__

class SUB:
    def __init__(self):
        self.arity = 2
        self.sort = 'real'
        self.sig = [
            'real',
            'real',
            'real'
        ]
        self.chainable = False

    def __str__(self):
        return "-"

    __repr__ = __str__


class MUL:
    def __init__(self):
        self.arity = 2
        self.sort = 'real'
        self.sig = [
            'real', 'real', 'real'
        ]
        self.chainable = False

    def __str__(self):
        return "*"

    __repr__ = __str__


class DIV:
    def __init__(self):
        self.arity = 2
        self.sort = 'real'
        self.sig = [
            'real', 'real', 'real'
        ]
        self.chainable = False

    def __str__(self):
        return "/"

    __repr__ = __str__


class LEQ:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'real', 'real',
            'bool'
        ]
        self.chainable = False

    def __str__(self):
        return "<="

    __repr__ = __str__


class LT:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'real', 'real',
            'bool'
        ]
        self.chainable = False

    def __str__(self):
        return "<"

    __repr__ = __str__


class GEQ:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'real', 'real',
            'bool'
        ]
        self.chainable = False

    def __str__(self):
        return ">="

    __repr__ = __str__


class GT:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'real', 'real',
            'bool'
        ]
        self.chainable = False

    def __str__(self):
        return ">"

    __repr__ = __str__