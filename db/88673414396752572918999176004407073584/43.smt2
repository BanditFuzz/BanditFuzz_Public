(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.28075599670410156
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.15142488479614258
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.13804388046264648
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
(assert (bvsge (bvxnor (bvsub #x000000e9  #x0000000b ) (bvshl #x00000053  #x0000001f )) (bvsdiv (bvnor bv_2 #x000000d9 ) (bvand bv_1 #x000000b4 ))))
(assert (bvult (bvsrem (bvnand bv_3 bv_2) (bvmul bv_2 bv_0)) (bvshl (bvxor #x00000016  #x000000f0 ) (bvnor #x000000e4  bv_1))))
(assert (=> (bvslt (bvnand bv_3 bv_3) (bvxor bv_2 #x0000003b )) (not (xor bool_0 bool_2))))
(assert (bvsge (bvxnor (bvand #x00000025  bv_0) (bvsdiv #x0000007c  #x00000025 )) (bvashr (bvor #x000000e4  #x000000fb ) (bvsdiv #x000000ee  bv_2))))
(assert (bvugt (bvmul (bvsrem bv_4 bv_2) (bvand bv_3 #x000000bd )) (bvnor (bvashr bv_2 bv_0) (bvsmod bv_3 #x000000a1 ))))
(check-sat)
(exit)