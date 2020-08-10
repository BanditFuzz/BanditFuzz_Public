(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.17669010162353516
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.14105868339538574
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.16164636611938477
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
(assert (bvsgt (bvshl (bvxor #x000000b3  bv_4) (bvxnor bv_1 bv_1)) (bvashr (bvmul bv_1 #x00000086 ) (bvlshr bv_2 #x000000da ))))
(assert (bvugt (bvsmod (bvsmod #x000000b1  #x000000d9 ) (bvnor bv_3 bv_2)) (bvshl (bvxor bv_4 #x000000c5 ) (bvnand bv_4 bv_4))))
(assert (or (not (bvslt #x00000096  bv_3)) (xor (and bool_3 bool_1) (bvuge #x0000005c  #x00000075 ))))
(assert (not (not (not bool_4))))
(assert (bvuge (bvsrem (bvurem bv_2 bv_3) (bvshl #x0000006c  #x0000001d )) (bvurem (bvsub #x000000e8  #x0000009a ) (bvxnor #x0000003d  bv_1))))
(check-sat)
(exit)
