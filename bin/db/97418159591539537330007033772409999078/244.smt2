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
(assert (and (bvule (bvsdiv #xc1f743c1  #x6533ef00 ) (bvsmod #xdf1a5b15  #xdadc93c3 )) (=> (bvsge bv_2 bv_4) (bvsle bv_1 #x7a4aa11d ))))
(assert (or (bvsge (bvsub #x229234dd  #x4e79b94f ) (bvshl #x0c761225  bv_1)) (bvugt (bvsub #x05e52608  bv_1) (bvnand bv_2 #xdc59df7a ))))
(assert (bvsle (bvshl (bvsmod #xe5b9949d  bv_1) (bvashr #xa824f03b  bv_3)) (bvsmod (bvudiv #x22792a80  bv_1) (bvor #xff2ef542  #xcbed709d ))))
(assert (not (bvult (bvnand #xb072cf7b  #x0f822333 ) (bvudiv #x80595602  bv_0))))
(assert (bvule (bvxor (bvsrem #xbeacd52f  bv_3) (bvand bv_0 bv_3)) (bvsrem (bvshl bv_2 bv_3) (bvand bv_1 #x81b80e90 ))))
(check-sat)
(exit)
