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
(assert (=> (bvslt (bvor #xb09c6661  #x55e19d42 ) (bvand bv_1 #xfa2f92ec )) (xor (or bool_4 false) (=> false true))))
(assert (xor (bvsle (bvurem #xbb431f2c  bv_4) (bvudiv bv_2 #x41c7e9fb )) (=> (bvsle #x44876bd2  #xaf5db126 ) (xor bool_2 false))))
(assert (bvsge (bvashr (bvsmod #xf0ba7bcf  bv_1) (bvmul bv_4 #x8557d602 )) (bvxnor (bvshl #x77cc1aec  #xe2885b53 ) (bvsub bv_2 bv_1))))
(assert (and (bvugt (bvurem #x53b0284d  #x1b4b8760 ) (bvlshr #x49ed3b63  #x77d9fff6 )) (and (bvslt #x8e706cdc  #x5cc31dff ) (or bool_4 bool_1))))
(assert (bvslt (bvand (bvxnor #xea50d461  bv_0) (bvsmod #x2cecc431  bv_1)) (bvshl (bvlshr #x422edff9  bv_3) (bvsrem #xcf52c9ae  #x4060a339 ))))
(check-sat)
(exit)
