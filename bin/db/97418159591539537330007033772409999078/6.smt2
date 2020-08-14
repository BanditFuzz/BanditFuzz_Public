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
(assert (or (or (bvugt #x72637bc8  #x424fd785 ) (bvuge #x1788ec2e  #x8e336d95 )) (bvsge (bvand #xa1d87b38  bv_3) (bvurem bv_0 #x9bf93456 ))))
(assert (bvslt (bvnand (bvsmod #x733d4303  #xb9ee95ef ) (bvxnor #x1d959ccd  #x3be453b1 )) (bvurem (bvand #x0adae811  bv_1) (bvxnor #x72301a94  #x2d00bf13 ))))
(assert (or (or (bvsge bv_4 #x1a5ed79a ) (bvsge #xfa74a370  bv_0)) (bvuge (bvurem bv_0 #x2e609598 ) (bvor #xd71e8660  bv_0))))
(assert (bvslt (bvand (bvsrem #x54007409  #xa1cb2af9 ) (bvnand #xdb0db7ce  bv_0)) (bvadd (bvsmod bv_1 #x5b4c7126 ) (bvadd bv_0 bv_2))))
(assert (bvuge (bvor (bvxnor bv_1 bv_1) (bvudiv #xa73ac4f6  bv_2)) (bvsdiv (bvadd #x62931735  #x38d555c4 ) (bvshl #xf8b3d08e  #x69785d58 ))))
(check-sat)
(exit)
