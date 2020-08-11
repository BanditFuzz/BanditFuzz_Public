(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.14920353889465332
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.11635184288024902
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.2084968090057373
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
(assert (xor (bvslt (bvsdiv bv_4 bv_2) (bvnor #x00000022  #x000000b0 )) (bvsle (bvudiv #x0000005f  #x0000009c ) (bvurem #x000000da  bv_3))))
(assert (bvugt (bvurem (bvnor #x000000b7  #x000000d9 ) (bvxor #x000000c3  bv_0)) (bvashr (bvxnor #x00000095  bv_0) (bvadd bv_2 bv_4))))
(assert (xor (bvuge (bvand bv_1 #x000000d3 ) (bvsmod #x0000003d  bv_3)) (bvsge (bvshl #x0000001d  #x0000006a ) (bvashr bv_2 bv_1))))
(assert (bvule (bvmul (bvsdiv #x000000cb  bv_3) (bvxor #x0000001c  bv_0)) (bvashr (bvlshr bv_1 bv_2) (bvor #x0000008a  #x00000036 ))))
(assert (bvult (bvsrem (bvnor bv_1 #x0000005a ) (bvsmod #x0000004f  bv_3)) (bvor (bvsrem #x00000008  bv_3) (bvsmod bv_2 bv_2))))
(check-sat)
(exit)