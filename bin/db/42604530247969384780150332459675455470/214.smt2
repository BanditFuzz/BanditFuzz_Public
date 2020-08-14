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
(assert (or (and (bvsge #xebe5c964  #xc74aa0d2 ) (or bool_3 true)) (bvslt (bvudiv #x3447626f  bv_3) (bvsrem #x4806a2a6  bv_2))))
(assert (bvule (bvshl (bvshl #x7ac209df  #xad625c90 ) (bvmul #xe33f02d8  bv_2)) (bvshl (bvsdiv #xb2ecf8cb  #x430dcdf2 ) (bvxor bv_0 #x73863fff ))))
(assert (bvugt (bvsrem (bvashr #x5a1df43e  bv_0) (bvsdiv #x54bc2389  #xa4129cf4 )) (bvsrem (bvnor bv_1 #x8dcb6d9b ) (bvudiv bv_3 #x519f00a9 ))))
(assert (bvsge (bvor (bvnand bv_3 #x035f6556 ) (bvsub bv_1 #xebc4afc3 )) (bvsmod (bvand bv_1 bv_0) (bvnor bv_1 #xcfa7952b ))))
(assert (bvsgt (bvurem (bvxnor bv_4 bv_3) (bvashr bv_3 #xc45bd4ec )) (bvudiv (bvshl bv_4 #x0eb7c949 ) (bvsdiv #x5a6233d0  #xc785b0f6 ))))
(check-sat)
(exit)
