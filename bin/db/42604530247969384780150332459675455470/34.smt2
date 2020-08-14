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
(assert (xor (bvsgt (bvnor bv_1 bv_4) (bvxor bv_0 bv_0)) (bvule (bvor #xcbaa3690  bv_2) (bvnor bv_3 #xbb42f91a ))))
(assert (and (bvsge (bvxnor #x7f51cdff  #x98864b4e ) (bvsmod #x9950de4f  #x894c9461 )) (or (bvult #x375151c6  bv_4) (=> bool_3 false))))
(assert (xor (bvsgt (bvnor bv_3 #xedee8019 ) (bvsmod #xb6a1c9c7  #xe497e2fb )) (bvuge (bvsrem #xee5f0d85  #x20cb0055 ) (bvxor bv_1 #x50c9293b ))))
(assert (bvult (bvxor (bvsub bv_2 bv_3) (bvashr bv_2 #xd127d002 )) (bvnor (bvudiv #x5a2e3758  #x1437f6f1 ) (bvor bv_2 bv_2))))
(assert (bvsle (bvnand (bvlshr #xfe7a6b3b  #x3afeeb21 ) (bvurem bv_3 bv_4)) (bvor (bvxnor bv_1 #x8b6c0ea7 ) (bvsub #xe931494d  #xf5f674ec ))))
(check-sat)
(exit)
