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
(assert (bvslt (bvudiv (bvsdiv bv_0 #x440fe590 ) (bvsdiv bv_1 #xe4e41d88 )) (bvand (bvnor bv_2 #x00b69136 ) (bvmul bv_1 bv_4))))
(assert (bvugt (bvshl (bvnand #x8fe7fb0c  #xf03c8b34 ) (bvxnor bv_4 bv_3)) (bvxnor (bvmul bv_4 bv_4) (bvlshr #xc49cfb47  bv_3))))
(assert (not (bvugt (bvshl #xc6971524  #xcc67663e ) (bvudiv #x389b0e6f  #x1797647a ))))
(assert (and (bvsle (bvshl bv_2 bv_3) (bvxor #xd1f859ba  bv_3)) (bvslt (bvsdiv bv_1 bv_3) (bvshl #xaabfae0b  bv_2))))
(assert (not (bvsge (bvnand #xd6dc0833  bv_4) (bvand #x2e37fe32  bv_3))))
(check-sat)
(exit)
