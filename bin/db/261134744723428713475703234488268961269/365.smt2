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
(assert (or (bvslt (bvand #x3c6b1071  bv_0) (bvxnor bv_2 #x3dce520c )) (bvsle (bvsrem bv_4 #xe6ef19bb ) (bvmul #xf2d6660c  #x523a5cdc ))))
(assert (xor (=> (bvsle bv_3 bv_4) (bvuge bv_0 #x1d8565bc )) (not (=> false bool_2))))
(assert (bvsle (bvshl (bvudiv #x4e3f8cc4  #xe0a64b01 ) (bvand bv_1 bv_1)) (bvadd (bvashr #x5b35dafc  #xe680c48f ) (bvsdiv bv_3 bv_2))))
(assert (bvsgt (bvxor (bvmul bv_1 #x5adef0e4 ) (bvadd bv_1 bv_1)) (bvor (bvashr bv_2 bv_1) (bvnor #xe6e86852  bv_1))))
(assert (or (xor (not true) (bvuge bv_0 #x9a07feb5 )) (or (bvsle bv_1 bv_0) (bvsle #x7b73ee0f  #x4dd33f49 ))))
(check-sat)
(exit)
