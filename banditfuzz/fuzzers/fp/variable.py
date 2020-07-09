from ..variable import Variable
class FP_Variable(Variable):
    def __init__(self,name,eb,sb):
        self.name,self.eb,self.sb = name,eb,sb
    def declare(self):
        return f'(declare-const {self.name} (_ FloatingPoint {self.eb} {self.sb}))'

    def __str__(self):
        return self.name