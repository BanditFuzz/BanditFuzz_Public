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
(assert (or (bvugt (bvlshr bv_0 #xc1e1dc88 ) (bvurem bv_3 bv_0)) (bvslt (bvxnor bv_3 bv_3) (bvurem bv_4 bv_0))))
(assert (or (bvsle (bvsub bv_4 #xdeef8afb ) (bvlshr #xe94d1730  #x902b03a7 )) (bvult (bvsmod #x924c8d80  bv_1) (bvsdiv bv_0 bv_4))))
(assert (bvsge (bvurem (bvsub bv_0 #x3e023f2d ) (bvsub bv_3 #x368af0bb )) (bvor (bvlshr bv_3 bv_1) (bvurem #xcb68e5ed  #x61a61c71 ))))
(assert (bvsge (bvsrem (bvxnor bv_2 #x306d8259 ) (bvand bv_0 #xafd98250 )) (bvmul (bvadd bv_1 bv_2) (bvshl #x52fe6884  #xe15bc7f5 ))))
(assert (xor (bvuge (bvsmod bv_0 #xa1392dd1 ) (bvurem bv_3 #x5df2ddf1 )) (and (bvugt bv_3 #xae663ab2 ) (and false true))))
(check-sat)
(exit)
