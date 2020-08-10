(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.11643338203430176
; 	answer => sat
; solvers/bitwuzla.sh
; 	time => 0.09264254570007324
; 	answer => sat
; solvers/cvc4.sh
; 	time => 0.13042140007019043
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
(assert (or (and (bvslt #xe63a7f5a  #x9a9467f1 ) (xor false true)) (bvugt (bvor bv_2 bv_4) (bvand bv_4 bv_1))))
(assert (bvsgt (bvmul (bvsub #x4e7737eb  #x4bab22e5 ) (bvadd #xfb2f1b6d  #xa380148a )) (bvsmod (bvadd #x8717a80b  bv_1) (bvshl #x24910746  #x950c0be6 ))))
(assert (bvsle (bvlshr (bvsdiv #xb777684e  #x5473bd1c ) (bvadd #x5780ce7c  bv_2)) (bvurem (bvnor bv_0 bv_3) (bvnand #x59bf05fc  bv_2))))
(assert (bvsge (bvadd (bvnand #xac57226f  bv_3) (bvor bv_3 bv_3)) (bvsmod (bvadd bv_1 #xbbd04626 ) (bvsub bv_2 bv_2))))
(assert (bvule (bvmul (bvor #x711554f1  #x3604fafe ) (bvxnor bv_2 bv_2)) (bvxor (bvashr #xbda9cf5d  bv_4) (bvlshr bv_0 #x04f62247 ))))
(check-sat)
(exit)
