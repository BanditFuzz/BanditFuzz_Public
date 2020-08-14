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
(assert (bvugt (bvnand (bvshl #x645456b4  bv_4) (bvsrem #x19587c64  #xb88ec910 )) (bvsub (bvlshr bv_0 bv_2) (bvashr #x92acaee6  #x7cbbee0b ))))
(assert (=> (bvult (bvnor bv_2 bv_1) (bvurem #x33140f29  bv_3)) (=> (bvugt bv_0 #xa7c2520d ) (bvult #x08d7315b  #x18c9674f ))))
(assert (bvult (bvxor (bvnand bv_2 #x8b7cf6d7 ) (bvnand bv_4 bv_0)) (bvsub (bvsrem #x78072e35  #x1b8113a7 ) (bvlshr bv_0 #x63fc0978 ))))
(assert (and (bvsge (bvsub #x8cecece6  bv_0) (bvmul #x25e3b333  bv_2)) (bvslt (bvsub bv_2 #x611576f1 ) (bvxnor #xee6748bd  bv_2))))
(assert (bvslt (bvsdiv (bvlshr #x6cc28387  #xfddd38e7 ) (bvlshr #x0ef8791e  bv_0)) (bvsmod (bvlshr #x13c6e2fe  bv_0) (bvor bv_3 #xce082e0d ))))
(check-sat)
(exit)
