import random
import numpy as np
from ...parser import args as settings

class BVLiteral:


    def __init__(self):
        rng = lambda: np.random.choice(['0','1'])
        self.sort = "bv"
        if settings._8:
            size = 8
        elif settings._16:
            size = 16
        elif settings._32:
            size = 32
        elif settings._64:
            size = 64
        elif settings._128:
            size = 128
        elif settings._256:
            size = 256

        self.val = '#x'
        binaryVal = ''
        for _ in range(size): binaryVal += rng()

        self.val += hex(int(binaryVal,2))[2:].zfill(int(size/4))
        self.val += ' '

    def __str__(self):
        return self.val

    #need a method to set literal value, see floating point rng. Likley you'll just need one value for raw length
    __repr__ = __str__
