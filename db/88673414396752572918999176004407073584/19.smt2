(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.1405930519104004
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.13486099243164062
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.1944117546081543
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
(assert (bvule (bvsmod (bvsub #x00000095  #x00000033 ) (bvsrem #x00000079  bv_1)) (bvsrem (bvashr #x000000c5  bv_3) (bvxor #x00000010  #x000000fd ))))
(assert (bvugt (bvadd (bvor #x00000018  #x00000016 ) (bvsrem #x0000001c  #x00000045 )) (bvashr (bvudiv bv_3 #x00000014 ) (bvsrem bv_3 bv_1))))
(assert (bvugt (bvxor (bvsmod bv_0 #x00000037 ) (bvor bv_4 #x000000ba )) (bvxor (bvashr bv_0 bv_1) (bvnor #x000000f0  bv_0))))
(assert (=> (bvult (bvsrem #x0000003c  #x0000005f ) (bvnand bv_4 bv_0)) (bvugt (bvand #x00000088  #x0000004f ) (bvmul #x00000073  bv_1))))
(assert (bvuge (bvsmod (bvand bv_4 #x000000eb ) (bvmul #x000000c4  bv_3)) (bvsmod (bvsmod #x000000d1  #x00000024 ) (bvnand bv_4 bv_0))))
(check-sat)
(exit)