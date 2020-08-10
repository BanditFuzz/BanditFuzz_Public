(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.1444380283355713
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.14939570426940918
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.18587064743041992
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
(assert (bvult (bvashr (bvashr bv_3 #x000000bf ) (bvsub bv_2 bv_3)) (bvxor (bvsub #x00000015  bv_2) (bvudiv #x00000020  bv_0))))
(assert (not (and (bvsge #x00000061  #x000000e1 ) (bvsle bv_3 #x000000c0 ))))
(assert (bvuge (bvnor (bvxor #x0000006c  bv_2) (bvand #x000000b4  #x000000bd )) (bvsub (bvadd bv_1 bv_3) (bvshl #x000000cd  bv_0))))
(assert (bvugt (bvsmod (bvnor bv_3 bv_0) (bvxor #x00000009  #x000000ae )) (bvudiv (bvsrem #x00000021  #x000000a6 ) (bvashr bv_0 bv_4))))
(assert (bvslt (bvsub (bvnand bv_0 #x00000064 ) (bvudiv #x00000036  #x000000d8 )) (bvnor (bvashr bv_4 #x000000e2 ) (bvashr bv_3 bv_4))))
(check-sat)
(exit)
