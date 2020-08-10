(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.21098875999450684
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.15418601036071777
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.19135093688964844
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
(assert (xor (xor (=> bool_0 bool_1) (bvslt #x00000096  #x000000cc )) (xor (bvule bv_1 #x00000059 ) (xor bool_2 false))))
(assert (bvult (bvxor (bvxnor bv_1 bv_4) (bvnand bv_3 #x00000068 )) (bvsmod (bvmul #x00000010  #x00000018 ) (bvsdiv bv_0 bv_1))))
(assert (and (bvslt (bvashr #x000000cc  bv_3) (bvurem bv_2 bv_0)) (bvslt (bvnand #x00000076  #x000000b6 ) (bvxor #x0000002b  bv_1))))
(assert (or (not (bvugt bv_3 bv_0)) (bvugt (bvand #x0000006d  #x000000f7 ) (bvnand bv_0 #x000000d2 ))))
(assert (bvugt (bvnor (bvashr #x00000067  #x00000025 ) (bvxor bv_4 bv_3)) (bvnand (bvashr #x0000004e  #x000000d7 ) (bvxnor #x0000004e  bv_4))))
(check-sat)
(exit)
