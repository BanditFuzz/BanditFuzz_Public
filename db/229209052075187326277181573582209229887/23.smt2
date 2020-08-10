(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.14624404907226562
; 	answer => unsat
; solvers/bitwuzla.sh
; 	time => 0.09027981758117676
; 	answer => unsat
; solvers/cvc4.sh
; 	time => 0.09207010269165039
; 	answer => err
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
(assert (or (bvule (bvsrem bv_0 #xdf767d67 ) (bvnand bv_2 #x62e00841 )) (bvuge (bvashr #x0838762b  #x71c88d65 ) (bvxnor bv_0 #x7969d844 ))))
(assert (bvuge (bvnand (bvadd bv_0 bv_0) (bvurem #x83e90227  #xf74530a7 )) (bvxnor (bvurem bv_2 bv_2) (bvand bv_1 #xdbc45a0b ))))
(assert (bvult (bvadd (bvxnor #xf9a3e622  bv_0) (bvshl bv_2 bv_2)) (bvlshr (bvnand #xa3b3d707  bv_4) (bvor #x6354bf12  bv_0))))
(assert (xor (bvult (bvsdiv bv_3 #xe3bea7ac ) (bvashr #xc58022a3  #xcb7d6f13 )) (bvsgt (bvudiv #xc8c6be0b  #x798225d4 ) (bvurem #xf7414289  #x4342aa24 ))))
(assert (bvult (bvxor (bvadd #xa372e914  #x0fd240a7 ) (bvand bv_3 bv_3)) (bvnor (bvlshr bv_4 #x14512f43 ) (bvashr bv_4 #x6d1a77fb ))))
(check-sat)
(exit)