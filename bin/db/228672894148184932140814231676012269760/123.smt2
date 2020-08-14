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
(assert (bvugt (bvxnor (bvsrem bv_0 bv_3) (bvsdiv bv_2 bv_4)) (bvashr (bvnor #x86ea20dd  #x4b3fcfca ) (bvshl #x7b3ba3bb  #xcf238ced ))))
(assert (=> (xor (bvuge #x066b7d5b  bv_4) (bvult #x01a3dcb8  bv_1)) (bvult (bvsub bv_4 bv_0) (bvor #x6d606244  #x57d21318 ))))
(assert (bvslt (bvsdiv (bvsdiv bv_1 #xfc824085 ) (bvnand bv_4 #x1b07aa88 )) (bvnand (bvnor bv_4 #x547cebe9 ) (bvxor #xb90b9029  #xb4ee5e28 ))))
(assert (bvsgt (bvsrem (bvmul #xb8c24755  #xb1512db4 ) (bvxnor #xc0281f8d  #x60495a39 )) (bvashr (bvmul bv_2 bv_4) (bvnor #x15726cc1  bv_4))))
(assert (bvslt (bvudiv (bvshl #x52c9bd5f  bv_0) (bvor bv_2 #x0b37c237 )) (bvmul (bvurem #xaebfd405  bv_3) (bvlshr bv_0 #x8b992d5d ))))
(check-sat)
(exit)
