import random
class IntLiteral:
    def __init__(self):
        self.sort = 'int'
        self.val = random.randint(-10**9, 10**9)
    def __str__(self):
        if self.val >= 0: return f'{self.val}'
        else: return f'(- {-self.val})'
    __repr__ = __str__
