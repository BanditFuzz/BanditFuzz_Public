(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.19387388229370117
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.174088716506958
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.2333822250366211
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
(assert (bvsge (bvurem (bvxor #x0000002c  bv_1) (bvmul #x000000bc  #x0000006d )) (bvxnor (bvnor bv_3 bv_3) (bvor #x0000006d  #x00000024 ))))
(assert (bvsle (bvurem (bvmul #x0000008b  #x0000002a ) (bvand #x0000002d  #x0000008b )) (bvlshr (bvsrem #x000000a4  #x00000030 ) (bvxor #x000000a4  bv_4))))
(assert (bvslt (bvashr (bvxor bv_2 #x0000004b ) (bvmul bv_3 bv_2)) (bvxnor (bvor #x000000eb  bv_0) (bvsrem #x00000002  #x0000002d ))))
(assert (or (bvugt (bvor #x0000004e  #x000000fe ) (bvadd bv_3 #x000000bd )) (and (bvuge bv_0 #x000000d4 ) (xor bool_2 bool_0))))
(assert (and (bvult (bvand #x000000f3  bv_0) (bvxnor #x00000040  #x0000002d )) (bvsgt (bvmul #x00000086  #x000000d9 ) (bvor #x000000a5  bv_3))))
(check-sat)
(exit)
