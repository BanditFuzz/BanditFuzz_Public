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
(assert (and (=> (bvult bv_2 bv_4) (bvsge bv_4 #xa6d033a5 )) (=> (bvuge bv_3 bv_0) (bvule bv_0 #xa12d5413 ))))
(assert (bvule (bvmul (bvnand #xb7db27ed  #xbd0bdc43 ) (bvlshr bv_0 #xe93eafca )) (bvudiv (bvsub #x0d62d0f4  bv_4) (bvurem #x89845353  bv_0))))
(assert (bvsle (bvand (bvshl #x97b4169f  bv_4) (bvsmod bv_0 #xd8c92cca )) (bvand (bvnand #xee32b723  #x512a40e0 ) (bvmul bv_0 #xafc40228 ))))
(assert (bvslt (bvashr (bvsub bv_0 bv_0) (bvand #xcb7f9778  bv_4)) (bvsdiv (bvsub #x0b0f35b0  #x67838ed3 ) (bvmul #xf37983a7  bv_3))))
(assert (bvule (bvor (bvmul #x8d38a6a4  #x6d2b88ea ) (bvsmod bv_3 bv_1)) (bvnor (bvlshr #x919d6a59  bv_2) (bvsub bv_0 #x966e0302 ))))
(check-sat)
(exit)
