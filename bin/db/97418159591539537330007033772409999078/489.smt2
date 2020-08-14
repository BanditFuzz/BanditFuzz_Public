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
(assert (bvule (bvnand (bvor bv_2 bv_0) (bvor #xfa6fb1aa  bv_1)) (bvurem (bvsdiv bv_3 bv_3) (bvsdiv bv_0 bv_3))))
(assert (bvslt (bvor (bvsmod #x2bfbff9b  bv_3) (bvor bv_3 #x6da737c2 )) (bvlshr (bvnand bv_1 #x082cfd6d ) (bvnor bv_1 #x5cd01d9d ))))
(assert (and (=> (=> bool_0 bool_0) (bvule bv_1 #x61306e95 )) (and (bvugt #x8aae4f11  bv_0) (bvsge bv_2 #x00220742 ))))
(assert (bvule (bvsub (bvlshr bv_3 #x5fa47603 ) (bvlshr bv_3 #x256de667 )) (bvshl (bvashr #x1230d4a3  #x1d40da3a ) (bvashr bv_1 bv_3))))
(assert (=> (bvule (bvudiv #x5bcb24cb  #x88062583 ) (bvurem bv_1 bv_3)) (bvugt (bvxnor bv_4 #xaec6cc51 ) (bvmul #x32a2a0e8  bv_0))))
(check-sat)
(exit)
