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
(assert (bvsgt (bvxnor (bvnor #x6d34ef29  bv_3) (bvadd bv_1 #x1d9fb7ed )) (bvlshr (bvxnor bv_0 #x68ce08d7 ) (bvshl bv_0 bv_1))))
(assert (not (and (bvule bv_0 #xed553415 ) (not false))))
(assert (xor (bvuge (bvxnor bv_3 #x2d4788e6 ) (bvashr #xfb1d85b1  bv_3)) (and (xor false bool_0) (bvult #x23a4f7b3  bv_1))))
(assert (bvult (bvlshr (bvsub bv_4 #x43a204c9 ) (bvsrem bv_3 #x54b1b2b0 )) (bvmul (bvxor #x89f776f4  #xed2ccce6 ) (bvlshr bv_0 #xeb30aca4 ))))
(assert (bvult (bvsdiv (bvand bv_0 #xc44a7497 ) (bvlshr bv_4 #xf4cf6106 )) (bvxor (bvsdiv bv_1 bv_1) (bvmul bv_0 bv_1))))
(check-sat)
(exit)
