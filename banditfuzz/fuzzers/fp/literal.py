from sklearn.preprocessing import normalize as norm
class Literal:
    def __init__(self):
        #make value
        rng = lambda: np.random.choice(['0','1'])

        import numpy as np
        opts = (3,5),   (5,11),    (8,24),  (11,53),  (15,113),  (19,237),  (np.random.randint(2,256),   np.random.randint(2,256) )
        odds = [1,       1,         1,       1,        1,         1,         1]
        rid = np.random.choice([v for v in range(len(opts))],p=odds/np.linalg.norm(odds)**2)
        
        eb,sb = opts[rid][0], opts[rid][1]

        self.val = '(fp '
        self.val += f'#b {rng()} '

        self.val += '#b'
        for _ in range(eb): self.val += rng()
        self.val += ' '

        self.val += '#b'
        for _ in range(sb): self.val += rng()

        self.val += ')'


    def __str__(self):
        return self.val