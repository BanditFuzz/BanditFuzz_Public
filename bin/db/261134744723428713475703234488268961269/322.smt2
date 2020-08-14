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
(assert (bvslt (bvxor (bvmul #x128c7b0d  bv_4) (bvsmod bv_3 #x28d239d7 )) (bvxnor (bvsub #xf5ac6962  bv_4) (bvand bv_0 #xa9deaa77 ))))
(assert (bvule (bvor (bvsub #x26c7b620  #x0fd58cb9 ) (bvurem #xd54ae9c2  #xc08675a7 )) (bvadd (bvmul bv_3 #x0e5dfede ) (bvand #x2f0148ba  bv_0))))
(assert (not (or (not bool_2) (not bool_3))))
(assert (bvsle (bvand (bvsmod bv_4 #xf723cb15 ) (bvsmod #x6941cbad  bv_1)) (bvnand (bvadd #x9f43c92e  #x18253ee8 ) (bvudiv #x1a419b6c  #xecc85ddd ))))
(assert (not (bvugt (bvxor bv_0 #x684f2362 ) (bvmul #x5e2dacd1  bv_2))))
(check-sat)
(exit)
