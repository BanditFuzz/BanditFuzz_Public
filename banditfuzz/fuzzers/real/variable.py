from ..variable import Variable
class RealVariable(Variable):
    def __init__(self,name):
        self.name = name
        self.sort = 'real'
    def declare(self):
        return f'(declare-const {self.name} Real)'
    def __str__(self):
        return self.name