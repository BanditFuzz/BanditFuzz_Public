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
(assert (bvule (bvxnor (bvurem #x92b9579b  #xca75ece3 ) (bvor bv_0 bv_0)) (bvadd (bvmul #xf95979b4  #x8fb659a5 ) (bvashr bv_1 #x1b98ac86 ))))
(assert (bvslt (bvxor (bvsdiv #x04312f59  bv_0) (bvxor #x5e81fea4  #x473f881c )) (bvxor (bvmul bv_2 bv_3) (bvashr #xc125d469  bv_3))))
(assert (bvslt (bvxnor (bvshl #x5d90c9f8  bv_4) (bvsdiv bv_3 bv_4)) (bvlshr (bvnor #xfb5df796  #xf860c474 ) (bvudiv #x2ce491f7  bv_1))))
(assert (bvule (bvnor (bvadd #x92c26d25  bv_0) (bvnand bv_2 #xe4546cf1 )) (bvudiv (bvsdiv #x4b136393  bv_1) (bvxor #xf1b191f9  #x9714bbbf ))))
(assert (bvule (bvsub (bvsub #x568cec49  bv_3) (bvashr bv_0 bv_0)) (bvand (bvashr bv_0 bv_0) (bvsub #x33c9ca20  bv_4))))
(check-sat)
(exit)
