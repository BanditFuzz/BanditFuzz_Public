(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.09317326545715332
; 	answer => unsat
; solvers/bitwuzla.sh
; 	time => 0.08905267715454102
; 	answer => unsat
; solvers/cvc4.sh
; 	time => 0.09871530532836914
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
(assert (bvsgt (bvlshr (bvand #x43221192  bv_1) (bvshl bv_1 #x0fd6f2c3 )) (bvadd (bvsdiv bv_3 bv_3) (bvxor #x9817ae89  #x99461d67 ))))
(assert (and (bvsge (bvadd bv_2 #xae2f217d ) (bvsdiv bv_3 #x985d9750 )) (=> (bvuge #x49e4b3b6  bv_4) (xor true bool_1))))
(assert (bvugt (bvand (bvudiv bv_1 bv_2) (bvor bv_4 bv_4)) (bvsub (bvurem bv_1 #xcc6c3028 ) (bvsdiv #xf8d8dffe  bv_2))))
(assert (bvsgt (bvadd (bvmul #x4f4d7138  bv_2) (bvsdiv bv_3 #xd893256f )) (bvsrem (bvashr #xcf724e64  #x56c867f4 ) (bvadd #xea8ef306  #xfd12a509 ))))
(assert (and (and (bvslt #x565c4f85  #x0648a668 ) (bvuge #xae76ba6b  #xb4bf8b32 )) (=> (bvslt #x19b0b0ff  #x2ee3087a ) (bvuge bv_1 #x2b3e4419 ))))
(check-sat)
(exit)
