(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.313687801361084
; 	answer => sat
; solvers/bitwuzla.sh
; 	time => 0.25031447410583496
; 	answer => sat
; solvers/cvc4.sh
; 	time => 0.10973525047302246
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
(assert (bvugt (bvsrem (bvmul bv_1 #x9fc23b36 ) (bvmul #xa1efa65e  bv_0)) (bvnor (bvxnor #xa1769c49  bv_3) (bvxnor bv_3 bv_0))))
(assert (xor (or (bvslt bv_4 bv_2) (bvugt bv_4 bv_3)) (bvule (bvashr #x36f9a3d4  bv_2) (bvnor bv_4 bv_0))))
(assert (bvsle (bvlshr (bvsdiv #x13d78258  bv_2) (bvmul bv_1 #x89038428 )) (bvand (bvmul #x86090be0  #x36f2aae7 ) (bvxor #x3a7d3787  #x63de4c60 ))))
(assert (bvsge (bvsub (bvurem #x0e3ba4c9  bv_3) (bvsdiv #xd9403243  #x6f919705 )) (bvshl (bvmul bv_1 #x763583b8 ) (bvurem #x9377ed65  #x1214f992 ))))
(assert (not (bvuge (bvashr #xd1b46e41  bv_3) (bvsrem bv_0 #x1dc0c39b ))))
(check-sat)
(exit)