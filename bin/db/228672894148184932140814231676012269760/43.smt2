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
(assert (=> (bvsgt (bvnor #x0af07ac4  #x59ed7c31 ) (bvxnor bv_0 #x52c2261d )) (bvslt (bvsrem bv_2 bv_0) (bvashr bv_1 bv_1))))
(assert (bvult (bvsdiv (bvnor bv_1 #x36d6e3c0 ) (bvxor #x1d17988b  bv_3)) (bvsmod (bvnor #x2ab0a321  #x652d291f ) (bvand #x6c89d2b6  #x22e51c32 ))))
(assert (=> (not (xor bool_1 bool_1)) (or (bvsgt #x297e6717  #xbe722473 ) (bvule bv_2 #xd9b20297 ))))
(assert (bvuge (bvurem (bvashr bv_1 bv_0) (bvudiv #x8fce60f7  bv_0)) (bvadd (bvsub #x7afa85ca  #xb6d4140e ) (bvsdiv #x11f09904  #x8da6054e ))))
(assert (not (bvsgt (bvor #x25c7e9b7  #x342a859b ) (bvadd bv_4 #x7861c3d8 ))))
(check-sat)
(exit)
