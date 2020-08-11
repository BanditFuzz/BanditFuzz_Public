(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.20345044136047363
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.1932973861694336
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.15962886810302734
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
(assert (bvsle (bvand (bvor #x000000c1  #x00000078 ) (bvurem bv_3 bv_3)) (bvsdiv (bvsdiv #x000000d7  #x00000037 ) (bvmul #x00000007  bv_4))))
(assert (bvuge (bvand (bvnor bv_1 bv_0) (bvand bv_2 bv_3)) (bvand (bvsmod #x0000003d  bv_4) (bvxnor #x000000f7  #x000000a6 ))))
(assert (bvugt (bvshl (bvsub #x00000009  bv_4) (bvudiv #x000000d6  bv_1)) (bvsrem (bvurem #x000000a2  bv_4) (bvxor #x00000052  #x000000d6 ))))
(assert (not (=> (bvult bv_3 bv_2) (not true))))
(assert (bvugt (bvmul (bvand #x000000c9  bv_1) (bvnand bv_2 #x00000063 )) (bvxor (bvxnor bv_4 bv_0) (bvnand #x00000082  #x00000041 ))))
(check-sat)
(exit)