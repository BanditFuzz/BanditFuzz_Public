(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.22253680229187012
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.2655158042907715
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.32027697563171387
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
(assert (bvult (bvlshr (bvsdiv #x00000049  #x0000005d ) (bvsrem bv_4 bv_2)) (bvsrem (bvshl bv_4 bv_1) (bvxor #x0000006c  bv_0))))
(assert (bvsle (bvnand (bvadd bv_1 bv_0) (bvxnor #x000000c0  #x000000b2 )) (bvurem (bvudiv bv_2 bv_4) (bvnand bv_0 bv_0))))
(assert (bvsgt (bvsdiv (bvsmod bv_0 bv_0) (bvashr bv_2 bv_2)) (bvxnor (bvnor #x0000005c  #x00000035 ) (bvsmod #x0000007a  #x00000099 ))))
(assert (bvult (bvand (bvsub bv_3 bv_0) (bvor bv_0 bv_4)) (bvurem (bvsdiv #x0000004c  #x00000073 ) (bvsrem #x000000d8  bv_4))))
(assert (xor (bvule (bvudiv bv_1 bv_1) (bvadd #x000000a6  #x00000080 )) (xor (=> true bool_3) (bvsgt #x0000007b  bv_4))))
(check-sat)
(exit)