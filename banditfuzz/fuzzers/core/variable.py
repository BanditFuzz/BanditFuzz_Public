class BoolVariable:
    def __init__(self,name):
        self.name = name

    def __str__(self):
        return self.name
    __repr__ = __str__

    def declare(self):
        return f"(declare-const {self.name} Bool)"