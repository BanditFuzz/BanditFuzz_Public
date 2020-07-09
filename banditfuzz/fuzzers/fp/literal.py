from .. literal import Literal
class FP_Literal(Literal):
    def __init__(self,eb,sb):
        self.name,self.eb,self.sb = name,eb,sb
        self.val = '(fp '
        self.val += f'#b {random.choice(['0','1'])} '

        self.val += '#b'
        for _ in range(self.eb) self.val += random.choice(['0','1'])
        self.val += ' '

        self.val += '#b'
        for _ in range(self.sb) self.val += random.choice(['0','1'])

        self.val += ')'

    def __str__(self):
        return self.val