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
(assert (bvugt (bvor (bvshl #x229779d9  #xa08597b2 ) (bvadd #x206d1d37  #x9a755a3d )) (bvnand (bvsrem bv_3 bv_3) (bvand #x3af2d5f5  #x74386811 ))))
(assert (and (bvsge (bvnand bv_4 bv_4) (bvshl bv_3 bv_4)) (bvsgt (bvnand bv_4 bv_2) (bvsmod bv_3 #xae753575 ))))
(assert (bvult (bvnand (bvxor bv_2 bv_3) (bvsrem #x73910577  bv_2)) (bvadd (bvshl #x8b4bf9cf  #x2705343a ) (bvadd #x9e6bd21c  #x62d5aa44 ))))
(assert (bvsle (bvxnor (bvudiv bv_0 bv_4) (bvurem #xde5d1293  bv_3)) (bvlshr (bvor #xec21853e  #xa5fb6268 ) (bvxnor #x92302fcb  bv_4))))
(assert (bvsge (bvand (bvadd #xf7c4563f  bv_2) (bvadd bv_2 bv_4)) (bvlshr (bvsrem #xc57c45a6  #xfe9102c5 ) (bvmul bv_2 bv_2))))
(check-sat)
(exit)
