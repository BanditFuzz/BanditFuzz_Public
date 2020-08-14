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
(assert (or (or (not true) (not true)) (bvule (bvashr #x3dd85f68  #xe5c6ae30 ) (bvxor bv_1 bv_1))))
(assert (bvsge (bvsdiv (bvshl #x9d142f20  #xb0a92861 ) (bvurem bv_0 bv_4)) (bvsrem (bvand bv_3 #x3e6075a9 ) (bvmul #x9304a12c  #x57c84df7 ))))
(assert (bvsgt (bvlshr (bvlshr #xf719f1bc  bv_4) (bvsrem #x3985589e  bv_4)) (bvsub (bvashr bv_1 #xc338597a ) (bvlshr #x28334e04  bv_0))))
(assert (bvsge (bvxor (bvadd #xb1c72a0e  #x61376a08 ) (bvudiv bv_2 #x57cc26b1 )) (bvor (bvlshr #x7e2a2512  bv_3) (bvand bv_1 #x80ff8f5e ))))
(assert (xor (bvsge (bvmul #x7d6d4299  #x0790a090 ) (bvsdiv bv_4 #x278464ad )) (bvuge (bvnand bv_0 #xa13e77b0 ) (bvsmod bv_4 bv_2))))
(check-sat)
(exit)
