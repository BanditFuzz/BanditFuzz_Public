(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.16614127159118652
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.1577930450439453
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.21101665496826172
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
(assert (not (bvuge (bvsrem #x00000011  #x00000092 ) (bvlshr bv_3 #x000000ac ))))
(assert (not (bvule (bvnand bv_0 bv_4) (bvshl #x00000017  #x00000097 ))))
(assert (bvule (bvsmod (bvadd bv_0 bv_0) (bvmul #x00000044  #x000000ce )) (bvlshr (bvor #x00000060  bv_4) (bvsmod bv_3 bv_1))))
(assert (xor (=> (bvult #x00000014  #x000000a9 ) (bvuge bv_3 #x0000006f )) (bvugt (bvand #x00000022  #x000000ed ) (bvnor #x000000b2  bv_2))))
(assert (bvult (bvxor (bvxnor #x00000089  bv_3) (bvsub #x000000d4  bv_4)) (bvshl (bvshl #x000000c1  #x00000056 ) (bvand bv_0 bv_4))))
(check-sat)
(exit)
