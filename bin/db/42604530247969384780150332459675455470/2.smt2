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
(assert (not (or (bvugt bv_4 #x291f775a ) (and bool_4 true))))
(assert (bvuge (bvsdiv (bvxnor #x26bd4528  #xadeede54 ) (bvsmod bv_1 #x2d8ae170 )) (bvnand (bvlshr #xefa39afe  bv_2) (bvor #x97bd5242  #x54a2679b ))))
(assert (and (bvuge (bvsrem #xfbccb0d5  bv_3) (bvlshr bv_4 bv_4)) (bvult (bvudiv #x97a2d282  #xe3673754 ) (bvnand bv_2 bv_0))))
(assert (not (bvuge (bvand #x5f2f5c75  #x36d7201b ) (bvudiv bv_3 bv_3))))
(assert (bvslt (bvand (bvnand bv_3 #xfaf86767 ) (bvand bv_1 bv_0)) (bvxnor (bvsmod bv_0 bv_4) (bvashr bv_4 #x04c9230b ))))
(check-sat)
(exit)
