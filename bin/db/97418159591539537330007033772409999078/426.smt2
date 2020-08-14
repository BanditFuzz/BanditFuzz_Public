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
(assert (not (bvule (bvudiv #x8d6b9a6a  #x0ba07352 ) (bvsdiv bv_0 bv_2))))
(assert (bvult (bvashr (bvxnor #x50e96b72  bv_2) (bvxnor #x60760e91  #x6a8d8328 )) (bvashr (bvurem #xdca41c2f  bv_1) (bvmul #xd8e04253  bv_4))))
(assert (bvsge (bvlshr (bvsrem bv_1 bv_2) (bvlshr #x2cffbe36  bv_2)) (bvsub (bvxor #x20075d0c  #xe6ab40ae ) (bvurem bv_1 bv_4))))
(assert (xor (bvslt (bvand #x90e29f19  #x047779fd ) (bvnand bv_2 #x4b663cd3 )) (or (and bool_1 false) (or false bool_3))))
(assert (not (bvult (bvand #xfe7a2a23  bv_4) (bvxnor #x93f525a6  bv_4))))
(check-sat)
(exit)
