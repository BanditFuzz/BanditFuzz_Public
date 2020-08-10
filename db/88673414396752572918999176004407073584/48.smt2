(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.18139290809631348
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.15976500511169434
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.21085572242736816
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
(assert (bvsle (bvsdiv (bvnand bv_1 #x00000029 ) (bvurem bv_2 #x0000000f )) (bvsub (bvsub #x000000e6  #x00000060 ) (bvsmod bv_1 #x0000008d ))))
(assert (bvule (bvand (bvadd bv_1 #x000000f6 ) (bvudiv #x000000da  bv_1)) (bvadd (bvsub #x00000088  #x00000059 ) (bvudiv bv_2 bv_2))))
(assert (not (=> (xor true true) (not bool_1))))
(assert (not (or (bvuge bv_3 bv_0) (bvsle #x00000084  bv_3))))
(assert (not (not (bvugt bv_1 #x00000002 ))))
(check-sat)
(exit)
