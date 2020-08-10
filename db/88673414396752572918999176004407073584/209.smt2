(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.17927813529968262
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.1883683204650879
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.18793964385986328
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
(assert (bvuge (bvshl (bvsub bv_3 bv_3) (bvsub #x0000004c  #x000000e4 )) (bvxnor (bvxor #x00000042  #x0000002e ) (bvsub #x000000eb  bv_4))))
(assert (bvult (bvsrem (bvand bv_2 bv_1) (bvlshr #x0000006c  #x00000054 )) (bvudiv (bvxor bv_1 bv_2) (bvsrem #x000000d3  #x00000084 ))))
(assert (bvsge (bvxnor (bvsub bv_2 #x000000d3 ) (bvlshr #x000000d8  #x0000005e )) (bvsub (bvxor #x00000020  #x000000a4 ) (bvmul bv_3 bv_3))))
(assert (or (or (or true bool_2) (bvugt bv_4 bv_2)) (and (bvule bv_2 #x00000095 ) (bvsge #x00000085  bv_0))))
(assert (bvsle (bvshl (bvurem #x000000b2  bv_0) (bvsub bv_4 #x00000079 )) (bvmul (bvsub #x00000042  #x00000084 ) (bvxor bv_4 bv_0))))
(check-sat)
(exit)
