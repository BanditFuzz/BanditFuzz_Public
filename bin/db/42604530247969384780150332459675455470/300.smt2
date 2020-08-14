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
(assert (bvugt (bvsdiv (bvsub bv_3 bv_0) (bvashr #xa4bf5837  bv_2)) (bvsub (bvsub #x420ae130  #x0641a271 ) (bvshl #xf78bafb5  #xdf468a3a ))))
(assert (bvule (bvsdiv (bvadd bv_3 bv_1) (bvsrem bv_0 bv_1)) (bvxor (bvxnor #x5acea2bc  bv_4) (bvlshr bv_4 #x56b1842f ))))
(assert (bvslt (bvnor (bvxor #x630a18c1  #x93c02d5f ) (bvshl #xd2977a56  #x328fd68f )) (bvurem (bvudiv bv_4 bv_3) (bvurem bv_0 bv_1))))
(assert (bvule (bvnand (bvand bv_0 #xa6d3e716 ) (bvsdiv #x0e0518cc  #xfaf0d08e )) (bvsrem (bvadd #xf5938176  bv_2) (bvand bv_3 #xde998f1b ))))
(assert (bvsle (bvnand (bvxor bv_1 bv_2) (bvnor #x3372caeb  bv_0)) (bvudiv (bvsrem #x1824ba68  bv_0) (bvsmod #xe8cf6b78  #x43a33582 ))))
(check-sat)
(exit)
