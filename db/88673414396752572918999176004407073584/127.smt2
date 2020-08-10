(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.19710707664489746
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.16196393966674805
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.18642044067382812
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
(assert (=> (=> (bvsle bv_3 #x000000fa ) (bvuge bv_3 bv_0)) (bvsgt (bvshl bv_3 #x0000004b ) (bvsub bv_4 #x000000b8 ))))
(assert (=> (bvuge (bvxnor #x0000002b  #x000000d0 ) (bvsdiv #x000000bb  bv_4)) (bvslt (bvnor #x00000027  #x00000063 ) (bvsrem #x00000057  bv_4))))
(assert (bvugt (bvnand (bvashr bv_3 bv_3) (bvsrem bv_0 bv_2)) (bvor (bvlshr bv_0 #x00000051 ) (bvnor #x00000067  #x000000b8 ))))
(assert (bvugt (bvashr (bvxor bv_1 #x0000007b ) (bvudiv bv_3 #x00000000 )) (bvnor (bvsrem #x0000001a  bv_2) (bvlshr #x000000f6  bv_0))))
(assert (or (xor (bvuge #x0000001c  #x00000007 ) (bvsge bv_3 bv_0)) (bvsgt (bvshl bv_4 bv_1) (bvsmod #x000000d1  bv_1))))
(check-sat)
(exit)
