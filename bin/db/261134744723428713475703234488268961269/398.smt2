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
(assert (bvule (bvxnor (bvor bv_1 #xf344c6f1 ) (bvshl #xf9c0a96a  bv_1)) (bvsdiv (bvnand #xf5004ca5  #xa0a6bc93 ) (bvnor #xafc75402  bv_4))))
(assert (not (xor (xor bool_2 true) (bvult bv_4 #xbb3e5f8a ))))
(assert (or (bvslt (bvsmod bv_3 #xf0149cb0 ) (bvsub bv_4 #xad681404 )) (bvule (bvxnor bv_4 bv_2) (bvsdiv bv_2 #xb06ff9d4 ))))
(assert (bvsle (bvsrem (bvlshr #x68da5c75  #x1c938a07 ) (bvand #xadf84b9d  bv_2)) (bvsmod (bvshl bv_1 bv_4) (bvsrem bv_3 #xbda8e5a0 ))))
(assert (bvsge (bvor (bvurem #x18506055  #xae89acbf ) (bvsdiv bv_3 bv_1)) (bvudiv (bvsub bv_0 #x503cdd06 ) (bvmul bv_0 bv_2))))
(check-sat)
(exit)
