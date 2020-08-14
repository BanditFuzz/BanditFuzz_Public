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
(assert (not (and (bvsle bv_0 #xad7af07e ) (or bool_3 false))))
(assert (bvsge (bvnand (bvashr bv_0 #x8cf3c9cc ) (bvashr #x952bc3df  bv_2)) (bvsdiv (bvudiv bv_3 #xa2ac5009 ) (bvshl bv_3 bv_1))))
(assert (bvule (bvmul (bvsrem #xf0462826  #x5a986569 ) (bvlshr bv_0 bv_2)) (bvudiv (bvashr #x51df00bf  bv_4) (bvxnor #xbef5baac  #x16b91a8d ))))
(assert (xor (bvult (bvxnor bv_3 #x30a915fe ) (bvsrem #x69b15c13  #xb78172d0 )) (bvslt (bvlshr #x7026a1d9  bv_1) (bvand #x2b43a3ed  #xd8628eb8 ))))
(assert (not (not (bvugt #x91ed5cd2  #xd1d87812 ))))
(check-sat)
(exit)
