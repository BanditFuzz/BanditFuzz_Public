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
(assert (=> (bvsgt (bvnor bv_4 #x271cad70 ) (bvmul bv_3 bv_3)) (bvsge (bvshl #x3fc0f3b6  bv_4) (bvsrem bv_2 bv_3))))
(assert (not (bvuge (bvxnor bv_1 bv_4) (bvashr #xc9d14aef  #x07ab9745 ))))
(assert (bvule (bvurem (bvsrem bv_0 bv_1) (bvsub bv_1 #x08e84f4c )) (bvudiv (bvnand bv_3 #xdbfda284 ) (bvashr #xc09b9d14  #x3e45f352 ))))
(assert (=> (bvsgt (bvsub #x94ec5e72  #x5a2651b0 ) (bvsmod #xe90cfdc0  #x144a3cd0 )) (bvult (bvxor #xfa225cfe  bv_2) (bvmul #xc6ccda6b  #x3a47fc8f ))))
(assert (bvsgt (bvlshr (bvand bv_4 #xff78a881 ) (bvsrem bv_3 #xe0f32a8c )) (bvsub (bvashr bv_0 #x8fe17ed8 ) (bvudiv bv_1 bv_1))))
(check-sat)
(exit)
