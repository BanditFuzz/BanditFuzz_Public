class BoolLiteral:
    def __init__(self):
        self.val = random.choice(['true', 'false'])
    def __str__(self):
        return self.val
    __repr__ = __str__