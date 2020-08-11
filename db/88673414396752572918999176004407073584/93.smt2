(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.21091341972351074
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.21291470527648926
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.23356270790100098
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
(assert (bvugt (bvlshr (bvand #x00000055  bv_2) (bvor bv_1 #x00000018 )) (bvudiv (bvlshr #x00000063  bv_2) (bvnor #x00000081  bv_4))))
(assert (bvsgt (bvashr (bvand bv_2 #x00000072 ) (bvudiv #x0000007e  #x000000fc )) (bvand (bvnand #x00000063  bv_0) (bvnand #x00000065  bv_0))))
(assert (or (=> (bvult #x00000078  #x000000db ) (bvult bv_3 #x00000053 )) (bvsle (bvsrem bv_0 bv_4) (bvmul #x0000009b  bv_1))))
(assert (=> (bvsle (bvshl #x0000001f  bv_3) (bvashr bv_2 bv_0)) (and (=> false bool_0) (bvult #x0000002d  bv_1))))
(assert (bvsle (bvnand (bvsdiv bv_4 #x000000d8 ) (bvxnor bv_0 bv_3)) (bvshl (bvmul #x00000056  #x0000004f ) (bvlshr #x000000eb  #x00000020 ))))
(check-sat)
(exit)