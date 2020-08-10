(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.17840170860290527
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.16457223892211914
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.22767424583435059
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
(assert (or (bvslt (bvsmod #x00000091  #x00000090 ) (bvurem #x000000fb  bv_3)) (bvsle (bvsub #x000000d7  #x000000b9 ) (bvsrem #x0000000b  bv_2))))
(assert (not (bvult (bvshl bv_4 #x000000af ) (bvxnor #x00000070  bv_1))))
(assert (bvuge (bvxor (bvnand #x00000001  #x00000003 ) (bvurem bv_1 bv_0)) (bvnand (bvmul bv_1 #x0000000c ) (bvurem #x00000053  bv_3))))
(assert (xor (not (not bool_2)) (bvsge (bvnand #x000000f4  #x00000099 ) (bvashr bv_0 bv_4))))
(assert (bvuge (bvnor (bvsdiv bv_0 bv_1) (bvurem #x0000006e  bv_4)) (bvudiv (bvudiv bv_2 #x0000004c ) (bvudiv #x000000b0  #x000000e5 ))))
(check-sat)
(exit)