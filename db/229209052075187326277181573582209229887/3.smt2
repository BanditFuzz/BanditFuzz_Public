(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.0872044563293457
; 	answer => unsat
; solvers/bitwuzla.sh
; 	time => 0.06851387023925781
; 	answer => unsat
; solvers/cvc4.sh
; 	time => 0.08616185188293457
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
(assert (or (xor (bvsle #x5c2134db  bv_2) (bvsgt bv_0 #x556bc6ac )) (and (xor true true) (bvsle #x6c31149f  bv_2))))
(assert (bvsge (bvshl (bvadd #x6f07f05b  #xa377e90e ) (bvlshr bv_4 #xb3d8f6ae )) (bvadd (bvnor bv_3 bv_0) (bvlshr bv_4 #xb27479b7 ))))
(assert (bvult (bvsmod (bvshl #xfaf077e3  #x9e4c3bb0 ) (bvshl #xa4ef4dab  #x8b1a974d )) (bvand (bvlshr #xc526dd40  #x41a50a3a ) (bvlshr #x370e9396  #x6bc2b599 ))))
(assert (not (bvsgt (bvudiv bv_1 #x2abdd520 ) (bvurem bv_3 bv_1))))
(assert (bvslt (bvnand (bvor bv_4 bv_1) (bvor bv_0 bv_1)) (bvlshr (bvnor #x4cace00a  bv_2) (bvand bv_0 #x16688f43 ))))
(check-sat)
(exit)
