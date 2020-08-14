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
(assert (bvsgt (bvudiv (bvurem bv_4 bv_0) (bvurem #x1ed4a550  #xb7680114 )) (bvand (bvxor bv_1 #x7fa05e3e ) (bvadd bv_1 #x93b805c8 ))))
(assert (bvult (bvudiv (bvnor #x5654785c  bv_1) (bvashr bv_2 bv_1)) (bvurem (bvurem #x7adf98c8  #x56232c33 ) (bvurem bv_4 #xc486bba7 ))))
(assert (or (not (=> false true)) (bvsle (bvnor bv_3 #x5d8b78dd ) (bvnor bv_4 #x6335441b ))))
(assert (bvsgt (bvand (bvsdiv #x12f96714  bv_0) (bvsmod bv_3 bv_4)) (bvsrem (bvadd #x3362fb3e  bv_0) (bvxnor bv_3 #x5cb96bda ))))
(assert (not (bvsle (bvudiv bv_0 bv_2) (bvmul #xc83a9623  bv_0))))
(check-sat)
(exit)
