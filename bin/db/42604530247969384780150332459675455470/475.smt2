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
(assert (bvult (bvsdiv (bvurem bv_2 bv_4) (bvmul bv_0 #xb3d86f3b )) (bvor (bvadd bv_0 bv_2) (bvsmod #x59aba93c  #x62e08368 ))))
(assert (xor (bvsge (bvsdiv bv_3 bv_1) (bvand bv_2 bv_4)) (and (or true false) (bvslt #x922010ed  #x5ee4debf ))))
(assert (bvsgt (bvmul (bvsdiv #x081c34a5  #xec0eeefb ) (bvnand #x3e623ff4  #x51d2568d )) (bvudiv (bvashr bv_3 #x04ba3764 ) (bvmul bv_2 #xa549544c ))))
(assert (bvsge (bvnor (bvurem #x94d8b5da  bv_3) (bvsmod #xfa1bf958  bv_1)) (bvxnor (bvsmod bv_3 bv_2) (bvshl #x7d81fbce  #x0bef5415 ))))
(assert (bvuge (bvsrem (bvlshr #xc03576cb  bv_0) (bvlshr #x720a7713  bv_3)) (bvand (bvsmod #x3c6a2859  bv_0) (bvshl bv_3 bv_1))))
(check-sat)
(exit)
