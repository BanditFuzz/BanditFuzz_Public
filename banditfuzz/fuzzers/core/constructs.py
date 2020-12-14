class NOT:
    def __init__(self):
        self.arity = 1
        self.sort = 'bool'
        self.sig = [
            'bool',
            'bool'
        ]
        self.chainable = False
    def __str__(self):
        return "not"
    __repr__ = __str__

class IMPL:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'bool', 'bool',
            'bool'
        ]
        self.chainable = True
    def __str__(self):
        return "=>"
    __repr__ = __str__

class AND:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'bool', 'bool',
            'bool'
        ]
        self.chainable = True
    def __str__(self):
        return "and"
    __repr__ = __str__

class OR:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'bool', 'bool',
            'bool'
        ]
        self.chainable = True
    def __str__(self):
        return "or"
    __repr__ = __str__

class XOR:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'bool', 'bool',
            'bool'
        ]
        self.chainable = True
    def __str__(self):
        return "xor"
    __repr__ = __str__

# class EQ:
#     def __init__(self):
#         self.arity = 2
#         self.sort = 'bool'
#         self.sig = [
#             'any', 'any',
#             'bool'
#         ]
#         self.chainable = True
#     def __str__(self):
#         return "xor"
#     __repr__ = __str__

