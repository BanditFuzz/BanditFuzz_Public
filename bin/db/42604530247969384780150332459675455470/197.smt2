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
(assert (=> (xor (bvule bv_0 bv_0) (bvslt #x886ef145  #xfd2f307d )) (bvsle (bvsrem #x281bf31f  #x49e4f0be ) (bvxnor bv_0 #xe9ed2fa9 ))))
(assert (=> (bvult (bvsrem #x09ccff4d  bv_4) (bvor #xb83bd512  bv_4)) (xor (bvule #x1b715a5e  #x2659f873 ) (and bool_0 bool_0))))
(assert (not (bvsle (bvsub bv_2 bv_2) (bvlshr #xee561ca0  #xb19f7597 ))))
(assert (bvuge (bvmul (bvshl #xdf4ee7e8  #x4ccd6411 ) (bvurem bv_4 #x107a9fa7 )) (bvadd (bvxor #x186279a8  #xc7b1235c ) (bvudiv bv_3 #xb1133aef ))))
(assert (bvuge (bvsmod (bvxnor bv_4 bv_1) (bvsmod bv_4 bv_2)) (bvxnor (bvor #x98457f4d  #x6b0069b0 ) (bvnand #x33f47547  #x79bd5902 ))))
(check-sat)
(exit)
