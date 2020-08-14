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
(assert (=> (not (xor true true)) (bvult (bvmul #x4b0f2247  #xa96625a1 ) (bvnand bv_2 #xf7c8b362 ))))
(assert (bvule (bvand (bvmul bv_3 #x73e7f262 ) (bvashr #xe4689326  #x5ddfd3ba )) (bvmul (bvxor #x5126d0e7  #x57903b89 ) (bvsrem #x11df09a6  bv_3))))
(assert (bvule (bvsrem (bvnand bv_0 #x1c8ac5ba ) (bvsmod bv_4 bv_1)) (bvsub (bvsmod bv_3 bv_2) (bvnand #xb25b1774  #xce8ea881 ))))
(assert (bvslt (bvshl (bvnand #x5f23cfb2  #x58710188 ) (bvxor bv_0 bv_2)) (bvmul (bvshl bv_1 bv_0) (bvsub bv_0 #x7bd45deb ))))
(assert (bvult (bvadd (bvand #x9af901a6  #x664db902 ) (bvxnor #x13e153d5  #x0f965300 )) (bvshl (bvxor #x3639bcfe  bv_3) (bvudiv bv_3 bv_0))))
(check-sat)
(exit)
