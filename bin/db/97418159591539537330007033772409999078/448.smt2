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
(assert (bvsgt (bvurem (bvashr #xc51a0155  #xd8610051 ) (bvudiv bv_1 #x193d4114 )) (bvashr (bvsmod bv_1 #x7be1a06e ) (bvmul bv_0 bv_1))))
(assert (bvugt (bvsdiv (bvand bv_1 #x9e0d1a97 ) (bvurem bv_0 bv_4)) (bvnand (bvnor #xf1c6c305  bv_0) (bvnand bv_0 bv_3))))
(assert (bvsle (bvnor (bvurem #x5132bbbd  #x649e7c64 ) (bvsmod #x15324da1  #xdcf29b4f )) (bvudiv (bvudiv bv_1 #x96ff2b55 ) (bvnor bv_0 #xea727d0b ))))
(assert (or (or (bvsgt bv_0 bv_4) (not bool_4)) (bvsgt (bvand #x4899cd46  bv_4) (bvurem bv_4 #x0e6f6df4 ))))
(assert (bvsgt (bvxor (bvshl bv_2 #x12dfb0ad ) (bvsmod #x4d8a581b  #x8cdb3904 )) (bvshl (bvand bv_0 #x268d414c ) (bvashr bv_3 #x1fba58f7 ))))
(check-sat)
(exit)
