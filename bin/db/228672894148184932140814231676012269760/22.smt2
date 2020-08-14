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
(assert (bvuge (bvor (bvashr #xa15ff076  bv_3) (bvsub bv_3 bv_2)) (bvsmod (bvsrem #x5a3a7e24  bv_3) (bvnor #x1cbbf496  bv_0))))
(assert (xor (bvslt (bvlshr #xec48088a  #x3bdef3b2 ) (bvsrem bv_2 #xd7c089f8 )) (bvsge (bvnor #x40d75b31  bv_4) (bvsrem bv_4 #xbc5b7143 ))))
(assert (or (bvsle (bvsmod #x38f4af42  bv_2) (bvadd bv_4 #xff20855a )) (bvule (bvnand bv_4 #xc2766a23 ) (bvand bv_2 #xfa2a2896 ))))
(assert (bvult (bvxor (bvor bv_4 #xe3162549 ) (bvlshr #xda44cdde  #x2fdac9fb )) (bvsdiv (bvxor #xea571480  bv_4) (bvnor #xc734d520  bv_3))))
(assert (bvsle (bvurem (bvnand #xa73b2581  #x56f23103 ) (bvshl bv_4 bv_0)) (bvsrem (bvurem bv_3 bv_0) (bvsub bv_2 #xff78014c ))))
(check-sat)
(exit)
