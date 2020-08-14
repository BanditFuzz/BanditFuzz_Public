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
(assert (bvslt (bvashr (bvlshr bv_3 #x3e05d1d9 ) (bvlshr #x61d4ea02  #x4199289c )) (bvlshr (bvashr #x3cfedb12  #x56337fad ) (bvmul #x5f057e95  bv_0))))
(assert (or (bvslt (bvnand bv_1 bv_1) (bvmul #xf4732f6d  bv_4)) (=> (bvslt #x871de157  #xc387bd73 ) (bvult bv_3 #x985921c2 ))))
(assert (bvsgt (bvudiv (bvadd bv_1 #xf49b5f82 ) (bvand bv_1 #x8e28e98b )) (bvsdiv (bvurem bv_0 #x338eb989 ) (bvshl #x761b4d21  bv_0))))
(assert (bvslt (bvmul (bvurem bv_2 #x54e744b9 ) (bvashr bv_4 #xb6facb0c )) (bvmul (bvurem #x18625665  #x3783ac7e ) (bvadd bv_2 bv_0))))
(assert (bvsge (bvlshr (bvxnor bv_0 bv_4) (bvurem bv_3 #xb8f20c01 )) (bvxnor (bvlshr bv_2 bv_0) (bvxor bv_1 #xa808633e ))))
(check-sat)
(exit)
