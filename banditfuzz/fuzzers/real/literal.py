import random
class RealLiteral:
    def __init__(self):
        self.sort = 'real'
        self.val = random.uniform(-10**9, 10**9)
    def __str__(self):
        return f'{self.val}'
    __repr__ = __str__
