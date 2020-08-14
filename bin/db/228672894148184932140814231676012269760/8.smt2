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
(assert (bvsgt (bvashr (bvnand #xf89553d3  bv_3) (bvudiv #x264281dd  bv_0)) (bvsmod (bvxor bv_4 bv_4) (bvlshr bv_2 #xbe1dab46 ))))
(assert (bvsle (bvsdiv (bvor #x49dedd24  #xaf62955c ) (bvnor #xc794fa05  bv_0)) (bvsrem (bvsmod bv_2 #xcb94c249 ) (bvsdiv #x2cfc6468  bv_1))))
(assert (=> (not (not bool_3)) (and (or false bool_3) (bvslt bv_4 #xb5c8112a ))))
(assert (or (xor (bvuge #x5033e1f9  bv_3) (bvsgt bv_4 bv_2)) (bvugt (bvashr bv_2 #x097b6cee ) (bvurem bv_1 #x719f10b6 ))))
(assert (bvuge (bvurem (bvsdiv bv_2 bv_2) (bvxor #x9eede220  #x3431d1b5 )) (bvadd (bvudiv bv_0 #x90bca80b ) (bvsdiv bv_2 bv_0))))
(check-sat)
(exit)
