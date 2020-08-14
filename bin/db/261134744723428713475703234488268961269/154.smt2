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
(assert (or (or (bvult #x27197fcc  #x80b00ad4 ) (bvult bv_0 #x346bfad0 )) (bvslt (bvnand bv_4 #xd9eb9240 ) (bvsmod bv_1 bv_0))))
(assert (bvugt (bvashr (bvxnor bv_1 bv_1) (bvmul bv_3 #x8c709889 )) (bvadd (bvsdiv bv_0 bv_4) (bvurem #x577bb38c  #xbb1ce92d ))))
(assert (=> (bvslt (bvor #x7f93364d  bv_3) (bvsmod #xe26ba31f  bv_2)) (bvugt (bvxor bv_4 #x35795780 ) (bvmul #x20904f63  bv_2))))
(assert (bvuge (bvnand (bvsmod bv_0 bv_3) (bvsdiv #xdba52a81  #xfb231eec )) (bvxnor (bvor #xcb230cbd  #xdacfab0d ) (bvand bv_2 #xb6881887 ))))
(assert (bvuge (bvadd (bvor #x81a42ce5  bv_3) (bvadd bv_4 bv_4)) (bvnor (bvsdiv #x16257574  bv_4) (bvlshr #xb54d6e5e  #xf9a8e06e ))))
(check-sat)
(exit)
