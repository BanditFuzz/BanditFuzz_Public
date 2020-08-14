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
(assert (bvsgt (bvadd (bvadd #x5d9b30be  #x43b8cd06 ) (bvsdiv bv_3 #x3786624c )) (bvlshr (bvurem bv_4 bv_2) (bvurem bv_4 #xb1a07f68 ))))
(assert (bvsle (bvnand (bvurem bv_4 #x3d5cc210 ) (bvashr bv_1 bv_2)) (bvsdiv (bvurem #x432c8944  #x01f8c7b7 ) (bvashr #x6cfb5bd7  #x097913fe ))))
(assert (bvuge (bvor (bvshl #xdaee2cf0  bv_2) (bvadd #xb169a520  #xe1d4ad76 )) (bvnor (bvsub #x12ed6ccd  #x4419bb97 ) (bvashr bv_4 bv_1))))
(assert (bvslt (bvshl (bvsub bv_1 bv_4) (bvlshr bv_1 bv_4)) (bvxor (bvshl #xcbc4a928  bv_1) (bvxnor bv_1 #x706e464d ))))
(assert (or (not (bvsle bv_2 bv_2)) (bvslt (bvlshr bv_3 #x924a82b6 ) (bvand #xa0cec00e  #xca995de8 ))))
(check-sat)
(exit)
