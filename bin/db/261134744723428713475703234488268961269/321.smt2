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
(assert (=> (bvugt (bvshl bv_0 #xe0bd058d ) (bvmul #x40f12227  bv_4)) (or (bvule #xbd4a8893  #x88df4973 ) (bvuge bv_1 #x0040589d ))))
(assert (bvsge (bvmul (bvudiv bv_2 #x3fd332b6 ) (bvnand bv_2 #x91ad17de )) (bvsrem (bvand #xcbc0fbfb  #x5c88d569 ) (bvnand #xc6b07dfe  #x4cf2ee64 ))))
(assert (and (and (or false bool_1) (bvsle #xb9338299  #x1e4fee4c )) (bvsge (bvmul bv_2 bv_2) (bvand bv_2 #x95b682d5 ))))
(assert (xor (bvuge (bvsmod bv_3 bv_3) (bvsdiv #x78de812c  #xa1a22536 )) (bvult (bvnand #x1a441de8  bv_0) (bvor bv_2 #x2f659aa1 ))))
(assert (bvugt (bvashr (bvsmod bv_0 bv_2) (bvsrem bv_4 bv_3)) (bvand (bvnand #xd893d283  bv_2) (bvor bv_1 bv_1))))
(check-sat)
(exit)
