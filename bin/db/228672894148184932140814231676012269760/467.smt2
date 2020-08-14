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
(assert (or (bvslt (bvurem #xc49ec070  bv_0) (bvsdiv bv_2 #x8f342539 )) (bvsge (bvnor #xd0cb678a  bv_0) (bvand bv_1 bv_1))))
(assert (bvugt (bvmul (bvlshr bv_1 bv_1) (bvashr bv_3 bv_1)) (bvxnor (bvnand #x7edd2b59  bv_0) (bvadd #xd59c68b8  #xf1ec8e7c ))))
(assert (bvule (bvsub (bvsub bv_1 #xb18fab97 ) (bvurem bv_0 bv_1)) (bvand (bvurem bv_1 bv_1) (bvsub #x12cc7297  #x9a945ca1 ))))
(assert (not (and (not bool_2) (bvslt #x206163a9  #xcd169302 ))))
(assert (or (bvsgt (bvadd bv_2 bv_0) (bvxor bv_3 #x39f1616d )) (or (xor true bool_1) (not bool_1))))
(check-sat)
(exit)
