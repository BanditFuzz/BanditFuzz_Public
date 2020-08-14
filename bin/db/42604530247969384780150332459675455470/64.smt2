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
(assert (bvsge (bvnand (bvurem #xa9527e39  #x11757bf1 ) (bvxor #x6ad726f0  bv_3)) (bvmul (bvnand #xed5eea1d  #x8afbbd24 ) (bvand #xb9ea7930  #x22350527 ))))
(assert (=> (xor (bvuge #x1e113a48  bv_1) (bvult bv_4 bv_2)) (bvsgt (bvnand #xeb225757  bv_4) (bvlshr #xbba68815  bv_4))))
(assert (and (bvule (bvxor #x0adecb32  #x7ccc92e5 ) (bvand #xafa7c4b5  #xe1bfad99 )) (bvugt (bvsmod bv_2 #x5348f2bd ) (bvlshr #xea869676  #x6cec3646 ))))
(assert (bvule (bvor (bvnor #x519b18b4  #x781fba43 ) (bvnand #xf47401a6  #x97c79fd5 )) (bvxor (bvand bv_0 #x559420c3 ) (bvsdiv bv_1 bv_2))))
(assert (bvugt (bvurem (bvsdiv bv_0 #x202791cc ) (bvurem bv_3 #xc888bc1d )) (bvudiv (bvadd #x17383461  bv_2) (bvxor #x96d96ebc  #x6f216238 ))))
(check-sat)
(exit)
