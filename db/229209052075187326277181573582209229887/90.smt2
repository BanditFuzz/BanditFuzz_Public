(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 1.1431899070739746
; 	answer => sat
; solvers/bitwuzla.sh
; 	time => 0.4589195251464844
; 	answer => sat
; solvers/cvc4.sh
; 	time => 0.0941011905670166
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
(assert (bvult (bvmul (bvsmod #xde691f8f  bv_0) (bvsrem bv_2 #xc9e42be1 )) (bvmul (bvnor bv_3 bv_2) (bvmul bv_2 #xbbf9e5e4 ))))
(assert (bvule (bvadd (bvlshr bv_1 bv_3) (bvadd #x697a6269  #x27e245c2 )) (bvor (bvurem #x0efdadee  bv_2) (bvsub bv_1 #x2d9817d9 ))))
(assert (bvsge (bvnor (bvsub #xdcefe1cc  bv_0) (bvmul bv_2 #xb4d8115b )) (bvand (bvlshr #x298e0aed  #xe843ef52 ) (bvurem bv_3 bv_2))))
(assert (=> (=> (bvsle #x6d6e4787  #xf76c92c8 ) (bvslt bv_4 #xc856cdf8 )) (bvule (bvsdiv bv_2 bv_0) (bvlshr bv_3 bv_4))))
(assert (or (bvuge (bvxnor bv_0 bv_2) (bvshl #xa362016a  #x0e17ac2e )) (bvugt (bvurem bv_0 #x3f0d2e18 ) (bvsdiv #xd0b95fa3  bv_1))))
(check-sat)
(exit)
