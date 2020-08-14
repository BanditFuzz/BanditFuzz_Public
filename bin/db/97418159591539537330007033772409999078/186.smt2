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
(assert (or (bvult (bvashr #x2028eecf  #xae12d426 ) (bvashr #x94446045  #xd8e10d01 )) (xor (not bool_4) (bvsgt bv_1 #x876caeee ))))
(assert (bvuge (bvshl (bvurem bv_1 bv_0) (bvsmod #x2c9c465a  bv_3)) (bvor (bvlshr #xeea7ccf8  bv_0) (bvsub #x6be922d2  bv_2))))
(assert (bvult (bvnand (bvudiv bv_0 #xe5dafa81 ) (bvnor #x473dbca5  bv_1)) (bvudiv (bvshl bv_0 bv_0) (bvudiv #xb5b28029  bv_3))))
(assert (bvsge (bvsub (bvudiv #xf1521135  #x895935b6 ) (bvxor #x7a91f2d3  bv_3)) (bvnand (bvand bv_3 #x19aaf3bc ) (bvor bv_0 bv_2))))
(assert (=> (bvsge (bvlshr bv_2 bv_0) (bvnor bv_1 bv_3)) (bvsle (bvudiv #xde2773d4  #x339d2294 ) (bvor #x1090feb4  #x8880f259 ))))
(check-sat)
(exit)
