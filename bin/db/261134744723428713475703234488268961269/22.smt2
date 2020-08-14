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
(assert (bvuge (bvor (bvmul #xc9fe0202  #x59a9ed4d ) (bvnand #xcae2ffa5  bv_0)) (bvadd (bvadd bv_2 bv_3) (bvadd bv_2 bv_3))))
(assert (bvslt (bvsrem (bvnand bv_1 #x7c0f735a ) (bvor bv_3 #x16ba7b9b )) (bvsmod (bvxnor #xca3fea46  #xe59bd88a ) (bvxnor bv_2 #xedfac1ac ))))
(assert (bvslt (bvxor (bvadd bv_4 #xcfc7e769 ) (bvashr bv_4 #x4edb1f5c )) (bvsub (bvshl bv_3 #x93355d22 ) (bvand #xbcdbf4d9  bv_0))))
(assert (not (bvsle (bvurem #x348b1076  bv_0) (bvudiv #x9ef9f6b5  bv_1))))
(assert (xor (bvugt (bvand #x9c7b8b09  bv_0) (bvmul #x64f52da5  bv_1)) (bvule (bvand #xf3aae0dc  bv_3) (bvand #x0e75debb  bv_3))))
(check-sat)
(exit)
