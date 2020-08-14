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
(assert (bvsge (bvsrem (bvsmod #xf8a2b994  bv_4) (bvshl bv_4 #x8b814950 )) (bvsrem (bvxor bv_3 #xe5991925 ) (bvadd bv_4 #xd31c4b2f ))))
(assert (bvult (bvsub (bvsub #x386715ae  #x3138c37b ) (bvsub #x84c5964e  bv_4)) (bvsrem (bvashr #x7efd018c  #xb1ab3026 ) (bvlshr #x2a99b45d  #x9455ffa8 ))))
(assert (or (bvsgt (bvsdiv bv_3 bv_0) (bvxor bv_3 bv_1)) (bvugt (bvashr bv_1 #xbdd3f1c1 ) (bvsmod bv_2 #x7d02eee4 ))))
(assert (bvule (bvnand (bvxnor #xde82e4ea  bv_4) (bvand bv_1 #x5bdb1ba5 )) (bvnand (bvnand #x8de25ba8  #x63b9fdeb ) (bvnand #x44fea8a8  bv_1))))
(assert (bvslt (bvadd (bvadd #x5cf4a203  #x010d8ac4 ) (bvnand #x89b7e52e  bv_3)) (bvand (bvudiv #xb74bc66a  #x84e60d65 ) (bvadd #xcc9f052f  bv_4))))
(check-sat)
(exit)
