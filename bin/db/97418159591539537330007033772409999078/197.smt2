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
(assert (xor (xor (not false) (bvult #x4eb5b97d  #x7f1cd03c )) (bvuge (bvudiv bv_3 bv_0) (bvsmod bv_4 bv_2))))
(assert (bvsle (bvsmod (bvlshr #x2cd064b2  #x050a6436 ) (bvand bv_0 #x4dcfc1e0 )) (bvsub (bvadd bv_0 #xce3dc7f7 ) (bvsdiv #xecf24c95  bv_2))))
(assert (and (bvule (bvor bv_0 bv_2) (bvxnor bv_3 #xb63c6a85 )) (bvugt (bvnand bv_4 bv_4) (bvsrem #xcaf09042  bv_0))))
(assert (bvslt (bvnor (bvashr #x1833e1e8  bv_2) (bvudiv #xfa049067  #x095863e9 )) (bvsrem (bvsub #xece38536  bv_4) (bvlshr #xef9ca030  bv_1))))
(assert (bvule (bvand (bvnand #xf3869c74  bv_2) (bvsrem #x6f3fff08  bv_3)) (bvadd (bvmul bv_4 bv_3) (bvxnor #xb7431302  #xbb775186 ))))
(check-sat)
(exit)
