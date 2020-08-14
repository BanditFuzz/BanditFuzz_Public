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
(assert (xor (xor (bvsge #x0f631b43  bv_2) (not false)) (bvslt (bvsub #x61954ab1  bv_3) (bvurem #xeb0a9c24  #x2d666403 ))))
(assert (=> (bvult (bvsmod bv_0 bv_3) (bvsub #x8d5836ab  bv_3)) (bvslt (bvmul bv_2 #xd967e086 ) (bvudiv bv_0 bv_2))))
(assert (xor (bvule (bvmul bv_1 bv_2) (bvor bv_2 bv_0)) (not (bvule bv_1 bv_4))))
(assert (bvult (bvsdiv (bvsub bv_2 bv_3) (bvsmod bv_3 #x438b89f2 )) (bvand (bvor #x9164b2b4  #xea62b672 ) (bvnand #x7a5c1a63  bv_2))))
(assert (or (bvsle (bvashr #xfd9edc16  bv_1) (bvmul bv_2 bv_2)) (bvsge (bvmul #xdb7ba257  #x143ea1cd ) (bvlshr #xca2ce049  #x90cf6553 ))))
(check-sat)
(exit)
