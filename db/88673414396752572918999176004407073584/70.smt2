(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.14232921600341797
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.13125038146972656
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.14202380180358887
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
(assert (bvule (bvmul (bvshl #x00000048  #x00000053 ) (bvmul #x0000009f  #x000000d3 )) (bvashr (bvand #x00000071  #x00000032 ) (bvsdiv bv_4 #x000000d6 ))))
(assert (and (bvsle (bvashr bv_1 bv_4) (bvnand #x00000024  #x000000f9 )) (=> (bvugt #x000000b1  bv_3) (bvult bv_0 bv_0))))
(assert (bvuge (bvsrem (bvmul #x000000b4  bv_4) (bvashr bv_3 bv_0)) (bvxor (bvsdiv bv_4 #x00000053 ) (bvor #x000000b2  bv_0))))
(assert (bvult (bvsmod (bvlshr #x000000ab  bv_0) (bvsrem #x0000000e  bv_4)) (bvnor (bvsub #x00000046  bv_1) (bvlshr bv_3 bv_1))))
(assert (xor (bvugt (bvnand bv_2 bv_0) (bvadd bv_1 #x000000ce )) (bvsle (bvsrem bv_4 #x000000f4 ) (bvudiv #x000000c0  bv_3))))
(check-sat)
(exit)
