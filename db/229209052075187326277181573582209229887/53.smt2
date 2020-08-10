(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.10208749771118164
; 	answer => unsat
; solvers/bitwuzla.sh
; 	time => 0.07616233825683594
; 	answer => unsat
; solvers/cvc4.sh
; 	time => 0.10411262512207031
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
(assert (bvult (bvsdiv (bvlshr #xc7d898bf  bv_4) (bvsub #x85454b85  #xf42cd730 )) (bvand (bvxor bv_4 #x54a3ca2a ) (bvurem bv_3 bv_3))))
(assert (bvuge (bvlshr (bvnor #xdad2b19f  bv_4) (bvor bv_3 #xf109cb1a )) (bvnor (bvmul #x844ac0f3  bv_0) (bvsrem #x51ff10ce  bv_4))))
(assert (bvsle (bvashr (bvand bv_0 bv_1) (bvurem #x54e4910e  #x0c0c0197 )) (bvashr (bvsdiv bv_3 #xc6140e9e ) (bvsub bv_4 #x0d225a0a ))))
(assert (bvslt (bvand (bvshl bv_4 #xfd98413a ) (bvshl #x68dcbf9b  #x3f69c6d9 )) (bvsub (bvshl #x70b0b398  #xc5c22434 ) (bvsub bv_3 bv_3))))
(assert (or (bvuge (bvsrem #xf68ff61b  #x9c0d0ee2 ) (bvmul #x86c0efac  #x2e11c3bf )) (bvult (bvsmod bv_0 #xd8cb291f ) (bvmul bv_2 bv_4))))
(check-sat)
(exit)
