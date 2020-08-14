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
(assert (and (bvsge (bvxnor #x6c6a51d7  #x3d750454 ) (bvsrem #xec30812f  bv_0)) (bvule (bvadd #x29cb1242  #xce6be5fa ) (bvsrem bv_1 bv_0))))
(assert (bvuge (bvsub (bvlshr #xa0cc83af  bv_4) (bvxnor bv_3 bv_3)) (bvnor (bvand #x3f811a59  bv_3) (bvnand #xcfac1aa7  bv_0))))
(assert (bvule (bvshl (bvshl #xebba674d  bv_4) (bvlshr bv_0 #xc93e88a7 )) (bvxnor (bvshl bv_2 bv_0) (bvsdiv #xd58abd77  #x5e8add83 ))))
(assert (bvsle (bvmul (bvlshr #x3d5d3f39  #x74353142 ) (bvnor bv_4 bv_4)) (bvsrem (bvudiv bv_3 #xafd4e875 ) (bvor bv_3 #x0666b8c5 ))))
(assert (bvsge (bvurem (bvudiv #x2abbf4c6  bv_2) (bvxnor #xe29abb53  bv_1)) (bvor (bvsdiv #x05754263  #xb2b5f9c3 ) (bvashr #x67e99d8c  #x0638563a ))))
(check-sat)
(exit)
