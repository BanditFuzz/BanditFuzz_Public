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
(assert (bvsgt (bvshl (bvashr bv_1 #x5944bd00 ) (bvor bv_2 #x2617ef2d )) (bvudiv (bvxnor #xc4456431  #xab665202 ) (bvxnor bv_0 #xb1a63614 ))))
(assert (bvule (bvlshr (bvsrem #x74961c41  bv_2) (bvsrem bv_0 #xf3ae640e )) (bvsrem (bvsmod #xf335a6a5  bv_1) (bvshl bv_4 #x41eb749b ))))
(assert (bvugt (bvsmod (bvsmod #x75b7af3f  #x06c3d661 ) (bvsrem #xab9a1c85  #x21c73c36 )) (bvadd (bvnor #x962709a1  bv_4) (bvnand #x4e0432d9  #xf6385b86 ))))
(assert (bvsgt (bvsub (bvand bv_2 #x4494aea6 ) (bvmul #xba74636f  bv_4)) (bvmul (bvashr bv_3 bv_2) (bvor bv_1 bv_1))))
(assert (bvugt (bvsmod (bvsrem #x57fd6a2c  #xbbbf69db ) (bvurem bv_1 #xb21914e0 )) (bvand (bvsmod bv_0 #xd4ca55b4 ) (bvashr #x4c2ce37d  bv_4))))
(check-sat)
(exit)
