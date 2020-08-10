(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.5036027431488037
; 	answer => sat
; solvers/bitwuzla.sh
; 	time => 0.32082509994506836
; 	answer => sat
; solvers/cvc4.sh
; 	time => 0.1397411823272705
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
(assert (bvslt (bvnand (bvxnor #x9e02d8e5  bv_0) (bvurem #xadf8cfe5  bv_2)) (bvsrem (bvadd bv_1 #xa407bba4 ) (bvadd bv_1 bv_3))))
(assert (bvugt (bvudiv (bvadd bv_4 bv_1) (bvor bv_0 bv_1)) (bvnand (bvsrem #xa1ae1312  bv_3) (bvor bv_0 bv_1))))
(assert (or (=> (=> bool_0 true) (not true)) (=> (xor false false) (bvugt #xcc38bf2a  #xd2769c6c ))))
(assert (bvult (bvnor (bvnand #x67fa4383  bv_3) (bvashr bv_1 bv_2)) (bvsub (bvor #x2cada078  bv_2) (bvurem bv_1 bv_0))))
(assert (xor (and (bvult #x61399af4  bv_2) (bvsgt #xc5e385d6  #xf0248306 )) (xor (bvslt bv_2 #x08ae97a8 ) (bvugt #xe94f1e0b  bv_0))))
(check-sat)
(exit)