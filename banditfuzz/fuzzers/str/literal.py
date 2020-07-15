import random, unicodedata, string

class StrLiteral:
    def __init__(self):
        self.n = random.randint(0,10**3)
        self.val = ''
        self.sort = 'str'
        for _ in range(self.n): self.val += random.choice(string.ascii_letters + string.digits)

    def __str__(self):
        return f'"{self.val}"'
    __repr__ = __str__


class RegExLiteral:
    def __init__(self):
        self.n = random.randint(0,10**3)
        self.sort = 'reg'
        self.lit = StrLiteral() 
    def __str__(self):
        return f'(str.to.re {self.lit})'
    __repr__ = __str__
