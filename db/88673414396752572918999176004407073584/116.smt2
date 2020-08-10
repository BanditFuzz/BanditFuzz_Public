(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.2113652229309082
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.16462254524230957
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.27980804443359375
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
(assert (or (not (bvsge #x000000ef  #x00000073 )) (bvslt (bvmul #x00000063  bv_3) (bvlshr bv_3 bv_4))))
(assert (not (bvsle (bvshl #x0000008a  #x000000e7 ) (bvsrem #x00000006  bv_3))))
(assert (and (bvsgt (bvmul bv_0 bv_0) (bvnand #x00000065  #x00000074 )) (bvslt (bvsub #x000000b6  bv_3) (bvurem #x00000083  #x00000076 ))))
(assert (bvule (bvashr (bvurem bv_3 bv_0) (bvadd #x0000006b  #x000000b1 )) (bvor (bvnand #x0000004a  #x00000084 ) (bvxnor bv_3 #x00000042 ))))
(assert (bvuge (bvshl (bvxnor #x00000067  bv_1) (bvsdiv #x000000d6  #x000000cb )) (bvnand (bvudiv #x000000d6  bv_2) (bvsrem #x0000001e  #x00000005 ))))
(check-sat)
(exit)
