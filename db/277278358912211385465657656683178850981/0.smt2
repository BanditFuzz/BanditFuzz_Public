(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.1349337100982666
; 	answer => unsat
; solvers/bitwuzla
; 	time => 0.10499978065490723
; 	answer => unsat
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
(assert (and (bvsge (bvor #xd3e6cdad  #x8f045386 ) (bvlshr #xd418f06c  #x13a1333a )) (bvuge (bvashr bv_2 bv_2) (bvudiv bv_1 bv_2))))
(assert (bvsge (bvsmod (bvadd bv_0 #x6035d731 ) (bvudiv bv_3 bv_3)) (bvsrem (bvand #xbfc5e6d4  #x787c70ac ) (bvnand #xf3ab94e4  bv_2))))
(assert (bvugt (bvxnor (bvsmod #xba2760c4  bv_1) (bvurem #xc6d5ea51  bv_4)) (bvand (bvsub #x5fcf2e0f  bv_4) (bvlshr #x851f6b43  #x59de8032 ))))
(assert (xor (not (or false bool_1)) (bvugt (bvnor #xd5df9174  bv_0) (bvxor #x8ed4ded6  bv_2))))
(assert (bvuge (bvor (bvashr #x92d3f6d8  bv_1) (bvsdiv #xc8956e40  bv_2)) (bvurem (bvashr #x2a7bae28  #x16667da5 ) (bvnand #x31eb7c26  bv_3))))
(check-sat)
(exit)