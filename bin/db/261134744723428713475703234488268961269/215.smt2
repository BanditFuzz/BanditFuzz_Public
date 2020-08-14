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
(assert (not (not (bvsge #xf9d4e101  #xba782729 ))))
(assert (bvsle (bvor (bvnor bv_4 #x7352402f ) (bvand bv_4 bv_4)) (bvsrem (bvshl bv_3 bv_3) (bvsrem #xc407c50f  #x93ed9ccb ))))
(assert (bvsge (bvsub (bvsub bv_3 bv_3) (bvand #xaae26631  #x33032e1c )) (bvxor (bvnor bv_4 bv_0) (bvsdiv #x4d2bc02e  #x34cc99dc ))))
(assert (=> (bvslt (bvmul bv_1 bv_2) (bvsmod bv_3 #xf86571b3 )) (bvsle (bvsub #x00d51816  #xb1cc6276 ) (bvand #x6af79f3e  bv_3))))
(assert (not (bvult (bvsdiv #x26480396  #x75c8dc79 ) (bvmul bv_4 #xa10dedc9 ))))
(check-sat)
(exit)
