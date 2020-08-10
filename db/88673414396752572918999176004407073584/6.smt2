(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.14591073989868164
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.09828829765319824
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.18722891807556152
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
(assert (and (bvult (bvshl bv_3 #x0000008c ) (bvudiv #x000000ab  #x000000e8 )) (bvugt (bvashr #x00000083  bv_4) (bvurem #x000000d4  bv_1))))
(assert (bvsgt (bvsdiv (bvshl bv_0 bv_0) (bvmul #x00000050  #x000000fb )) (bvudiv (bvshl #x000000c8  #x0000008e ) (bvsmod bv_2 #x000000e7 ))))
(assert (bvult (bvsdiv (bvmul #x00000062  #x000000aa ) (bvand #x000000b9  bv_2)) (bvand (bvurem #x0000006f  bv_4) (bvurem bv_3 bv_0))))
(assert (=> (bvule (bvurem bv_4 bv_3) (bvnor #x000000a1  #x000000f1 )) (=> (bvslt #x00000040  bv_4) (bvsgt #x000000f8  #x000000bc ))))
(assert (and (bvsle (bvxnor bv_2 #x00000053 ) (bvnand #x0000008b  #x00000055 )) (bvugt (bvlshr #x0000003f  bv_1) (bvadd #x000000e7  bv_1))))
(check-sat)
(exit)
