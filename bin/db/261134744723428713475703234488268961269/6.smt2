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
(assert (bvsle (bvnand (bvudiv bv_4 bv_3) (bvsub #x953df480  #x9cd27fe7 )) (bvxor (bvand #x0cb7b817  bv_4) (bvsmod bv_2 #x538a3108 ))))
(assert (bvsge (bvlshr (bvlshr bv_3 #xbaf97efc ) (bvsdiv #x8d7b9914  bv_1)) (bvsub (bvsdiv bv_4 bv_1) (bvudiv #x9a87920b  bv_1))))
(assert (bvsle (bvsrem (bvor bv_2 #x5524317f ) (bvadd #x0846615a  bv_1)) (bvadd (bvsmod #xa17e51dc  bv_1) (bvxor #x89cd5de8  bv_4))))
(assert (bvsle (bvsmod (bvurem #x5ed8d85d  #xd8b00c1a ) (bvlshr #xfc1e7c55  bv_1)) (bvsrem (bvnand bv_3 bv_1) (bvxor bv_2 bv_3))))
(assert (bvsge (bvxnor (bvor bv_0 #x33ad9d3e ) (bvadd bv_3 #xbc675369 )) (bvsrem (bvxor bv_4 bv_4) (bvshl #x75572a19  bv_4))))
(check-sat)
(exit)
