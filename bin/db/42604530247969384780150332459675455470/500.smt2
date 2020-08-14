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
(assert (bvult (bvxor (bvlshr #xc05061eb  bv_2) (bvxnor #xc98f773a  bv_2)) (bvand (bvshl #x63f2b78b  bv_0) (bvmul bv_1 bv_0))))
(assert (bvuge (bvsmod (bvsmod bv_1 bv_1) (bvand #x0e4dfafd  bv_4)) (bvxnor (bvlshr bv_3 bv_1) (bvsmod #xa1522bbc  bv_2))))
(assert (bvslt (bvsrem (bvsdiv #x0f3487de  #x05144a63 ) (bvsrem #x76d5d043  bv_2)) (bvsrem (bvadd #x3005747e  #x5b35c1fd ) (bvlshr #xcc54ec52  #x7b34b125 ))))
(assert (bvsle (bvnor (bvshl #x1a0f8aae  bv_4) (bvsmod #x77e6d9e1  bv_1)) (bvnand (bvurem bv_2 bv_2) (bvsdiv bv_0 #x3da2b5a9 ))))
(assert (and (bvsge (bvsmod #xab8a82d0  #xa2299469 ) (bvshl bv_0 bv_3)) (bvult (bvand bv_1 #x658d6fd6 ) (bvxor #x564bb57c  bv_4))))
(check-sat)
(exit)
