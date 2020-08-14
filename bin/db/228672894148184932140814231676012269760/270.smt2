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
(assert (bvuge (bvsub (bvsrem bv_3 #xb56eb01f ) (bvashr #x4744d3de  #x966b6a79 )) (bvudiv (bvashr #x148066f8  bv_2) (bvsrem bv_1 bv_3))))
(assert (or (bvult (bvudiv #x87bc3806  bv_2) (bvor #xb278e45c  #xed9b9e4a )) (bvuge (bvsrem bv_2 #x04516044 ) (bvxor bv_4 bv_3))))
(assert (bvule (bvsdiv (bvashr #x0ac12613  #xb3db5994 ) (bvnor #xfc72d5fa  #x8b2a6e1a )) (bvsdiv (bvxor #xf1db02e1  bv_4) (bvor #x466c8aee  bv_1))))
(assert (bvsgt (bvshl (bvsub bv_2 bv_4) (bvxor bv_2 #xa2fe2a9b )) (bvudiv (bvnor #x848a78b7  bv_4) (bvsmod #x3077d798  #x5870f261 ))))
(assert (bvsgt (bvand (bvlshr bv_0 #x1ea8f5da ) (bvadd bv_4 bv_4)) (bvsub (bvsdiv #x0a5c9109  #x94d87dd3 ) (bvsrem #xef0dc4d2  bv_0))))
(check-sat)
(exit)
