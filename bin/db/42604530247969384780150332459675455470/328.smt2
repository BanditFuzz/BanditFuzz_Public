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
(assert (bvsgt (bvnand (bvnand bv_1 bv_3) (bvxnor #xfefaba25  #x81e39c96 )) (bvxor (bvand #xa73ccab6  #x74117d56 ) (bvmul bv_0 #xebe4b42e ))))
(assert (bvsge (bvsub (bvand bv_2 #x82617a28 ) (bvnand #xa72e8d5b  bv_3)) (bvsub (bvor #x67b7de50  #x2e683665 ) (bvnand bv_0 #x08b59623 ))))
(assert (=> (bvsge (bvand bv_4 bv_3) (bvxnor #x6261358b  #xadfc728b )) (bvsgt (bvsdiv #x314c2216  #x5b70d37e ) (bvlshr #xed2a71f7  #x974d4d81 ))))
(assert (bvuge (bvor (bvurem bv_3 bv_1) (bvxnor bv_3 bv_3)) (bvor (bvsrem bv_2 bv_4) (bvand #x19055a95  bv_0))))
(assert (or (and (bvsle bv_1 #x72e80e98 ) (and bool_1 bool_4)) (bvsge (bvsub #x0a4322c6  #xd53b4db5 ) (bvudiv bv_1 bv_4))))
(check-sat)
(exit)
