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
(assert (or (bvsgt (bvsmod #x758d103f  bv_3) (bvnor bv_0 #xe3b27924 )) (bvslt (bvsdiv bv_2 bv_2) (bvudiv #xe30fa32e  #x6b84d3bf ))))
(assert (bvule (bvxor (bvurem bv_1 bv_4) (bvlshr #xd5c74a6d  bv_0)) (bvnor (bvshl #x4a72fd67  #x07c9deb9 ) (bvsub bv_4 bv_4))))
(assert (=> (and (xor true false) (bvslt bv_0 bv_3)) (bvsle (bvnand bv_1 #x38fe3604 ) (bvxor bv_2 bv_2))))
(assert (or (or (bvslt #x0cdd9dd9  #x11fb5cf0 ) (bvuge bv_3 bv_0)) (=> (bvugt #xee4358ef  #x46adf803 ) (bvult #x7d81c659  #x296a7500 ))))
(assert (bvsgt (bvsrem (bvashr bv_0 #xecad67dd ) (bvshl bv_0 #x3e9e5384 )) (bvmul (bvxor #xd0243d50  bv_3) (bvurem #xfcffb428  #x23e28306 ))))
(check-sat)
(exit)
