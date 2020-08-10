(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.18616938591003418
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.15834403038024902
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.2380053997039795
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
(assert (bvule (bvor (bvand #x00000024  #x00000019 ) (bvnand #x000000a9  bv_4)) (bvor (bvand #x000000f4  #x000000f8 ) (bvlshr #x0000008c  #x0000004c ))))
(assert (or (or (bvugt bv_0 bv_1) (bvugt bv_3 #x000000c1 )) (bvuge (bvsub bv_2 bv_4) (bvsub #x000000b4  #x0000003b ))))
(assert (=> (bvsgt (bvnor #x0000002b  #x000000ba ) (bvand #x000000ad  #x000000b6 )) (bvsgt (bvand #x0000006d  #x000000e7 ) (bvnand bv_3 #x00000078 ))))
(assert (bvsle (bvashr (bvsmod bv_4 #x00000052 ) (bvadd bv_2 bv_4)) (bvnand (bvshl bv_2 bv_2) (bvashr bv_1 #x00000017 ))))
(assert (bvsge (bvsmod (bvurem bv_4 bv_0) (bvashr bv_4 #x00000080 )) (bvlshr (bvsdiv #x00000069  bv_4) (bvsmod #x00000058  bv_0))))
(check-sat)
(exit)
