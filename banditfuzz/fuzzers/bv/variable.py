from ..variable import Variable
class BV_Variable(Variable):
    def __init__(self,name,size):
        self.sort = 'bv'
        self.name,self.size = name,size
    def declare(self):
        return '(declare-const {} (_ BitVec {}))'.format(self.name, self.size)

    def __str__(self):
        return self.name

