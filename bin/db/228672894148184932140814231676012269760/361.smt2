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
(assert (or (bvult (bvsub #x012c80ba  bv_0) (bvashr bv_0 #x329bb583 )) (xor (or bool_1 false) (bvule #x1ccbdbf2  bv_4))))
(assert (bvugt (bvashr (bvnand #xe5f645ee  #xccbfe706 ) (bvxnor #xee221601  bv_4)) (bvnand (bvmul bv_0 #xbf791a55 ) (bvxnor bv_4 #x4bfc2e85 ))))
(assert (bvult (bvxnor (bvadd bv_0 bv_1) (bvor bv_4 bv_2)) (bvand (bvsmod #x31218195  bv_1) (bvsrem bv_4 bv_2))))
(assert (bvugt (bvsdiv (bvsdiv bv_2 bv_4) (bvxor #xe4bd493b  bv_0)) (bvnor (bvlshr bv_3 #x0c5c4ca9 ) (bvor #xaa328352  #xbc05a643 ))))
(assert (bvslt (bvshl (bvsrem bv_0 #x7bd764b9 ) (bvashr bv_4 bv_0)) (bvadd (bvshl #x4c32c6f9  bv_3) (bvmul bv_2 #xfd497be9 ))))
(check-sat)
(exit)
