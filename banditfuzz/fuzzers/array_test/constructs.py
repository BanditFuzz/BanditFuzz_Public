## /array_test/constructs


## SELECT Construct
class Arr_Select:
    def __init__(self):
        self.arity = 2
        self.sort = 'int'
        self.sig = ['arr', 'int', 'int'] ## Needs to be Dynamic

    def __str__(self):
        return "select"
    __repr__ = __str__


## STORE Construct
class Arr_Store:
    def __init__(self):
        self.arity = 3
        self.sort = 'arr'
        self.sig = ['arr', 'int', 'int', 'arr'] ## needs to be dynamic

    def __str__(self):
        return "store"
    __repr__ = __str__  
    
class EQ:
    def __init__(self):
        self.arity = 2
        self.sort = 'bool'
        self.sig = [
            'arr', 'arr',
            'bool'
        ]
        self.chainable = True
    def __str__(self):
        return "="
    __repr__ = __str__
