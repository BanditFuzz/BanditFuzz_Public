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
(assert (bvsge (bvsdiv (bvnand bv_4 bv_1) (bvsrem #x2013cc83  #x1dd14f1b )) (bvurem (bvor #x6e391169  #xaa42f6e3 ) (bvadd bv_3 #x47727634 ))))
(assert (=> (bvuge (bvand #xbb48d9ca  bv_0) (bvnand bv_3 #x25844d9a )) (bvult (bvudiv #xe8909de2  #xc91dc33d ) (bvnor #xf4c0e704  bv_1))))
(assert (bvugt (bvxnor (bvnand bv_2 #x35580b86 ) (bvashr #x7b03e76e  bv_2)) (bvsub (bvand bv_1 bv_0) (bvashr bv_2 bv_1))))
(assert (or (and (bvugt #xfe7e49ff  bv_1) (bvsgt #xb8857fa2  bv_2)) (bvsgt (bvshl #x8ff88831  #xb2d5b8d4 ) (bvudiv bv_4 bv_4))))
(assert (bvuge (bvurem (bvor #x54e117c0  bv_1) (bvsdiv bv_1 bv_4)) (bvashr (bvsrem bv_1 #x5550d08d ) (bvsdiv bv_0 #x286719be ))))
(check-sat)
(exit)
