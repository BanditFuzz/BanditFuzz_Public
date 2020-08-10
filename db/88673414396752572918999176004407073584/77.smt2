(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.2708554267883301
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.17098212242126465
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.20625877380371094
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
(assert (not (not (and true false))))
(assert (bvsge (bvxor (bvsub #x000000b5  #x00000013 ) (bvurem bv_3 bv_3)) (bvsrem (bvor #x000000c3  bv_2) (bvsmod #x000000e4  bv_1))))
(assert (bvsge (bvlshr (bvmul #x0000004a  #x000000f4 ) (bvshl #x0000005f  bv_0)) (bvxnor (bvand #x000000c7  bv_0) (bvnand #x000000db  #x00000067 ))))
(assert (bvsge (bvsub (bvurem bv_4 #x0000000b ) (bvor #x00000063  #x000000ea )) (bvor (bvlshr bv_3 bv_0) (bvor #x000000c3  #x000000c2 ))))
(assert (xor (bvugt (bvmul #x00000064  bv_1) (bvmul bv_0 #x000000b9 )) (bvugt (bvurem bv_0 #x0000008c ) (bvnand #x00000033  bv_1))))
(check-sat)
(exit)
