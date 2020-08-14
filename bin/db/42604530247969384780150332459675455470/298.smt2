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
(assert (and (not (bvsge #x640cc981  #xf1f6d2b1 )) (bvsgt (bvor #xbefdd31a  bv_2) (bvnand #x92aa0233  bv_0))))
(assert (not (and (bvult bv_3 #x2e328a0f ) (bvugt #x1026c9bf  bv_1))))
(assert (bvugt (bvxor (bvnand bv_2 #x30ee38c3 ) (bvudiv #x664f874c  bv_0)) (bvadd (bvsrem #xec46838e  bv_1) (bvlshr #xc7402b94  bv_4))))
(assert (bvuge (bvudiv (bvnor #xb249ca14  bv_4) (bvsmod bv_0 bv_3)) (bvxnor (bvudiv bv_1 bv_4) (bvsub bv_2 bv_3))))
(assert (bvuge (bvxor (bvsdiv bv_3 bv_0) (bvudiv bv_1 #x70c5d3f3 )) (bvnor (bvshl #x8629b199  bv_4) (bvurem bv_1 #x35811e0e ))))
(check-sat)
(exit)
