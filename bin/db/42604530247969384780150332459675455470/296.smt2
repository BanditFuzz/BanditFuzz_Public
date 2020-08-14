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
(assert (bvsgt (bvudiv (bvxnor bv_2 bv_3) (bvashr bv_1 bv_3)) (bvudiv (bvudiv bv_3 #x57c743fa ) (bvsub #x313432bc  bv_0))))
(assert (bvsle (bvor (bvsmod bv_4 bv_1) (bvnand #x52696188  bv_3)) (bvashr (bvxnor #x2aea9138  bv_4) (bvnand #x9b508762  #x20aff59d ))))
(assert (xor (or (bvsgt bv_4 #xfc92281c ) (not bool_0)) (bvsgt (bvshl bv_1 bv_3) (bvsdiv bv_2 #x26610763 ))))
(assert (bvsge (bvashr (bvlshr #xe5b6f790  #xe47e856f ) (bvsdiv #xfcba7148  bv_2)) (bvxnor (bvnor bv_4 #xd6fc212e ) (bvlshr bv_0 bv_1))))
(assert (xor (bvule (bvor bv_3 #xc41c32b8 ) (bvsub #xd06b6a87  bv_3)) (bvsle (bvxor #x33d2e232  bv_4) (bvlshr #x50ec496d  bv_1))))
(check-sat)
(exit)
