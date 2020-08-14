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
(assert (bvsle (bvsub (bvsmod bv_0 #x9514c726 ) (bvnand bv_0 bv_1)) (bvand (bvashr bv_4 #x83742f67 ) (bvsub #x2db023e2  bv_4))))
(assert (not (and (bvsge #xcfae4cf2  #x3af8cf4a ) (bvsgt #xfc24051c  #xeddb6b11 ))))
(assert (=> (=> (=> true bool_4) (bvsgt bv_1 #x9efd7ae3 )) (bvslt (bvshl bv_2 bv_1) (bvnand bv_1 bv_3))))
(assert (=> (bvugt (bvlshr bv_1 bv_2) (bvlshr #x6f952a8c  bv_2)) (=> (bvule bv_0 #x233d987d ) (bvugt #xb268cf57  bv_0))))
(assert (bvsgt (bvurem (bvsrem #x1f9c09bc  #x597bd56a ) (bvxor bv_2 #x177f56b9 )) (bvlshr (bvurem bv_3 bv_0) (bvand bv_0 bv_4))))
(check-sat)
(exit)
