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
(assert (and (bvugt (bvsrem #x1fbd5746  bv_0) (bvnor bv_3 bv_3)) (bvsge (bvxnor bv_0 #xf8f93046 ) (bvnor #x8ce0d61f  #xcf003ed0 ))))
(assert (and (and (=> true bool_1) (=> bool_1 true)) (not (xor true bool_4))))
(assert (and (bvslt (bvmul #x0ced716d  #x418e5e81 ) (bvxor bv_4 #x70aa9314 )) (bvuge (bvadd #x3c54c365  bv_0) (bvashr #x7e879b99  #x79a18122 ))))
(assert (bvult (bvsdiv (bvnand #xe1d88d25  bv_2) (bvand #x23581a38  #x7b7b295c )) (bvsdiv (bvudiv #xe28d305c  #x6c53d4dc ) (bvudiv #x1889a34f  bv_1))))
(assert (bvult (bvsmod (bvor #x6a8eaeca  #x143eaa40 ) (bvxor #x32e06d11  #xe89e63fd )) (bvmul (bvxor bv_3 #x03c861cd ) (bvxor bv_0 #x5872ebb5 ))))
(check-sat)
(exit)
