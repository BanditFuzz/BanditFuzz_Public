(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
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
(assert (xor (and (bvsgt bv_1 bv_0) (bvult #x26fc82e1  bv_1)) (not (=> bool_1 bool_4))))
(assert (=> (bvule (bvsmod #x0f183d4e  #x20b4c194 ) (bvashr bv_1 bv_0)) (and (bvugt bv_0 #xf095d498 ) (bvuge bv_2 bv_4))))
(assert (bvule (bvshl (bvudiv bv_2 bv_0) (bvsdiv #x73c686cc  #xb5c0bdf2 )) (bvurem (bvor bv_0 #xdd3e35f7 ) (bvxnor #x14b61927  bv_4))))
(assert (bvule (bvsrem (bvlshr bv_0 bv_4) (bvnand #x5c793127  #x940b2879 )) (bvshl (bvurem bv_4 bv_0) (bvsdiv bv_1 #xe51c21ae ))))
(assert (bvult (bvsrem (bvashr bv_0 bv_3) (bvand #x04dc8c3a  bv_2)) (bvsdiv (bvnor #x89953f96  #xf8b8b411 ) (bvsrem #x49dcd85b  bv_4))))
(check-sat)
(exit)
