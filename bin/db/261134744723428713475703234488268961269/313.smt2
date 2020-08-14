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
(assert (bvult (bvmul (bvlshr #x51dc9c05  bv_0) (bvand #xaec6fab8  bv_4)) (bvsub (bvsdiv bv_3 bv_4) (bvmul #xac07f7dd  bv_3))))
(assert (bvugt (bvurem (bvsub #x2818ad99  bv_3) (bvxor bv_1 #x4a1d7938 )) (bvxnor (bvsmod #xf8e9205a  bv_0) (bvashr bv_3 #xdcb4d322 ))))
(assert (bvuge (bvsub (bvsub bv_3 #x57a92209 ) (bvor #x70b5a112  bv_3)) (bvxnor (bvlshr #x906fd0e0  bv_1) (bvsub bv_2 #xff9737b0 ))))
(assert (bvule (bvsmod (bvsmod #x77a4f8f9  bv_0) (bvsmod #x68f904c2  #x0c538cba )) (bvxnor (bvmul #x3d2f0a06  bv_1) (bvsub bv_4 #x4a184ba7 ))))
(assert (bvslt (bvshl (bvurem bv_1 #xfea354dd ) (bvsrem bv_0 bv_3)) (bvxnor (bvurem #xc909c94f  bv_1) (bvnor bv_1 #x822ceba8 ))))
(check-sat)
(exit)
