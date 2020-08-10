(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.1957094669342041
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.19335722923278809
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.21794772148132324
; 	answer => err
(set-logic QF_BV)
(declare-const bool_0 Bool)
(declare-const bool_1 Bool)
(declare-const bool_2 Bool)
(declare-const bool_3 Bool)
(declare-const bool_4 Bool)
(declare-const bv_0 (_ BitVec 8))
(declare-const bv_1 (_ BitVec 8))
(declare-const bv_2 (_ BitVec 8))
(declare-const bv_3 (_ BitVec 8))
(declare-const bv_4 (_ BitVec 8))
(assert (bvsge (bvsrem (bvor bv_4 bv_2) (bvxnor #x00000045  #x00000097 )) (bvashr (bvand #x000000b7  bv_3) (bvudiv bv_2 #x000000b8 ))))
(assert (bvuge (bvshl (bvashr bv_3 #x000000cb ) (bvshl bv_0 #x00000093 )) (bvnor (bvsdiv #x0000003c  bv_2) (bvsdiv #x000000fc  #x0000002e ))))
(assert (bvsge (bvxor (bvnor bv_0 #x0000004d ) (bvsmod #x000000e3  bv_3)) (bvadd (bvlshr #x000000cf  #x000000bb ) (bvsmod #x00000010  #x000000bf ))))
(assert (bvule (bvashr (bvudiv #x00000025  bv_3) (bvsdiv bv_4 #x00000013 )) (bvudiv (bvxor #x000000a0  #x0000003c ) (bvlshr #x000000a9  #x00000027 ))))
(assert (xor (=> (bvslt bv_2 bv_1) (=> bool_3 bool_2)) (not (xor false true))))
(check-sat)
(exit)
