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
(assert (bvule (bvnor (bvor #x33ac91d7  bv_3) (bvashr #x75421bc1  bv_4)) (bvsmod (bvurem bv_4 #xe63650f1 ) (bvnor bv_4 bv_3))))
(assert (and (and (bvsge bv_4 #x7f4bbd46 ) (bvsle bv_3 #x7bf789ce )) (bvslt (bvor #x2ef553e3  bv_2) (bvsub #x4f0991a1  bv_0))))
(assert (bvsle (bvshl (bvor #xfbdb8bae  bv_0) (bvashr bv_0 #xf0cc2345 )) (bvadd (bvadd bv_4 bv_2) (bvxor #x2e89df7c  bv_3))))
(assert (bvsgt (bvadd (bvurem bv_1 bv_0) (bvudiv #x2b8b969b  bv_0)) (bvand (bvxnor bv_2 bv_4) (bvlshr bv_2 bv_3))))
(assert (bvsge (bvmul (bvudiv #xd5c0c999  #x360cc496 ) (bvsub bv_1 #xca7052c5 )) (bvand (bvashr #xa60e5465  bv_1) (bvlshr bv_1 bv_1))))
(check-sat)
(exit)
