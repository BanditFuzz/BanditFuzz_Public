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
(assert (xor (bvsle (bvudiv #xff2d97ee  bv_3) (bvxor #x0cbe40b2  #x27d2f942 )) (bvsgt (bvnor #x0b15a9d1  #xd134798a ) (bvor #x05212e00  #x0ef0c5e9 ))))
(assert (xor (xor (bvule #xd4cae066  #xe4638527 ) (bvuge #xa62d07d9  #x1992b9de )) (bvslt (bvsrem bv_2 #xc86d49d1 ) (bvadd bv_4 bv_4))))
(assert (bvuge (bvudiv (bvudiv #x61c5e89a  #x488fc77a ) (bvor bv_4 bv_4)) (bvshl (bvurem bv_4 #xdeb91420 ) (bvxor #x28418904  bv_3))))
(assert (bvsle (bvurem (bvshl #xe2c94d32  bv_4) (bvsdiv bv_3 bv_4)) (bvsmod (bvsdiv #x2841f69d  bv_2) (bvsrem bv_1 #xc4de8ca8 ))))
(assert (bvult (bvsmod (bvashr #x19cc81c7  bv_2) (bvsdiv #x8423f94e  bv_4)) (bvshl (bvxnor #x4dbfa1bd  bv_0) (bvshl #x0bf5820e  #xf88ad1d5 ))))
(check-sat)
(exit)
