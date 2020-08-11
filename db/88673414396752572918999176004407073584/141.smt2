(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.1669936180114746
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.17453646659851074
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.2062389850616455
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
(assert (bvsle (bvor (bvor #x00000091  #x000000a3 ) (bvadd #x00000072  #x00000091 )) (bvudiv (bvsub #x000000ae  bv_3) (bvadd #x000000a0  #x00000007 ))))
(assert (and (or (bvuge #x0000006c  bv_0) (bvsgt bv_1 bv_2)) (not (bvsgt bv_0 #x00000002 ))))
(assert (bvult (bvudiv (bvsdiv bv_2 #x000000a7 ) (bvudiv bv_4 #x000000c9 )) (bvsrem (bvadd bv_2 bv_2) (bvor bv_1 bv_4))))
(assert (bvsle (bvnor (bvsrem #x00000095  bv_4) (bvlshr bv_0 #x000000d8 )) (bvnand (bvsrem bv_4 #x00000047 ) (bvand bv_0 bv_2))))
(assert (=> (not (xor bool_1 false)) (bvsgt (bvor bv_2 #x0000006e ) (bvashr bv_3 #x000000df ))))
(check-sat)
(exit)