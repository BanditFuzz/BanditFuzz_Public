(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.24161839485168457
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.14985108375549316
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.1991422176361084
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
(assert (bvsge (bvxor (bvand bv_1 bv_3) (bvand #x000000f2  bv_2)) (bvsmod (bvmul #x00000064  #x000000e7 ) (bvsub bv_2 #x0000005a ))))
(assert (and (bvuge (bvlshr bv_2 bv_2) (bvnor bv_0 bv_0)) (bvule (bvnand #x00000012  #x00000056 ) (bvor bv_0 #x000000ee ))))
(assert (and (not (and bool_1 bool_2)) (bvslt (bvshl #x00000072  #x000000ec ) (bvadd bv_2 #x000000e0 ))))
(assert (xor (bvslt (bvnand #x0000003c  #x0000007e ) (bvudiv bv_1 bv_3)) (or (bvsle bv_4 #x00000001 ) (or bool_0 bool_4))))
(assert (bvsle (bvadd (bvashr bv_3 bv_4) (bvor #x000000bc  bv_2)) (bvnand (bvashr #x0000007a  #x0000005a ) (bvxor #x00000053  #x00000034 ))))
(check-sat)
(exit)