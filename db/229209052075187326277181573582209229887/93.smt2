(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 1.5444247722625732
; 	answer => sat
; solvers/bitwuzla.sh
; 	time => 0.18388867378234863
; 	answer => sat
; solvers/cvc4.sh
; 	time => 0.10142827033996582
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
(assert (not (bvslt (bvadd bv_4 bv_4) (bvsdiv #x6d9daab3  bv_0))))
(assert (not (or (or bool_3 bool_2) (bvsle bv_3 #x25bcddfa ))))
(assert (bvule (bvadd (bvnor #x7a149360  bv_3) (bvsrem #xe939008c  #x3e18dc53 )) (bvsub (bvand bv_1 bv_0) (bvadd bv_4 #x78f69bd8 ))))
(assert (xor (bvsle (bvadd bv_0 #x690b0134 ) (bvlshr #x8c6f64f9  bv_1)) (bvugt (bvsrem bv_3 bv_2) (bvand bv_1 bv_4))))
(assert (bvult (bvadd (bvand #xe733864e  #xe0fb25af ) (bvmul #xa84b5df3  bv_0)) (bvand (bvurem #xeffe6e4c  #x6f020a0f ) (bvsub bv_1 #x9adc7091 ))))
(check-sat)
(exit)
