(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 2.5918633937835693
; 	answer => sat
; solvers/bitwuzla
; 	time => 0.3461768627166748
; 	answer => sat
(set-logic QF_BV)
(declare-const bool_0 Bool)
(declare-const bool_1 Bool)
(declare-const bool_2 Bool)
(declare-const bool_3 Bool)
(declare-const bool_4 Bool)
(declare-const bv_0 (_ BitVec 32))
(declare-const bv_1 (_ BitVec 32))
(declare-const bv_2 (_ BitVec 32))
(declare-const bv_3 (_ BitVec 32))
(declare-const bv_4 (_ BitVec 32))
(assert (or (bvsle (bvmul #xa63b6de9  bv_1) (bvmul bv_1 bv_1)) (bvslt (bvashr #x516606e1  #xe2555f73 ) (bvadd #x88096878  #x628a3778 ))))
(assert (bvule (bvnor (bvor bv_2 bv_1) (bvadd #x4d5d2c12  bv_0)) (bvurem (bvashr bv_3 #x439be5a8 ) (bvnor #xc6b2eb42  #xa0852ef9 ))))
(assert (not (not (bvult #x92ac4590  bv_2))))
(assert (=> (bvuge (bvsmod #x824df0b2  bv_1) (bvsmod bv_0 bv_3)) (bvult (bvashr bv_1 #x7f7a4bea ) (bvor bv_1 bv_1))))
(assert (and (and (not bool_3) (bvsge bv_4 bv_1)) (bvsge (bvsrem #x0c27e63a  #x9dc7b5cf ) (bvudiv bv_1 bv_1))))
(check-sat)
(exit)
