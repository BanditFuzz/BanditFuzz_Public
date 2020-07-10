import random

class CONCAT:
    def __init__(self):
        self.arity = 2
        self.sort = 'str'
        self.sig = [
            'str', 'str',
            'str'
        ]
        self.chainable = True
    def __str__(self):
        return "str.++"
    __repr__ = __str__

class LEN:
    def __init__(self):
        self.arity = 1
        self.sort = 'int'
        self.sig = [
            'str',
            'int'
        ]
        self.chainable = False
    def __str__(self):
        return "str.len"
    __repr__ = __str__
class LEX_ORD:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'str', 'str',
            'bool'
        ]
        self.chainable = True
    def __str__(self):
        return "str.<"
    __repr__ = __str__
class TO_REG:
    def __init__(self):
        self.arity = 1
        self.sort = 'reg'
        self.sig = [
            'str',
            'reg'
        ]
        self.chainable = False
    def __str__(self):
        return "str.to_re"
    __repr__ = __str__
class IN_REG:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'str', 'reg',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "str.in_re"
    __repr__ = __str__
class NONE:
    def __init__(self):
        self.arity = 0
        self.sort = 'reg'
        self.sig = [
            # no input
            'reg'
        ]
        self.chainable = False
    def __str__(self):
        return "re.none"
    __repr__ = __str__
class RE_ALL:
    def __init__(self):
        self.arity = 0
        self.sort = 'reg'
        self.sig = [
            #None
            'reg'
        ]
        self.chainable = False
    def __str__(self):
        return "re.all"
    __repr__ = __str__
class RE_ALLCHAR:
    def __init__(self):
        self.arity = 0
        self.sort = 'reg'
        self.sig = [
            #None
            'reg'
        ]
        self.chainable = False
    def __str__(self):
        return "re.allchar"
    __repr__ = __str__
class RE_CONCAT:
    def __init__(self):
        self.arity = 2
        self.sort = 'reg'
        self.sig = [
            'reg', 'reg',
            'reg'
        ]
        self.chainable = True
    def __str__(self):
        return "re.++"
    __repr__ = __str__
class RE_UNION:
    def __init__(self):
        self.arity = 2
        self.sort = 'reg'
        self.sig = [
            'reg', 'reg',
            'reg'
        ]
        self.chainable = True
    def __str__(self):
        return "re.union"
    __repr__ = __str__
class RE_INTER:
    def __init__(self):
        self.arity = 2
        self.sort = 'reg'
        self.sig = [
            'reg', 'reg',
            'reg'
        ]
        self.chainable = True
    def __str__(self):
        return "re.inter"
    __repr__ = __str__
class RE_KLEENE:
    def __init__(self):
        self.arity = 1
        self.sort = 'reg'
        self.sig = [
            'reg',
            'reg'
        ]
        self.chainable = False
    def __str__(self):
        return "re.*"
    __repr__ = __str__
class LEQ:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'str', 'str',
            'bool'
        ]
        self.chainable = True
    def __str__(self):
        return "str.<="
    __repr__ = __str__
class AT:
    def __init__(self):
        self.arity = 2
        self.sort = 'str'
        self.sig = [
            'str', 'int',
            'str'
        ]
        self.chainable = False
    def __str__(self):
        return "str.at"
    __repr__ = __str__
class SUBSTR:
    def __init__(self):
        self.arity = 3
        self.sort = 'str'
        self.sig = [
            'str', 'int', 'int',
            'str'
        ]
        self.chainable = False
    def __str__(self):
        return "str.substr"
    __repr__ = __str__
class PREFIXOF:
    def __init__(self):
        self.arity = 3
        self.sort = 'bool'
        self.sig = [
            'str', 'int', 'int',
            'str'
        ]
        self.chainable = False
    def __str__(self):
        return "str.substr"
    __repr__ = __str__
class SUFFIXOF:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'str', 'str',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "str.suffixof"
    __repr__ = __str__

class CONTAINS:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'str', 'str',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "str.contains"
    __repr__ = __str__

class INDEXOF:
    def __init__(self):
        self.arity = 3
        self.sort = 'int'
        self.sig = [
            'str', 'str','int',
            'int'
        ]
        self.chainable = False
    def __str__(self):
        return "str.indexof"
    __repr__ = __str__
class REPLACE:
    def __init__(self):
        self.arity = 3
        self.sort = 'str'
        self.sig = [
            'str', 'str','str',
            'str'
        ]
        self.chainable = False
    def __str__(self):
        return "str.replace"
    __repr__ = __str__
