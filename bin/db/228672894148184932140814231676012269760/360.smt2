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
(assert (bvule (bvsub (bvsrem bv_1 #xe9b74ce3 ) (bvor #xe8686dca  bv_1)) (bvand (bvashr bv_2 #x7af7072a ) (bvsmod bv_3 #xc802a9d9 ))))
(assert (not (xor (xor false true) (or false true))))
(assert (bvsgt (bvxor (bvshl bv_0 bv_3) (bvxor bv_2 #xb7ad975c )) (bvnand (bvor bv_2 #x99b5cd79 ) (bvnand #x95cb1685  bv_1))))
(assert (xor (xor (bvsge #x510d18b3  #x00ef2655 ) (bvslt bv_2 bv_3)) (bvult (bvsdiv #x96cfc9bf  #x062f39e6 ) (bvshl bv_0 bv_0))))
(assert (bvugt (bvmul (bvxor bv_1 #x7b215a68 ) (bvlshr bv_0 #xf5eb85ea )) (bvsdiv (bvshl #xeff29312  #x03a6811f ) (bvurem bv_4 #x72b696a4 ))))
(check-sat)
(exit)
