(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.20312142372131348
; 	answer => err
; solvers/bitwuzla.sh
; 	time => 0.1710214614868164
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.20583367347717285
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
(assert (=> (bvsle (bvnor #x00000031  bv_1) (bvsdiv #x00000065  #x0000004b )) (=> (bvult bv_3 #x00000025 ) (bvslt #x000000ce  bv_0))))
(assert (and (not (not bool_1)) (bvule (bvurem bv_4 bv_2) (bvxnor #x000000e0  #x0000001c ))))
(assert (bvsle (bvnand (bvor bv_4 bv_0) (bvsmod #x000000fe  #x000000ee )) (bvadd (bvashr bv_0 #x00000001 ) (bvadd bv_2 #x00000045 ))))
(assert (or (bvule (bvnor #x00000069  bv_0) (bvsrem bv_4 bv_0)) (and (bvsge #x00000051  bv_3) (bvsgt #x000000c6  bv_2))))
(assert (and (=> (=> false false) (and true bool_0)) (bvslt (bvashr bv_4 #x000000ec ) (bvnor bv_3 #x00000049 ))))
(check-sat)
(exit)