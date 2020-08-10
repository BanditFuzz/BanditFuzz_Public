(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.13959026336669922
; 	answer => unsat
; solvers/bitwuzla
; 	time => 0.09578108787536621
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
(assert (bvsgt (bvsmod (bvxnor bv_1 bv_2) (bvudiv #x3cbdc6a5  bv_0)) (bvlshr (bvsrem bv_4 bv_0) (bvxor bv_0 #xa6c8f37b ))))
(assert (=> (or (bvslt #xd1b7bec0  #x95092a0d ) (not true)) (and (bvsle #x1268e1e0  #x9cfe460f ) (and true true))))
(assert (bvsge (bvsdiv (bvxor #x0afa0c38  #xeefad93a ) (bvnor #x2b2880c7  bv_2)) (bvsub (bvadd bv_0 #xddcb2193 ) (bvurem bv_4 bv_1))))
(assert (or (or (bvugt #x8488e2ad  #x39794841 ) (bvslt #xe155cbbc  bv_3)) (=> (bvslt #x8c072029  bv_2) (bvsgt bv_0 bv_2))))
(assert (and (or (not true) (bvugt #x6f7d21dd  #xec6500e5 )) (bvsgt (bvand bv_1 #x47afdaf8 ) (bvadd bv_2 bv_4))))
(check-sat)
(exit)