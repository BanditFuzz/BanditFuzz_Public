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
(assert (bvsge (bvxnor (bvsrem #x344665b1  bv_2) (bvlshr bv_0 #xee72704e )) (bvxor (bvand bv_2 bv_0) (bvashr bv_2 bv_2))))
(assert (bvslt (bvand (bvsmod bv_4 #xb46262fb ) (bvnor bv_3 bv_3)) (bvashr (bvsrem bv_3 bv_0) (bvshl bv_0 #xa8d769ee ))))
(assert (not (not (bvult #x5e62e10d  #x7b20ee38 ))))
(assert (bvult (bvsdiv (bvor #x86445fdc  #x8c69006f ) (bvnand #xc80ff120  bv_1)) (bvnor (bvurem #x53986992  #x4f7ea2b0 ) (bvsrem #xb5ba5608  bv_2))))
(assert (bvuge (bvnor (bvsub #x35376dcc  bv_3) (bvadd bv_0 bv_1)) (bvor (bvmul bv_0 bv_4) (bvor #xed8ca7ee  #x7d83c180 ))))
(check-sat)
(exit)
