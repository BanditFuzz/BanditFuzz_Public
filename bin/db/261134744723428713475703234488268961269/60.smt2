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
(assert (bvsge (bvor (bvxnor #xe3e943a9  #x47e82400 ) (bvsub bv_3 bv_2)) (bvlshr (bvxnor bv_0 bv_3) (bvmul #xa4282a44  bv_0))))
(assert (bvsgt (bvmul (bvand #x9d2a141c  bv_3) (bvsrem #xcacd4df4  #x64fa3f2d )) (bvnor (bvsrem bv_1 #xf3cfb5b2 ) (bvshl bv_2 #xbe41ccf1 ))))
(assert (bvslt (bvsrem (bvsrem bv_4 bv_2) (bvmul bv_2 bv_0)) (bvudiv (bvsmod bv_0 bv_4) (bvsrem #x5455477c  #xc604110d ))))
(assert (xor (or (bvuge bv_1 bv_2) (bvule bv_4 #x41ce1080 )) (and (bvsgt #xfa39ae38  bv_0) (bvslt #xaa7b8a6e  bv_3))))
(assert (bvugt (bvxnor (bvlshr bv_1 #x1680df86 ) (bvand #xde20458e  #xf00dd08f )) (bvashr (bvnor bv_2 bv_0) (bvnand bv_3 bv_0))))
(check-sat)
(exit)
