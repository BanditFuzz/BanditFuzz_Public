(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
(set-logic QF_BV)
(declare-const bool_0 Bool)
(declare-const bool_1 Bool)
(declare-const bool_2 Bool)
(declare-const bool_3 Bool)
(declare-const bool_4 Bool)
(declare-const bv_0 (_ BitVec 32))
(declare-const bv_1 (_ BitVec 32))
(declare-const bv_2 (_ BitVec 32))
(declare-const bv_3 (_ BitVec 32))
(declare-const bv_4 (_ BitVec 32))
(assert (bvuge (bvsrem (bvnor bv_1 bv_1) (bvsub bv_2 #xb6a9c983 )) (bvxnor (bvor #x02e74f80  #xf2a64f96 ) (bvnand #x407b2475  bv_4))))
(assert (and (bvsgt (bvnand bv_2 bv_2) (bvudiv bv_1 #x7d041a1b )) (=> (bvugt bv_3 #x3a945a2b ) (bvult bv_3 bv_1))))
(assert (bvuge (bvxnor (bvsdiv #xe44611e2  #xc8af79f6 ) (bvashr #xb96be361  #xf816728e )) (bvsmod (bvashr #x4ce2dff1  #x20ea0d16 ) (bvmul #xbf098392  #x7c1fa22e ))))
(assert (bvult (bvudiv (bvxnor #xc63b2785  bv_1) (bvadd bv_1 #x960e7076 )) (bvudiv (bvudiv bv_4 #x195ed545 ) (bvashr #xe01ece78  #x45ebe59c ))))
(assert (bvugt (bvnor (bvashr #x3113c1c5  bv_3) (bvsdiv bv_2 #xe1831630 )) (bvshl (bvsrem #x6dbc6aae  bv_1) (bvsmod #x85cd6687  #x7db45ee5 ))))
(check-sat)
(exit)
