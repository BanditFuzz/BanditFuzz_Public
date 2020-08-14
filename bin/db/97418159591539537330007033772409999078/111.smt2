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
(assert (bvsge (bvxnor (bvadd bv_1 #x9f75f9a8 ) (bvnor #x3e217a54  bv_0)) (bvnor (bvlshr bv_1 #xb58a6e06 ) (bvor #x214b2114  bv_0))))
(assert (xor (bvule (bvurem bv_0 bv_2) (bvsdiv #xaea9536d  #xf29b775a )) (bvule (bvxnor #xde971baa  bv_0) (bvashr bv_2 bv_2))))
(assert (bvslt (bvsrem (bvxnor bv_0 bv_4) (bvnor bv_0 #xedd42e4e )) (bvxnor (bvshl bv_2 #xc1ad2211 ) (bvsmod #xbcf2c2f3  bv_3))))
(assert (and (bvsle (bvsrem #x85285323  #x34a44173 ) (bvmul #xa7ce7058  #x24bc9e49 )) (bvugt (bvsmod #xe11086a9  bv_2) (bvmul #x17283185  #x658e9a9b ))))
(assert (bvslt (bvsmod (bvor #x9746330c  #xa1fc47b1 ) (bvsdiv #x4d64561e  bv_3)) (bvmul (bvmul #x4b5b91a0  #x677d2224 ) (bvnor bv_0 #xa82d012f ))))
(check-sat)
(exit)
