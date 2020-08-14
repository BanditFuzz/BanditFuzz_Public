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
(assert (bvsle (bvudiv (bvlshr bv_1 #xde4baf60 ) (bvand bv_0 #x4820365c )) (bvadd (bvmul #x4cb3fad7  #x68ca136f ) (bvor bv_4 bv_3))))
(assert (bvsle (bvlshr (bvsmod bv_4 bv_4) (bvadd bv_1 bv_4)) (bvashr (bvshl bv_2 #xd7f0f234 ) (bvsrem #x99c29814  bv_4))))
(assert (bvsge (bvnand (bvsub #x551c6cdf  #xacd4b708 ) (bvshl bv_4 #x4c30d153 )) (bvmul (bvsmod #x4b52daad  #x970f33db ) (bvlshr bv_0 #x95a417fd ))))
(assert (or (bvult (bvadd #x418ed790  #x2aa10171 ) (bvsmod #x6d06142f  bv_2)) (bvsgt (bvor bv_3 #x330ab1af ) (bvsdiv #x5f133763  #x69c5df6c ))))
(assert (xor (bvule (bvsrem bv_2 #x5298608a ) (bvxnor #x12edc580  #x662bc2ed )) (bvsle (bvlshr bv_0 bv_3) (bvsub #x70695c7b  #xcf382848 ))))
(check-sat)
(exit)
