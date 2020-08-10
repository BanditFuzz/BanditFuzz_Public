(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.20708703994750977
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.15336966514587402
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.220733642578125
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
(assert (xor (bvugt (bvnand #x000000d9  bv_4) (bvsrem #x000000c6  bv_0)) (not (bvsle bv_2 #x000000f0 ))))
(assert (bvsle (bvand (bvsmod bv_4 bv_0) (bvashr #x000000cd  #x00000032 )) (bvxor (bvmul #x00000044  #x000000f9 ) (bvsrem #x000000f3  bv_3))))
(assert (bvslt (bvadd (bvurem #x00000051  #x000000a0 ) (bvashr bv_4 #x00000017 )) (bvshl (bvashr bv_0 #x0000001b ) (bvmul bv_0 #x0000008e ))))
(assert (bvuge (bvashr (bvnor #x00000096  bv_4) (bvsmod #x0000008e  bv_3)) (bvlshr (bvxnor bv_1 bv_4) (bvashr #x000000be  bv_1))))
(assert (=> (bvugt (bvadd bv_4 bv_1) (bvshl #x00000088  bv_3)) (xor (or bool_2 true) (and true false))))
(check-sat)
(exit)
