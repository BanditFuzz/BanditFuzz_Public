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
(assert (not (bvsgt (bvsub #xb5adb199  bv_4) (bvsrem bv_3 #x77aad00a ))))
(assert (bvule (bvurem (bvmul #x7e3d3ef3  bv_3) (bvsmod bv_2 bv_2)) (bvand (bvadd #x4190c9ac  bv_4) (bvudiv #xdd2c2d12  #xef2a5d7a ))))
(assert (bvuge (bvxnor (bvand #x416b1b66  bv_1) (bvshl #x1548aaec  bv_4)) (bvnor (bvsrem bv_1 bv_3) (bvsdiv bv_0 #x59cc1eea ))))
(assert (bvsge (bvurem (bvmul #xbdd07376  bv_2) (bvshl #x050bdced  #x734de5cd )) (bvxnor (bvshl bv_4 #x8a2939b2 ) (bvashr bv_4 #xd01e855d ))))
(assert (bvsle (bvshl (bvsub #xf0ac9331  bv_1) (bvxnor #xbb9e73d1  #xdf35f67e )) (bvurem (bvnor #x6787ad9d  #xc2ea97e3 ) (bvshl #xf756c9aa  bv_0))))
(check-sat)
(exit)
