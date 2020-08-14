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
(assert (bvult (bvlshr (bvxnor #x231019d0  bv_1) (bvxnor bv_0 #xaa5f4ab5 )) (bvshl (bvshl #x4531609d  #xc18f3a1c ) (bvshl bv_0 bv_3))))
(assert (or (bvule (bvnor bv_0 bv_2) (bvadd bv_4 #xced63ac9 )) (bvuge (bvxor bv_3 bv_3) (bvashr #xf30ee059  bv_3))))
(assert (bvsgt (bvudiv (bvlshr bv_0 bv_4) (bvsub bv_3 #xe79789bb )) (bvudiv (bvmul bv_3 bv_2) (bvsmod #x3eeb94e4  bv_1))))
(assert (bvsgt (bvor (bvnor bv_1 #xae004d0f ) (bvudiv #xba77a98b  bv_0)) (bvnor (bvnor #xdb146b97  bv_1) (bvnand #xd5d57cd4  #x1f5cd9bf ))))
(assert (=> (bvsge (bvurem bv_1 #x174a3f03 ) (bvor #x73e8dd25  #xad7b0fc8 )) (or (not false) (=> true true))))
(check-sat)
(exit)
