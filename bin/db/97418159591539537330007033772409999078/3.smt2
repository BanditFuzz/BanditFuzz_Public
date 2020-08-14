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
(assert (or (bvuge (bvsub bv_0 #xd8a4d611 ) (bvxor bv_0 bv_1)) (bvslt (bvshl bv_0 #x5c3a8c28 ) (bvsmod #xc2de100c  bv_4))))
(assert (bvsle (bvxnor (bvxor #x48ed64d7  #x1e4bda7d ) (bvurem bv_0 bv_1)) (bvurem (bvashr #x138a9d07  #xda8af453 ) (bvudiv bv_2 #x2e233195 ))))
(assert (bvugt (bvadd (bvmul #x8f2a35f1  bv_3) (bvsrem #xb8b150b4  #x52cfd419 )) (bvlshr (bvor #x0232ede3  #xa014e42d ) (bvor #xe82aef07  #x94e13697 ))))
(assert (bvsgt (bvsdiv (bvsdiv bv_3 #x4e2e4d18 ) (bvshl #x389a8c1d  bv_3)) (bvlshr (bvadd bv_1 bv_1) (bvsub bv_2 #x96b4244d ))))
(assert (bvsle (bvsdiv (bvor #xabea8d71  #xf41e759e ) (bvnor #x6aa04fe0  #xc65fe6fc )) (bvurem (bvsmod #x2d2f7c67  #x3bf2c440 ) (bvmul bv_4 bv_3))))
(check-sat)
(exit)
