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
(assert (xor (or (bvsgt bv_4 bv_4) (bvule bv_0 bv_0)) (=> (bvult #x3cf42673  bv_0) (bvuge #x8b3ab884  bv_2))))
(assert (bvugt (bvsrem (bvudiv #x50133565  #x614706b3 ) (bvudiv bv_2 bv_2)) (bvshl (bvashr #x6abf5d76  #x508c3767 ) (bvnand #xd390fa75  #xc9eac54e ))))
(assert (bvult (bvnand (bvsub bv_1 #x59fcdf71 ) (bvashr bv_4 #x7617e1eb )) (bvlshr (bvashr #xbbdc5d75  #xe27f89c1 ) (bvudiv #x14cb28d1  bv_0))))
(assert (bvule (bvnand (bvsmod #x159677ab  #x6d0cb4e3 ) (bvlshr bv_0 bv_2)) (bvashr (bvsrem bv_2 bv_4) (bvor bv_4 bv_0))))
(assert (bvugt (bvurem (bvadd #xb3472229  #x000e4b7b ) (bvmul bv_2 #xa5a10481 )) (bvurem (bvnand bv_1 #x8bedd451 ) (bvshl #x33702b4b  bv_4))))
(check-sat)
(exit)
