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
(assert (=> (bvuge (bvadd #x8ff3f423  bv_4) (bvnor #x781718d9  bv_3)) (bvsle (bvadd bv_3 bv_0) (bvmul bv_2 bv_3))))
(assert (bvsle (bvudiv (bvsub bv_4 #xe8b87b2e ) (bvshl #xa9d607a6  #xec88c45f )) (bvxor (bvurem bv_3 bv_2) (bvshl #x297b9a43  bv_4))))
(assert (bvsge (bvsdiv (bvadd #x44bd5a4e  bv_2) (bvlshr #xa717644c  bv_2)) (bvurem (bvudiv #x20889aa0  #xcb403f9d ) (bvudiv bv_1 #x48508bee ))))
(assert (bvult (bvashr (bvshl bv_3 #x5996d97a ) (bvmul bv_3 #x6c0ded99 )) (bvashr (bvnor #x7d82a296  bv_3) (bvurem #x540c6629  #xc583d309 ))))
(assert (bvsle (bvxor (bvshl #xf920d68e  #x59cf7319 ) (bvxor #x9210b6ed  bv_0)) (bvlshr (bvlshr #x22f46c58  #x3a7905a7 ) (bvnand #x7630d00e  #x43a250f8 ))))
(check-sat)
(exit)
