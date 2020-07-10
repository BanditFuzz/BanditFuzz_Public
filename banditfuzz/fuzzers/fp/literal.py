import random
from ...parser import args as settings
class FPLiteral:
    def __init__(self):
        #make value
        rng = lambda: np.random.choice(['0','1'])
        import numpy as np
        self.sort = 'fp'

        if   settings._8:   eb,sb = 3,5
        elif settings._16:  eb,sb = 5,11
        elif settings._32:  eb,sb = 8,24
        elif settings._64:  eb,sb = 11,53
        elif settings._128: eb,sb = 15,113
        elif settings._256: eb,sb = 19,237

        self.val = '(fp '
        self.val += f'#b{rng()} '

        self.val += '#b'
        for _ in range(eb): self.val += rng()
        self.val += ' '

        self.val += '#b'
        for _ in range(sb): self.val += rng()

        self.val += ')'


    def __str__(self):
        return self.val
    __repr__ = __str__

class RoundLiteral:
    def __init__(self):
        self.val = random.choice(['RNE', 'RNA', 'RTP', 'RTN', 'RTZ'])
    def __str__(self):
        return self.val
    __repr__ = __str__