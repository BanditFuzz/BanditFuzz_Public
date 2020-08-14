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
(assert (not (and (and bool_4 false) (and false bool_4))))
(assert (bvuge (bvadd (bvxor bv_3 bv_2) (bvxor bv_0 #xb4e00703 )) (bvsub (bvxnor #xfdde75bb  bv_2) (bvxnor #xacb4520d  #x93c60924 ))))
(assert (bvsgt (bvudiv (bvsmod bv_1 bv_0) (bvxnor #xc15359d3  #xeb26d32d )) (bvashr (bvsub bv_1 #xc83f8e3a ) (bvnor #xc6f9277b  #x5bff9e98 ))))
(assert (or (bvult (bvlshr #x8420728c  bv_1) (bvxor #x6883ae7b  bv_3)) (xor (bvsle #xf7b2f831  bv_3) (=> false false))))
(assert (bvugt (bvnor (bvxnor #x5a8d7fad  bv_1) (bvurem #xa10054e8  #xcb1b8e78 )) (bvnand (bvadd #x0434d2d2  #xfcea5d2a ) (bvmul #x45e8af9e  bv_4))))
(check-sat)
(exit)
