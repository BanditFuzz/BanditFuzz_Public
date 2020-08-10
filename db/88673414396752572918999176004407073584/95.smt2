(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.20480656623840332
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.16124248504638672
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.26488423347473145
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
(assert (bvugt (bvsub (bvashr #x00000069  #x00000082 ) (bvlshr #x000000f5  bv_2)) (bvsmod (bvsrem #x000000c3  #x00000079 ) (bvsub #x000000aa  #x000000fb ))))
(assert (bvugt (bvsmod (bvxnor #x0000001c  #x000000dd ) (bvsdiv bv_4 bv_0)) (bvnand (bvurem #x000000ac  bv_2) (bvand #x00000062  #x000000c5 ))))
(assert (bvsgt (bvudiv (bvadd #x000000b2  #x000000c5 ) (bvxnor #x00000063  #x0000006b )) (bvxor (bvand #x000000a5  bv_4) (bvlshr bv_4 #x000000b3 ))))
(assert (or (bvslt (bvashr bv_1 #x00000089 ) (bvlshr #x0000008e  bv_2)) (bvslt (bvxor bv_2 #x00000052 ) (bvmul bv_4 bv_4))))
(assert (not (bvuge (bvsub bv_1 #x0000002e ) (bvlshr #x0000001a  #x00000080 ))))
(check-sat)
(exit)
