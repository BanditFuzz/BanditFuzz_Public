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
(assert (bvsle (bvxnor (bvnor bv_4 bv_2) (bvsrem #x95dafae3  #x32e405c2 )) (bvudiv (bvnor #x5825c146  bv_1) (bvnor #xcb083559  bv_3))))
(assert (bvsge (bvurem (bvudiv bv_2 bv_2) (bvsdiv #x3781d1bb  #xd0c01cd4 )) (bvsmod (bvnor bv_3 bv_3) (bvmul #x3d3375fd  bv_3))))
(assert (bvsgt (bvshl (bvsdiv bv_4 bv_2) (bvsub bv_4 #x2c62362d )) (bvlshr (bvlshr #x07c42a68  bv_1) (bvlshr #x5ae383f6  bv_3))))
(assert (bvslt (bvshl (bvsrem bv_3 bv_1) (bvlshr #x6e8322f9  bv_2)) (bvxor (bvor bv_3 #x2d0c166a ) (bvnand bv_1 bv_2))))
(assert (and (=> (bvslt #x337aa7d8  #x39f1d776 ) (xor bool_0 true)) (bvsgt (bvmul #x004613e4  #x1b4ae167 ) (bvsmod #xe4fba994  bv_2))))
(check-sat)
(exit)
