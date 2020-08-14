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
(assert (and (=> (bvsle bv_2 bv_0) (bvuge #x185e6adf  bv_4)) (or (bvule #x0f9eed6f  #xe70270cf ) (xor false false))))
(assert (bvugt (bvudiv (bvadd #xcd70cad7  #xe2c58617 ) (bvudiv bv_2 #xa7308e56 )) (bvxnor (bvadd #x4fe2d7b6  #x1d4a08d2 ) (bvlshr #xbdb5ad18  bv_4))))
(assert (bvsle (bvand (bvsmod bv_1 #x13f56a41 ) (bvnor bv_1 #xef7d902c )) (bvurem (bvsdiv #x6b457682  bv_4) (bvashr #x8cd10694  bv_2))))
(assert (bvslt (bvlshr (bvsmod bv_2 bv_2) (bvsrem bv_3 bv_0)) (bvsdiv (bvmul bv_2 #xfa5e59f7 ) (bvmul bv_2 bv_2))))
(assert (bvule (bvxor (bvsdiv #x5db359ed  #xa6889031 ) (bvnor bv_3 #x6dd20f3a )) (bvadd (bvxnor #xf66450e0  #x31b9317b ) (bvsdiv #x6f168804  #xf77a435d ))))
(check-sat)
(exit)
