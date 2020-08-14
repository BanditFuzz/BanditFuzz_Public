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
(assert (bvugt (bvand (bvsub bv_1 #xc8fadf5c ) (bvnor bv_2 bv_3)) (bvnand (bvsdiv #xac5b868c  bv_3) (bvnor #x7ebbe083  bv_0))))
(assert (bvuge (bvsrem (bvurem bv_0 #x361ac204 ) (bvsdiv bv_3 bv_3)) (bvsdiv (bvsmod #x82930219  bv_3) (bvsmod #xdc11bc28  bv_1))))
(assert (bvsgt (bvand (bvnor bv_4 bv_2) (bvurem #xd565f726  #x8398ebc1 )) (bvsrem (bvsmod bv_0 bv_4) (bvsub bv_3 #x9410b473 ))))
(assert (bvsle (bvnor (bvmul bv_2 #x14d4e337 ) (bvand bv_1 #xbea24fd0 )) (bvudiv (bvor #x2210625f  bv_0) (bvashr bv_3 #x102323bd ))))
(assert (bvule (bvnor (bvor bv_1 #xa61572d2 ) (bvand #x36e08d02  bv_1)) (bvxor (bvshl #xc0205360  #xbb41d3af ) (bvadd #x91bcacdb  bv_2))))
(check-sat)
(exit)
