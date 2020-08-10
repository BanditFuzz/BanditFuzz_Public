(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.1788802146911621
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.18786001205444336
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.21622085571289062
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
(assert (bvsle (bvshl (bvlshr #x000000b2  bv_0) (bvsdiv #x000000f6  #x000000da )) (bvxor (bvashr #x000000a2  #x0000008d ) (bvsdiv #x00000033  bv_1))))
(assert (bvsle (bvadd (bvsub bv_0 #x00000012 ) (bvxor #x0000008f  bv_3)) (bvor (bvor bv_0 #x0000005d ) (bvsmod bv_4 #x0000008a ))))
(assert (bvult (bvadd (bvudiv bv_1 #x0000007c ) (bvor bv_2 bv_0)) (bvxnor (bvnand bv_4 #x000000ab ) (bvsub #x000000b6  bv_1))))
(assert (bvsle (bvnor (bvshl #x00000059  bv_2) (bvxor bv_0 bv_0)) (bvnand (bvxnor #x000000a2  bv_2) (bvshl #x000000b5  bv_2))))
(assert (bvugt (bvnand (bvxnor #x0000006f  #x00000069 ) (bvnor #x000000f5  #x00000037 )) (bvurem (bvxor bv_4 bv_2) (bvnor bv_3 bv_3))))
(check-sat)
(exit)
