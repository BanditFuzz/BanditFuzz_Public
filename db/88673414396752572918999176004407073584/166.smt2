(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.17306876182556152
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.10302448272705078
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.16255760192871094
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
(assert (not (bvslt (bvashr #x00000021  bv_1) (bvsmod bv_3 bv_2))))
(assert (bvugt (bvashr (bvnand bv_1 bv_0) (bvashr #x000000ca  bv_0)) (bvor (bvlshr #x0000003b  bv_1) (bvsmod bv_4 bv_0))))
(assert (=> (not (or bool_0 bool_3)) (bvsle (bvadd #x000000e5  #x00000071 ) (bvsmod #x0000000e  bv_4))))
(assert (bvsle (bvsrem (bvand #x00000073  #x00000031 ) (bvashr bv_4 bv_2)) (bvor (bvlshr bv_2 #x00000062 ) (bvashr bv_1 #x0000001f ))))
(assert (or (bvsgt (bvnand bv_0 #x00000029 ) (bvashr bv_4 #x00000077 )) (=> (bvsgt bv_3 bv_1) (xor bool_0 false))))
(check-sat)
(exit)
