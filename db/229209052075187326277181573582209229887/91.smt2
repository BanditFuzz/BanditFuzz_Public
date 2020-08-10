(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.35118889808654785
; 	answer => unsat
; solvers/bitwuzla.sh
; 	time => 0.17148232460021973
; 	answer => unsat
; solvers/cvc4.sh
; 	time => 0.09045553207397461
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
(assert (bvult (bvnand (bvsrem #x048902ed  bv_1) (bvshl bv_0 bv_0)) (bvlshr (bvshl bv_4 bv_0) (bvor bv_3 bv_0))))
(assert (bvsgt (bvxor (bvnor bv_1 bv_4) (bvlshr bv_0 #x5b65ee72 )) (bvshl (bvor bv_0 #xdc034220 ) (bvsub #x3e8b618c  #x503fa446 ))))
(assert (bvugt (bvudiv (bvmul #x8317fe3a  #xf0d1a002 ) (bvlshr #xd89202d2  #x86e9d2fb )) (bvmul (bvor bv_3 #x1e5ae632 ) (bvmul #xd4635b58  #x78551906 ))))
(assert (bvslt (bvadd (bvlshr #x2ead9577  #x093028a4 ) (bvudiv #x3cc43ce7  bv_4)) (bvashr (bvsrem bv_1 bv_3) (bvmul #xda57df05  #xa2d8ef16 ))))
(assert (xor (and (bvsle #x7c3ad318  #x4105552b ) (not bool_0)) (bvsle (bvadd #xd68108c3  bv_4) (bvsrem bv_0 #xa763ab5c ))))
(check-sat)
(exit)
