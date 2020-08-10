(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.9790077209472656
; 	answer => sat
; solvers/bitwuzla.sh
; 	time => 0.1639876365661621
; 	answer => sat
; solvers/cvc4.sh
; 	time => 0.10913538932800293
; 	answer => err
(set-logic QF_BV)
(declare-const bool_0 Bool)
(declare-const bool_1 Bool)
(declare-const bool_2 Bool)
(declare-const bool_3 Bool)
(declare-const bool_4 Bool)
(declare-const bv_0 (_ BitVec 32))
(declare-const bv_1 (_ BitVec 32))
(declare-const bv_2 (_ BitVec 32))
(declare-const bv_3 (_ BitVec 32))
(declare-const bv_4 (_ BitVec 32))
(assert (not (bvugt (bvmul #x9f964e9e  bv_1) (bvlshr #x1f38627f  #x492f6739 ))))
(assert (bvuge (bvadd (bvmul #x3872fd99  #xbe97e315 ) (bvsmod #x4a220357  #xfd56e22c )) (bvlshr (bvurem #xb9f57f3c  #x21557e50 ) (bvmul bv_4 bv_4))))
(assert (bvsle (bvshl (bvsmod bv_4 #xbe3c8c3e ) (bvmul #xc0c42295  bv_1)) (bvsub (bvsrem bv_0 #xb4b682e9 ) (bvurem #xc115f8ca  #x40618289 ))))
(assert (or (xor (and false true) (bvule bv_3 #x60f4a055 )) (bvsgt (bvashr #xc962a6da  bv_4) (bvsdiv #x901c9d8b  bv_1))))
(assert (and (bvule (bvor bv_2 bv_4) (bvor #x0b0efb85  bv_4)) (bvult (bvand bv_0 bv_4) (bvxnor #xdbb86d63  #x76a3deb0 ))))
(check-sat)
(exit)
