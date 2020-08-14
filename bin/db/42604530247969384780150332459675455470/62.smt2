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
(assert (bvslt (bvor (bvashr bv_3 bv_1) (bvadd #x1dec0201  bv_2)) (bvand (bvsrem bv_3 bv_0) (bvsub bv_1 bv_0))))
(assert (bvult (bvxnor (bvxor #x6c9e81c6  bv_3) (bvurem #x5ecfead5  bv_0)) (bvmul (bvand #xb5ade9e1  #x3c3eefe7 ) (bvlshr #x6127fa90  #xb5a76148 ))))
(assert (bvsge (bvand (bvudiv bv_0 #xaddc9c5d ) (bvxnor bv_0 bv_0)) (bvand (bvsrem #xe64adef1  #x667a3318 ) (bvxor bv_2 #xebc790ad ))))
(assert (bvule (bvxnor (bvsmod #xd62130f9  bv_3) (bvlshr #x35eb3b88  bv_0)) (bvxor (bvand bv_4 #x5c644531 ) (bvnand bv_4 #x9f4fe1fd ))))
(assert (bvuge (bvadd (bvmul bv_2 bv_3) (bvsrem #x683a78e5  #xa09e1f70 )) (bvxnor (bvsrem #xec86ecc1  bv_2) (bvxor bv_2 bv_1))))
(check-sat)
(exit)
