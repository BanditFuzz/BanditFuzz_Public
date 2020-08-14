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
(assert (bvult (bvxnor (bvashr #x90c7a2d9  bv_4) (bvnand bv_2 #xc8f81233 )) (bvnand (bvashr #xc3c66734  #x5d4996f7 ) (bvadd bv_2 #x8befb19c ))))
(assert (and (bvsle (bvurem #xfb699148  #x2f63d12a ) (bvnand bv_4 bv_0)) (bvsle (bvmul bv_0 #xe62eac10 ) (bvlshr bv_1 bv_0))))
(assert (bvuge (bvudiv (bvsub #xc965a7df  #x87d677df ) (bvurem #xaf95b706  bv_4)) (bvadd (bvnor #xd81f6b76  #x3ddbf9c0 ) (bvmul bv_4 bv_0))))
(assert (bvsge (bvudiv (bvnand #xbbc8ad12  #x6bafbe93 ) (bvnor bv_1 bv_1)) (bvashr (bvor bv_1 #x1eb66595 ) (bvshl bv_3 bv_3))))
(assert (bvuge (bvnor (bvsmod bv_0 #x723f466c ) (bvudiv bv_2 bv_3)) (bvsub (bvnand bv_1 bv_0) (bvxnor #x6953d9cc  bv_2))))
(check-sat)
(exit)
