(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.19388413429260254
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.15820622444152832
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.19312500953674316
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
(assert (xor (bvsle (bvlshr #x00000083  bv_4) (bvadd bv_1 bv_1)) (bvslt (bvsdiv bv_4 #x0000005d ) (bvsmod #x00000006  #x00000083 ))))
(assert (bvsge (bvlshr (bvmul bv_2 #x0000005e ) (bvlshr bv_2 #x00000059 )) (bvsmod (bvmul bv_1 bv_1) (bvudiv bv_4 bv_0))))
(assert (or (=> (bvule bv_4 #x0000003d ) (bvsge bv_0 #x0000008d )) (bvult (bvand #x000000ea  #x000000bd ) (bvlshr #x000000a5  #x00000054 ))))
(assert (not (xor (not true) (not bool_3))))
(assert (bvsge (bvnor (bvlshr bv_1 bv_2) (bvlshr bv_0 #x0000000e )) (bvor (bvxnor #x00000004  bv_1) (bvadd #x00000091  bv_2))))
(check-sat)
(exit)
