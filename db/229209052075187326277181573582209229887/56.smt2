(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.11469554901123047
; 	answer => unsat
; solvers/bitwuzla.sh
; 	time => 0.07304072380065918
; 	answer => unsat
; solvers/cvc4.sh
; 	time => 0.10045623779296875
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
(assert (bvugt (bvand (bvand #xbd22fbcb  #x6fca7927 ) (bvsrem #x5c7d5236  bv_4)) (bvnor (bvurem #x68d20b0c  #xb16b139a ) (bvsub bv_1 bv_3))))
(assert (bvsle (bvnand (bvnand bv_2 #xf02985d7 ) (bvshl #x1e1e4d5a  #x0074ee4e )) (bvxor (bvsdiv bv_2 bv_4) (bvsrem bv_2 #x1a82cda6 ))))
(assert (bvsgt (bvor (bvurem #xa2844615  bv_2) (bvudiv #x3a13a51e  #x3eb782e8 )) (bvmul (bvsrem bv_3 #x091df466 ) (bvsdiv bv_2 #xcc67e5fd ))))
(assert (=> (bvsge (bvsdiv bv_2 #xf3c6a091 ) (bvlshr #xbd5e4be2  #x3684a4ee )) (xor (bvule #x982ce8f4  bv_1) (xor bool_2 bool_1))))
(assert (not (bvslt (bvor #x981474ff  #xcd55603e ) (bvsdiv #xe1ef469c  #x07446448 ))))
(check-sat)
(exit)
