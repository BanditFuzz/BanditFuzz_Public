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
(assert (bvule (bvsmod (bvxor #x89c48773  bv_0) (bvxnor bv_3 bv_1)) (bvsub (bvxnor bv_3 #x65a34f35 ) (bvsdiv #x28c732d1  bv_2))))
(assert (bvslt (bvmul (bvurem bv_2 #xdfefd4e7 ) (bvand bv_4 #x9e4f49da )) (bvor (bvudiv bv_3 bv_3) (bvashr bv_4 bv_0))))
(assert (bvule (bvsdiv (bvurem bv_2 bv_2) (bvnor #xe8a45da9  #x62a93cb4 )) (bvshl (bvsdiv bv_3 #x77e13750 ) (bvxnor #xdacb3b42  bv_0))))
(assert (bvslt (bvsub (bvashr bv_1 bv_0) (bvxor bv_4 #x90c73e10 )) (bvadd (bvsmod #x843b2d6a  #x5338b1fe ) (bvlshr #xb12f9f0c  bv_2))))
(assert (and (bvult (bvashr #xde5101b5  #xcc9acb40 ) (bvashr bv_4 #x004b6138 )) (bvsgt (bvxor #x8009604d  bv_1) (bvadd bv_3 #x18181b81 ))))
(check-sat)
(exit)
