(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.22941207885742188
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.2203960418701172
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.22510671615600586
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
(assert (or (bvugt (bvashr #x00000049  #x00000072 ) (bvsdiv bv_2 #x00000025 )) (bvuge (bvnor #x000000ee  bv_1) (bvsmod bv_4 bv_3))))
(assert (bvslt (bvsdiv (bvor bv_4 #x0000002f ) (bvsmod bv_3 #x00000071 )) (bvsub (bvmul #x0000003c  #x0000004d ) (bvmul bv_0 #x000000f4 ))))
(assert (bvult (bvadd (bvashr #x0000000c  bv_3) (bvor #x000000b5  bv_1)) (bvshl (bvsrem #x00000026  #x00000090 ) (bvxnor #x000000ee  bv_4))))
(assert (xor (bvsge (bvsmod bv_2 bv_4) (bvsrem bv_1 #x000000c0 )) (bvule (bvlshr #x000000a0  bv_0) (bvor bv_2 #x00000051 ))))
(assert (and (or (bvuge bv_2 #x00000060 ) (bvule bv_2 #x000000bd )) (bvsgt (bvsdiv bv_4 #x0000007e ) (bvnand bv_4 #x00000056 ))))
(check-sat)
(exit)