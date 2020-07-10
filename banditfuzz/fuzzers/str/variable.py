from ..variable import Variable
class StrVariable(Variable):
    def __init__(self,name):
        self.sort = 'str'
        self.name = name
    def __str__(self):
        return self.name
    __repr__ = __str__

    def declare(self):
        return f"(declare-const {self.name} String)"


## apparantly this is not a thing

# class RegExVariable:
#     def __init__(self,name):
#         self.name = name

#     def __str__(self):
#         return self.name
#     __repr__ = __str__

#     def declare(self):
#         return f"(declare-const {self.name} (RegEx (Seq String)))"