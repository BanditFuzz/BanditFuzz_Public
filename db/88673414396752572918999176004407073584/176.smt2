(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.20436787605285645
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.1441798210144043
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.22332143783569336
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
(assert (bvugt (bvnand (bvadd #x000000d1  #x000000e3 ) (bvadd bv_2 #x00000051 )) (bvadd (bvsrem bv_2 #x000000b7 ) (bvand bv_4 bv_0))))
(assert (or (bvsgt (bvadd bv_4 bv_4) (bvadd #x00000091  #x0000002e )) (bvugt (bvsrem bv_4 #x00000032 ) (bvnor bv_3 #x000000ae ))))
(assert (bvslt (bvshl (bvurem #x0000004a  #x000000ca ) (bvurem bv_1 #x0000006d )) (bvsdiv (bvudiv #x000000c3  bv_3) (bvsub bv_0 #x000000f1 ))))
(assert (bvugt (bvsub (bvor #x00000045  #x0000004a ) (bvsub bv_3 #x00000041 )) (bvxnor (bvsmod bv_4 bv_2) (bvxnor bv_0 bv_4))))
(assert (bvslt (bvsrem (bvnand #x000000e3  bv_2) (bvadd #x00000069  #x0000004f )) (bvnand (bvsrem #x00000079  bv_0) (bvsdiv #x0000009b  #x000000b3 ))))
(check-sat)
(exit)
