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
(assert (bvult (bvxor (bvnand #x03bfc73e  #x93f1f5da ) (bvurem #xe4bcfe5b  #xc1d6d1a2 )) (bvsrem (bvlshr #x3a1446cf  bv_0) (bvshl bv_4 bv_2))))
(assert (bvule (bvshl (bvor #x42d9cded  bv_2) (bvsrem bv_0 bv_3)) (bvashr (bvor bv_1 #xdd166cb8 ) (bvashr #x6ff31e11  bv_2))))
(assert (bvsle (bvand (bvsub bv_4 #x43d5d7dc ) (bvor #x37e26a0e  bv_4)) (bvudiv (bvxnor #x916e1f7e  bv_0) (bvadd #xa70a1e11  #x0e55d3c3 ))))
(assert (or (bvsle (bvsub bv_4 bv_1) (bvxnor bv_1 #x2542a1f0 )) (bvsle (bvor #x6984997e  bv_2) (bvsrem bv_0 bv_1))))
(assert (bvule (bvurem (bvsrem bv_0 #xb139b931 ) (bvurem bv_1 #xd6d5d794 )) (bvnor (bvlshr bv_1 #x52741076 ) (bvmul #xc1d52c8d  #xb7d191b5 ))))
(check-sat)
(exit)
