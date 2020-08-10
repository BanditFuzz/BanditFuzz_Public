(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.10943937301635742
; 	answer => unsat
; solvers/bitwuzla.sh
; 	time => 0.0840141773223877
; 	answer => unsat
; solvers/cvc4.sh
; 	time => 0.11379885673522949
; 	answer => err
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
(assert (not (xor (bvsgt #x83e97fd5  bv_1) (and bool_1 true))))
(assert (and (bvult (bvnor #x2cf850ab  #xa5673de8 ) (bvurem #xb6f14dc6  bv_1)) (or (or bool_4 bool_0) (and false false))))
(assert (bvsge (bvxor (bvlshr #x1b8c1072  #x1a65df18 ) (bvsmod #x3d4af3d5  #xd360cf43 )) (bvashr (bvsdiv #x93a5a794  #x65cf6350 ) (bvnand bv_1 bv_3))))
(assert (bvuge (bvsrem (bvor #xbc646b49  bv_0) (bvadd #x0e8e05ea  #x0eb5d4c2 )) (bvsdiv (bvsub bv_1 bv_0) (bvshl bv_2 #x584ac111 ))))
(assert (and (xor (bvsgt #x90e1e4f1  #x65c02de2 ) (or bool_0 bool_4)) (or (bvslt #x80595735  #x610523b6 ) (bvult #x6962a97a  #x494c17f5 ))))
(check-sat)
(exit)
