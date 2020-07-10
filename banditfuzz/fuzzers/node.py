class Node:          ##AST node class,
    def __init__(self,val):
        self.val = val             #A construct
        self.children = []          #list of child nodes, [] if leaf

    def __str__(self):
        if len(self.children) == 0: return str(self.val)
        ret = '(' + str(self.val) + ' ' 
        for child in self.children:
            ret += str(child) + ' '
        return ret[:-1] + ')'

    __repr__ = __str__