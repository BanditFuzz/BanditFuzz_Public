import random
class IntLiteral:
    def __init__(self):
        self.val = random.randint(-10**9, 10**9)
    def __str__(self):
        return f'"{self.val}"'
    __repr__ = __str__
