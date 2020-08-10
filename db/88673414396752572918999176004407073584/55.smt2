(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.21078038215637207
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.11464214324951172
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.18117189407348633
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
(assert (bvule (bvxor (bvnand bv_4 bv_1) (bvor bv_2 bv_3)) (bvor (bvsub bv_3 bv_2) (bvxor bv_1 bv_0))))
(assert (=> (and (bvsle #x00000098  bv_0) (bvule bv_2 bv_0)) (not (xor bool_2 bool_0))))
(assert (bvule (bvor (bvxor bv_1 bv_0) (bvand bv_2 #x0000003f )) (bvsub (bvsmod #x0000003b  bv_4) (bvurem #x00000037  #x0000007f ))))
(assert (=> (=> (or false bool_0) (bvslt #x000000ed  #x000000b9 )) (xor (bvule bv_4 #x000000d5 ) (or true true))))
(assert (bvsle (bvxor (bvsrem bv_3 bv_2) (bvand #x00000061  #x000000e1 )) (bvashr (bvor #x0000008f  bv_2) (bvadd bv_3 bv_0))))
(check-sat)
(exit)
