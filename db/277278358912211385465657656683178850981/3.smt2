(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.27337026596069336
; 	answer => unsat
; solvers/bitwuzla
; 	time => 0.796093225479126
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
(assert (bvult (bvshl (bvlshr #x2df0108c  bv_3) (bvmul #x4d15c040  bv_0)) (bvsmod (bvudiv #xdf158fcf  #x816d110b ) (bvsmod #x31edbec9  bv_0))))
(assert (bvsge (bvurem (bvmul bv_2 #x894e80be ) (bvnor #x5afaadcc  bv_2)) (bvshl (bvmul bv_4 #x3ac73d38 ) (bvsrem #xb6519354  #xa4f4efa9 ))))
(assert (=> (bvsle (bvadd #xce8f1e4c  bv_3) (bvadd #x6d87f005  #xed7ddbe8 )) (and (not true) (bvsle #x031979a7  #x763b3bc1 ))))
(assert (bvult (bvadd (bvadd #xb4107047  #xfd051c84 ) (bvnor #x7af9e045  #xd966f52f )) (bvand (bvurem #x037ae2e8  bv_2) (bvxor bv_1 bv_3))))
(assert (bvule (bvshl (bvudiv bv_2 #xd6fbab1d ) (bvsub bv_1 #xca504ae1 )) (bvxnor (bvsmod #x2d02eb82  bv_4) (bvudiv #xc6b3bf28  #x9418b8e2 ))))
(check-sat)
(exit)