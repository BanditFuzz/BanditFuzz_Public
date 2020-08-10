(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.20306992530822754
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.17043352127075195
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.21514081954956055
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
(assert (=> (xor (bvsge #x000000b4  bv_0) (bvule bv_4 bv_1)) (and (bvslt #x00000023  bv_0) (bvugt bv_4 bv_2))))
(assert (bvule (bvsub (bvlshr bv_3 #x00000028 ) (bvand #x00000013  bv_3)) (bvsmod (bvsrem #x000000ec  #x0000003c ) (bvor bv_2 bv_4))))
(assert (bvult (bvsub (bvurem #x00000073  bv_3) (bvadd #x00000060  bv_0)) (bvxnor (bvsrem bv_1 bv_3) (bvor #x0000000e  bv_1))))
(assert (bvsle (bvmul (bvurem bv_3 #x0000008e ) (bvmul bv_2 #x000000a3 )) (bvxor (bvshl #x00000016  bv_1) (bvsub bv_3 bv_0))))
(assert (=> (bvuge (bvshl #x00000069  bv_3) (bvudiv bv_1 bv_3)) (bvuge (bvlshr #x000000ad  bv_2) (bvor bv_1 bv_1))))
(check-sat)
(exit)
