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
(assert (bvsge (bvadd (bvadd bv_0 #xf11adbf0 ) (bvudiv #x6bae067c  bv_1)) (bvsdiv (bvand bv_4 #x2ae300d2 ) (bvnor bv_2 bv_3))))
(assert (bvuge (bvnor (bvurem bv_0 #x12e2cf35 ) (bvnor #x8a375b8e  #xebcc2a9a )) (bvadd (bvxnor bv_2 bv_3) (bvnor #xe578336b  bv_0))))
(assert (bvsgt (bvand (bvsrem bv_4 #xfb18c742 ) (bvurem #xb2465f27  bv_1)) (bvsmod (bvsrem bv_1 #x1948eaaf ) (bvnor bv_4 bv_1))))
(assert (bvsgt (bvor (bvand bv_3 #x90328e6d ) (bvashr bv_1 #xef3cd383 )) (bvmul (bvxor #x7c66fe88  #xfbea1006 ) (bvashr bv_0 bv_2))))
(assert (bvuge (bvshl (bvshl bv_3 #xa368e2a7 ) (bvlshr bv_0 bv_0)) (bvnor (bvor #xa31bea24  bv_1) (bvudiv bv_2 bv_0))))
(check-sat)
(exit)