class REPLACE_ALL:
    def __init__(self):
        self.arity = 3
        self.sort = 'str'
        self.sig = [
            'str', 'str','str',
            'str'
        ]
        self.chainable = False
    def __str__(self):
        return "str.replace_all"
    __repr__ = __str__
class REPLACE_RE:
    def __init__(self):
        self.arity = 3
        self.sort = 'str'
        self.sig = [
            'str', 'reg','str',
            'str'
        ]
        self.chainable = False
    def __str__(self):
        return "str.replace_re"
    __repr__ = __str__
class REPLACE_RE_ALL:
    def __init__(self):
        self.arity = 3
        self.sort = 'str'
        self.sig = [
            'str', 'reg','str',
            'str'
        ]
        self.chainable = False
    def __str__(self):
        return "str.replace_re_all"
    __repr__ = __str__
class REG_COMP:
    def __init__(self):
        self.arity = 1
        self.sort = 'reg'
        self.sig = [
            'reg', 
            'reg'
        ]
        self.chainable = False
    def __str__(self):
        return "re.comp"
    __repr__ = __str__
class REG_DIFF:
    def __init__(self):
        self.arity = 2
        self.sort = 'reg'
        self.sig = [
            'reg', 'reg',
            'reg'
        ]
        self.chainable = True
    def __str__(self):
        return "re.diff"
    __repr__ = __str__
class REG_COMP:
    def __init__(self):
        self.arity = 1
        self.sort = 'reg'
        self.sig = [
            'reg', 
            'reg'
        ]
        self.chainable = False
    def __str__(self):
        return "re.comp"
    __repr__ = __str__
class REG_DIFF:
    def __init__(self):
        self.arity = 2
        self.sort = 'reg'
        self.sig = [
            'reg', 'reg',
            'reg'
        ]
        self.chainable = True
    def __str__(self):
        return "re.diff"
    __repr__ = __str__
class REG_OPT:
    def __init__(self):
        self.arity = 1
        self.sort = 'reg'
        self.sig = [
            'reg',
            'reg'
        ]
        self.chainable = True
    def __str__(self):
        return "re.opt"
    __repr__ = __str__
class REG_RANGE:
    def __init__(self):
        self.arity = 1
        self.sort = 'reg'
        self.sig = [
            'str', 'str',
            'reg'
        ]
        self.chainable = True
    def __str__(self):
        return "re.range"
    __repr__ = __str__
class REG_RANGE:
    def __init__(self):
        self.arity = 1
        self.sort = 'reg'
        self.sig = [
            'str', 'str',
            'reg'
        ]
        self.chainable = True
    def __str__(self):
        return "re.range"
    __repr__ = __str__
class RE_LOOP:
    def __init__(self):
        self.arity = 2
        self.sort = 'reg'
        self.sig = [
            'reg', 'reg',
            'reg'
        ]
        self.chainable = True
    def __str__(self):
        return f"(_ re.loop {random.randint(0,10**6)} {random.randint(0,10**6)})" #a bit hacky... suggestions?
    __repr__ = __str__
class RE_POW:
    def __init__(self):
        self.arity = 1
        self.sort = 'reg'
        self.sig = [
            'reg', 
            'reg'
        ]
        self.chainable = True
    def __str__(self):
        return f"(_ re.^ {random.randint(0,10**6)})" #a bit hacky... suggestions?
    __repr__ = __str__
class IS_DIGIT:
    def __init__(self):
        self.arity = 1
        self.sort = 'str'
        self.sig = [
            'str',
            'bool'
        ]
        self.chainable = True
    def __str__(self):
        return "str.is_digit"
    __repr__ = __str__
class TO_CODE:
    def __init__(self):
        self.arity = 1
        self.sort = 'int'
        self.sig = [
            'str',
            'int'
        ]
        self.chainable = True
    def __str__(self):
        return "str.to_code"
    __repr__ = __str__
class FROM_CODE:
    def __init__(self):
        self.arity = 1
        self.sort = 'str'
        self.sig = [
            'int',
            'str'
        ]
        self.chainable = True
    def __str__(self):
        return "str.from_code"
    __repr__ = __str__
class TO_INT:
    def __init__(self):
        self.arity = 1
        self.sort = 'int'
        self.sig = [
            'str',
            'int'
        ]
        self.chainable = True
    def __str__(self):
        return "str.to_int"
    __repr__ = __str__
class FROM_INT:
    def __init__(self):
        self.arity = 1
        self.sort = 'str'
        self.sig = [
            'int',
            'str'
        ]
        self.chainable = True
    def __str__(self):
        return "str.from_int"   
    __repr__ = __str__