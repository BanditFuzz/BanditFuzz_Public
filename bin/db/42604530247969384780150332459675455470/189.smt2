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
(assert (bvsgt (bvshl (bvsdiv #x653f6940  #x2ea6ebf4 ) (bvadd #xbc594c9d  bv_3)) (bvurem (bvurem bv_0 bv_0) (bvsub #x16656b2b  bv_0))))
(assert (bvule (bvmul (bvmul bv_0 #x1bca1a1b ) (bvsdiv #xf94f7b51  bv_4)) (bvnand (bvor #xf4acb295  bv_2) (bvnor #xc33dc630  bv_4))))
(assert (xor (bvuge (bvsmod bv_0 bv_0) (bvor bv_2 #xf7bde74a )) (bvsgt (bvadd #x2f48c9cb  bv_1) (bvnand #x4740d5a9  #xc6369d81 ))))
(assert (=> (bvult (bvashr bv_1 #x7cc2ba1b ) (bvmul #xd92905ca  bv_1)) (bvsle (bvsub bv_3 #x6103f180 ) (bvor #x904d7036  #x5cd6bbdf ))))
(assert (bvsge (bvnor (bvnor #x494ddb32  #x0c06d388 ) (bvashr #x1a8ab50a  bv_1)) (bvor (bvshl #xf09cd94d  #xab8c471e ) (bvshl #xf09bb9f1  bv_1))))
(check-sat)
(exit)
