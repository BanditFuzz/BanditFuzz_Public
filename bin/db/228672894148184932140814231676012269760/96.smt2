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
(assert (not (bvule (bvmul bv_1 #x482fdbc0 ) (bvand #xd6db3681  bv_4))))
(assert (not (bvult (bvand #x3fedc4ea  #x7fc2a25b ) (bvadd bv_2 #xc470dc79 ))))
(assert (bvsge (bvsrem (bvsmod #x3e5cf7ca  bv_3) (bvshl #x13d38975  bv_3)) (bvnor (bvadd #x3cb62113  bv_2) (bvurem bv_0 bv_3))))
(assert (not (bvslt (bvsrem bv_3 #xa85f2af7 ) (bvlshr #xc96a0dcd  #x5468ce7b ))))
(assert (bvsgt (bvashr (bvlshr bv_0 #x162c1f81 ) (bvsmod #xf76cf339  #x78cf19d7 )) (bvnand (bvor #x337e1af8  #x3bf859b5 ) (bvsmod bv_4 bv_0))))
(check-sat)
(exit)
