import random
from ...parser import args as settings
import numpy as np
class BVLiteral:
    def __init__(self):

        self.sort = 'bv'
        #print(settings)

        if settings._8 is True:
            m = 8
        elif settings._16 is True:
            m = 16
        elif settings._32 is True:
            m = 32
        elif settings._64 is True:
            m = 64
        elif settings._128 is True:
            m = 128
        elif settings._256 is True:
            m = 256

        if settings.bx is 'x':

            num_of_digits = m/4


            rng = lambda: np.random.choice(['0','1', '2', '3', '4', '5', '6','7', '8', '9', 'a', 'b', 'c','d', 'e', 'f'])
            self.val = '#x'
            for _ in range(num_of_digits): self.val += rng()

        elif settings.bx is 'b':

            num_of_digits=m
            rng = lambda: np.random.choice(['0','1'])
            self.val = '#b'
            for _ in range(num_of_digits): self.val += rng()



    def __str__(self):
        return self.val
    __repr__ = __str__



