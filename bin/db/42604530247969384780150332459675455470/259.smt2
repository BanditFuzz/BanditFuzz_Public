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
(assert (bvsge (bvsrem (bvnor #x9ce1a774  bv_4) (bvnor bv_4 bv_2)) (bvsdiv (bvor #x5aee304d  #x53ba0a7f ) (bvnand #x29c72aa5  bv_1))))
(assert (not (bvult (bvnand bv_1 bv_3) (bvlshr #x7e29c62a  #x4e0a0b95 ))))
(assert (bvsgt (bvsdiv (bvsdiv #x620bb809  #xd72197eb ) (bvurem #x6957b97c  bv_2)) (bvsmod (bvand bv_2 bv_0) (bvashr bv_4 #xd1e3bfb9 ))))
(assert (=> (bvsge (bvlshr #xa57d554a  #x267ccf29 ) (bvsdiv #x70b171ff  bv_1)) (bvsgt (bvudiv bv_2 #x791a7216 ) (bvnor #x979fc82c  bv_2))))
(assert (or (bvsgt (bvlshr bv_1 bv_2) (bvudiv bv_4 #x843b69b5 )) (bvsle (bvurem bv_4 #x595bbf96 ) (bvsmod bv_2 #xced47c59 ))))
(check-sat)
(exit)
