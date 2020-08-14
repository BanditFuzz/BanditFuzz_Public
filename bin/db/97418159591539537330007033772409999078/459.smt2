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
(assert (not (bvsge (bvshl bv_3 #x6ddb5c24 ) (bvsdiv #xcb6db79a  bv_3))))
(assert (bvslt (bvxor (bvnand bv_0 bv_1) (bvudiv #x74acafae  bv_3)) (bvurem (bvxnor #xaaee8a4b  bv_4) (bvxor bv_1 #xb4127413 ))))
(assert (bvule (bvor (bvsdiv #x8c8a872f  bv_2) (bvor bv_0 #xa231a387 )) (bvmul (bvsrem bv_3 #x2186f171 ) (bvudiv bv_1 bv_3))))
(assert (bvule (bvurem (bvurem bv_1 bv_0) (bvudiv #x499af7d0  #xdbcf5808 )) (bvxnor (bvxnor bv_1 #x9c21046f ) (bvand #x008765ac  bv_2))))
(assert (bvuge (bvsrem (bvsrem bv_4 #x8c445759 ) (bvmul bv_0 #x267a4fe7 )) (bvashr (bvsrem bv_4 #x63844b23 ) (bvlshr bv_2 bv_0))))
(check-sat)
(exit)
