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
(assert (or (bvugt (bvsmod #x21e012f6  bv_0) (bvand bv_1 bv_0)) (bvsge (bvxor #x03df851d  #xb6b86f91 ) (bvashr bv_0 bv_4))))
(assert (and (xor (bvule bv_2 bv_2) (bvsgt #x1a9b83f9  #xea5c9296 )) (not (or bool_3 true))))
(assert (not (or (not bool_0) (bvsgt #x06a2d6a9  #x2e64b214 ))))
(assert (bvslt (bvor (bvudiv #x76d24ed1  bv_2) (bvsdiv bv_4 bv_1)) (bvor (bvurem #x29a3aa6e  bv_4) (bvand #x5140a11b  bv_2))))
(assert (xor (bvsge (bvor bv_1 #x2e5f16f8 ) (bvxor #x7324c6a1  bv_4)) (bvslt (bvsmod #x013505d7  bv_0) (bvor #xbd7c3d30  bv_3))))
(check-sat)
(exit)
