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
(assert (not (bvsge (bvand #x2d73171f  bv_2) (bvand bv_4 bv_1))))
(assert (bvslt (bvsmod (bvsrem bv_2 bv_3) (bvlshr bv_3 #x9d77a665 )) (bvand (bvsub bv_0 bv_2) (bvsdiv bv_2 #xd1945f2d ))))
(assert (bvsge (bvmul (bvshl #xd1009383  bv_2) (bvnor bv_4 #x3bc71cd2 )) (bvsmod (bvsmod #xba4d0abd  bv_2) (bvsmod #xfac3e0a3  #x3c53d0eb ))))
(assert (or (bvuge (bvnor #x3da750ee  #xf632caa3 ) (bvsmod bv_4 bv_1)) (bvule (bvxor bv_1 #xdfb62688 ) (bvsdiv bv_0 bv_2))))
(assert (bvult (bvxor (bvor #x2a3b6441  bv_0) (bvnand bv_2 bv_3)) (bvnor (bvor bv_4 bv_1) (bvudiv #xf740ba76  bv_1))))
(check-sat)
(exit)
