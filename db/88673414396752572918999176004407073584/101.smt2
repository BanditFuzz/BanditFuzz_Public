(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.1902906894683838
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.1493370532989502
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.24879860877990723
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
(assert (or (and (and bool_1 bool_4) (bvsge bv_1 bv_0)) (bvslt (bvxor bv_2 bv_4) (bvxor bv_0 bv_3))))
(assert (not (not (or bool_2 bool_0))))
(assert (bvugt (bvnor (bvsmod #x00000053  bv_2) (bvor #x00000042  bv_1)) (bvashr (bvsmod #x000000a2  #x00000055 ) (bvsdiv bv_0 bv_0))))
(assert (bvugt (bvsmod (bvshl bv_0 bv_3) (bvand #x0000003e  #x00000025 )) (bvxor (bvashr bv_4 bv_2) (bvlshr #x00000005  #x000000ef ))))
(assert (bvuge (bvor (bvsmod #x00000004  #x0000001c ) (bvsrem #x00000063  bv_0)) (bvxnor (bvor bv_2 bv_3) (bvor bv_1 #x00000097 ))))
(check-sat)
(exit)