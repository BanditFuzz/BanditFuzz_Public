class Node:          ##AST node class,
    def __init__(self,val):
        self.val = val             #A construct
        self.sort = val.sort
        self.children = []          #list of child nodes, [] if leaf

    def __str__(self):
        if len(self.children) == 0: return str(self.val)
        ret = '(' + str(self.val) + ' ' 
        for child in self.children:
            ret += str(child) + ' '
        return ret[:-1] + ')'

    def __eq__(self, other): #added to allow to check if two nodes are the same operator
        if other.sort == self.sort and other.val == self.val and other.children == self.children:
            return True
        return False

    def isLeaf(self):
        if not self.children:
            return True
        return False

    def isTarget(self, target):
        if target.val == self.val and target.sort == self.sort and target.children == self.children:
            return True
        else:
            return False

    __repr__ = __str__