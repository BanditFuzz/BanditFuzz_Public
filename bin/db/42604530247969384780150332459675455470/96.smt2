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
(assert (bvule (bvxor (bvsdiv #x4a280a70  #xabc24263 ) (bvurem bv_0 #x565d8145 )) (bvnand (bvlshr #xd67ed175  bv_1) (bvadd #x313d4e9c  #x558fce0c ))))
(assert (bvsle (bvnor (bvadd bv_4 bv_1) (bvand bv_2 bv_0)) (bvshl (bvmul bv_0 #xd4e97b78 ) (bvand #x0b0ade4b  bv_4))))
(assert (bvugt (bvsmod (bvlshr #x34fd93d7  #x15ecebd1 ) (bvnand bv_1 #x5e7b2d5a )) (bvadd (bvor #x5b54be88  #x7c8c616c ) (bvxor #x0995e205  bv_2))))
(assert (=> (=> (bvsge #x9c73e8e4  #xde30399d ) (=> bool_3 bool_4)) (bvuge (bvmul #xd6f90874  bv_2) (bvand #xb127163f  #xb14ca69e ))))
(assert (bvsle (bvnand (bvudiv bv_1 bv_3) (bvsdiv #xecacd56f  bv_3)) (bvsub (bvmul bv_0 bv_4) (bvsmod bv_1 #x5d7f8235 ))))
(check-sat)
(exit)
