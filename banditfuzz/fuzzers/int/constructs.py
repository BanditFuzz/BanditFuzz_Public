class NEG:
    def __init__(self):
        self.arity = 1
        self.sort = 'int'
        self.sig = [
            'int',
            'int'
        ]
        self.chainable = False

    def __str__(self):
        return "-"

    __repr__ = __str__



class ADD:
    def __init__(self):
        self.arity = 2
        self.sort = 'int'
        self.sig = [
            'int', 'int',
            'int'
        ]
        self.chainable = False

    def __str__(self):
        return "+"

    __repr__ = __str__


class SUB:
    def __init__(self):
        self.arity = 2
        self.sort = 'int'
        self.sig = [
            'int',
            'int',
            'int'
        ]
        self.chainable = False

    def __str__(self):
        return "-"

    __repr__ = __str__


class MUL:
    def __init__(self):
        self.arity = 2
        self.sort = 'int'
        self.sig = [
            'int', 'int', 'int'
        ]
        self.chainable = False

    def __str__(self):
        return "*"

    __repr__ = __str__


class DIV:
    def __init__(self):
        self.arity = 2
        self.sort = 'int'
        self.sig = [
            'int', 'int', 'int'
        ]
        self.chainable = False

    def __str__(self):
        return "div"

    __repr__ = __str__

class MOD:
    def __init__(self):
        self.arity = 2
        self.sort = 'int'
        self.sig = [
            'int', 'int', 'int'
        ]
        self.chainable = False

    def __str__(self):
        return "mod"

    __repr__ = __str__

class REM:
    def __init__(self):
        self.arity = 2
        self.sort = 'int'
        self.sig = [
            'int', 'int', 'int'
        ]
        self.chainable = False

    def __str__(self):
        return "rem"

    __repr__ = __str__

class LEQ:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'int', 'int',
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
            'int', 'int',
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
            'int', 'int',
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
            'int', 'int',
            'bool'
        ]
        self.chainable = False

    def __str__(self):
        return ">"

    __repr__ = __str__
