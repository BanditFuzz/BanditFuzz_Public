(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.18014883995056152
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.13226723670959473
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.21922087669372559
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
(assert (=> (bvuge (bvsdiv bv_3 bv_2) (bvnand bv_0 #x000000af )) (and (bvsgt #x000000b2  bv_0) (bvule #x000000bb  #x00000038 ))))
(assert (and (not (bvsgt #x0000008b  bv_2)) (bvsle (bvsrem bv_3 bv_1) (bvudiv bv_4 bv_1))))
(assert (bvule (bvadd (bvadd #x000000a2  bv_3) (bvor #x00000059  bv_4)) (bvsrem (bvsdiv bv_2 #x00000089 ) (bvsmod bv_1 #x000000fd ))))
(assert (bvsgt (bvlshr (bvadd bv_1 bv_2) (bvand #x0000003a  #x000000b3 )) (bvshl (bvnand bv_1 #x000000e9 ) (bvurem bv_1 #x00000026 ))))
(assert (bvsle (bvor (bvmul #x00000008  bv_3) (bvxor #x000000bb  bv_1)) (bvnor (bvxor #x0000007d  #x00000069 ) (bvadd #x00000066  #x000000b0 ))))
(check-sat)
(exit)
