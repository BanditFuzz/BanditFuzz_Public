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
(assert (and (bvult (bvnand bv_1 bv_3) (bvudiv bv_3 bv_3)) (not (or false false))))
(assert (bvslt (bvlshr (bvand bv_2 #xf0d32670 ) (bvlshr #x42a76ae0  #xe6286edf )) (bvsrem (bvnand #xce5e6293  bv_1) (bvor bv_4 #x6e7be5f8 ))))
(assert (bvuge (bvsub (bvand #xcfe1600b  bv_2) (bvsdiv bv_2 #xad608bbb )) (bvsrem (bvxnor #xfdaf402c  #xdd3820fb ) (bvshl bv_4 bv_4))))
(assert (bvsgt (bvshl (bvsdiv bv_1 #x55bae94b ) (bvashr bv_3 #x22c582d2 )) (bvsrem (bvurem #xeeed2c8e  bv_1) (bvlshr bv_1 #xc60ee42c ))))
(assert (bvsge (bvadd (bvlshr bv_3 #x78365b75 ) (bvsrem bv_2 bv_3)) (bvashr (bvudiv bv_2 bv_3) (bvashr bv_2 bv_4))))
(check-sat)
(exit)
