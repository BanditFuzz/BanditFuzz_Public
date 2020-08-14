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
(assert (not (bvsle (bvsdiv bv_4 #xd8c16523 ) (bvxnor bv_3 #x1dd75894 ))))
(assert (=> (=> (bvsge bv_0 bv_0) (xor bool_2 false)) (bvult (bvashr bv_1 #x5b8dc543 ) (bvor #x4250cb10  #x1b81f6f8 ))))
(assert (bvsle (bvurem (bvxnor #xc5920246  #xe770dfa2 ) (bvlshr bv_2 #x14595e17 )) (bvor (bvsrem bv_2 #x42463e30 ) (bvlshr #x427a989e  bv_3))))
(assert (or (bvsge (bvudiv #xaf1897e8  bv_1) (bvnand #x979b4758  bv_1)) (xor (bvsgt bv_2 bv_4) (bvsgt bv_4 bv_2))))
(assert (xor (bvsge (bvshl bv_4 #x441fb610 ) (bvxnor #x9793c574  #xc69773c1 )) (=> (=> false bool_1) (bvult bv_2 bv_2))))
(check-sat)
(exit)
