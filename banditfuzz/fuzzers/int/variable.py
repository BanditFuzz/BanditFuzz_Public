from ..variable import Variable
class IntVariable(Variable):
    def __init__(self,name):
        self.name = name
        self.sort = 'int'

    def declare(self):
        return f'(declare-const {self.name} Int)'

    def __str__(self):
        return self.name