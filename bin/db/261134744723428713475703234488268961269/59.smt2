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
(assert (bvslt (bvsmod (bvxnor bv_1 bv_4) (bvand #x495c6ffa  #x04e2603c )) (bvlshr (bvnor bv_3 bv_4) (bvnor #x0304208c  #x531da717 ))))
(assert (bvsle (bvadd (bvxor #xae74f377  bv_2) (bvlshr bv_0 #xee212604 )) (bvadd (bvurem bv_4 #xd3ac5b75 ) (bvudiv bv_2 bv_3))))
(assert (bvule (bvashr (bvnand #x52d04764  #x12b26b28 ) (bvsdiv #x347606d7  #x6f051908 )) (bvshl (bvudiv bv_3 #xcfdc8d06 ) (bvsrem bv_2 bv_3))))
(assert (and (xor (bvsle bv_4 bv_4) (bvsle #xfd4bd4c7  #x6354da3d )) (bvugt (bvudiv #x10faccce  #x469e3b75 ) (bvsrem #x48cfabed  bv_2))))
(assert (and (bvule (bvnor bv_4 bv_3) (bvudiv bv_0 bv_4)) (bvuge (bvor #x67d5f4bd  bv_1) (bvudiv bv_1 #x12de542c ))))
(check-sat)
(exit)
