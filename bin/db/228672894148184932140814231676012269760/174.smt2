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
(assert (=> (=> (not false) (bvsge #xea017eff  #x74364a08 )) (=> (bvugt bv_4 #x9287a652 ) (bvsle bv_4 bv_0))))
(assert (bvule (bvmul (bvmul #x224db823  bv_0) (bvnand #x3b508f82  #x21816589 )) (bvand (bvxnor bv_1 bv_4) (bvor bv_1 bv_0))))
(assert (xor (bvslt (bvnand bv_1 bv_0) (bvand bv_3 bv_3)) (bvule (bvshl #x4aae2aa5  #x8c2dcb15 ) (bvsrem #xe127ae7b  #x5f218387 ))))
(assert (bvsge (bvshl (bvxor bv_2 bv_1) (bvxnor bv_1 #x32992eb5 )) (bvnand (bvsrem #x07bd7eb0  #x4d11e075 ) (bvashr #xe8142a4b  #xcb869611 ))))
(assert (not (and (bvsle bv_4 bv_0) (bvsge #x5621120b  bv_0))))
(check-sat)
(exit)
