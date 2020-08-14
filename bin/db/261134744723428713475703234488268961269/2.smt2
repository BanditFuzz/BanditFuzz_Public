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
(assert (xor (bvsge (bvurem bv_2 #x606c6146 ) (bvlshr #xd9dc7336  #x3a149dd9 )) (bvult (bvlshr bv_1 bv_1) (bvand bv_0 bv_4))))
(assert (xor (bvsge (bvnor #x3f05b8de  #xcf30256c ) (bvnor #xaf27db01  bv_3)) (bvule (bvsmod bv_2 #xd30c3058 ) (bvmul bv_0 bv_1))))
(assert (or (bvule (bvurem bv_4 #x0ec93e43 ) (bvurem #x60375d7c  #x55e879c0 )) (bvsge (bvlshr bv_1 bv_2) (bvmul #x3806cd75  #x6fb97b3b ))))
(assert (xor (bvult (bvxor #x6f4446ab  #x90fdfaff ) (bvsdiv bv_2 #xc8a8479a )) (bvslt (bvnor bv_3 bv_4) (bvsub #xd7b2b148  #x6d016255 ))))
(assert (not (not (bvsge #xbc776564  bv_4))))
(check-sat)
(exit)
