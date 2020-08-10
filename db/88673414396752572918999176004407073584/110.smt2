(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.2275385856628418
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.19335222244262695
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.22133493423461914
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
(assert (bvuge (bvmul (bvshl bv_0 #x00000047 ) (bvudiv bv_0 #x0000004a )) (bvlshr (bvxor #x00000055  #x000000f5 ) (bvsdiv bv_3 bv_0))))
(assert (bvuge (bvsdiv (bvand #x000000bc  bv_3) (bvlshr bv_2 #x0000004b )) (bvsdiv (bvsrem bv_2 #x000000ca ) (bvshl #x00000031  #x000000bc ))))
(assert (=> (xor (xor true bool_2) (bvule #x000000b1  bv_4)) (bvugt (bvnand bv_1 bv_3) (bvashr bv_1 #x000000c5 ))))
(assert (bvule (bvudiv (bvudiv #x000000fd  bv_2) (bvurem bv_3 bv_1)) (bvadd (bvmul bv_4 bv_0) (bvnor bv_4 #x0000004c ))))
(assert (not (or (bvult #x000000df  #x0000000b ) (bvugt bv_0 bv_4))))
(check-sat)
(exit)
