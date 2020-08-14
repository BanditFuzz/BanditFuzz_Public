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
(assert (or (bvult (bvudiv bv_3 bv_3) (bvnand bv_4 #x784a25b7 )) (bvult (bvurem #x568f1b6d  bv_3) (bvxnor #x6191dd83  #xd82a021d ))))
(assert (bvult (bvurem (bvsdiv #x960923a4  bv_4) (bvlshr bv_0 bv_4)) (bvxnor (bvnand #x521d542b  #x9ebc2a78 ) (bvadd bv_3 #xe818f639 ))))
(assert (bvsle (bvurem (bvsrem bv_4 bv_1) (bvmul #x3bd275ba  #x146bd3d2 )) (bvsrem (bvashr bv_4 bv_0) (bvashr bv_0 bv_1))))
(assert (bvsgt (bvlshr (bvsdiv #xdd112dc2  bv_4) (bvurem bv_2 #x706f6b8a )) (bvor (bvor #x42eb4855  #xfb11fcf8 ) (bvsdiv #xd66ad000  bv_2))))
(assert (bvslt (bvnand (bvsmod bv_3 bv_0) (bvlshr bv_0 #x6926c124 )) (bvurem (bvsrem bv_0 bv_4) (bvsmod bv_2 bv_2))))
(check-sat)
(exit)
