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
(assert (bvslt (bvmul (bvmul bv_2 bv_2) (bvsrem bv_1 #x1ab63a3e )) (bvmul (bvsdiv #x20aa8408  #xc30249f0 ) (bvand bv_0 bv_2))))
(assert (and (bvugt (bvsmod bv_2 #x363a0a3b ) (bvnor bv_0 #xfd3474d4 )) (bvsle (bvnor #xfeb26710  bv_0) (bvudiv #x1de82e36  #xf52cc711 ))))
(assert (and (or (=> bool_4 false) (bvuge #x876a9006  #xa95c46b1 )) (xor (and true bool_3) (bvule #x425ac2f4  #xafc8fecd ))))
(assert (bvule (bvurem (bvor #x8947b6c5  bv_2) (bvnor #x3ed062b0  #xda72d820 )) (bvsub (bvlshr #x311a6539  #x280de9e1 ) (bvsrem bv_4 bv_2))))
(assert (or (bvult (bvsdiv #xcca3e96e  #x3ca31467 ) (bvsub #xe87ea541  #xbd76d880 )) (bvslt (bvxnor bv_4 #x346db609 ) (bvmul #x4c59d965  #xa3a2807f ))))
(check-sat)
(exit)
