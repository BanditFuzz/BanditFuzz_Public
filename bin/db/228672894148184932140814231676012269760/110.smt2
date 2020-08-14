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
(assert (bvsle (bvsrem (bvadd #xaa4ed627  bv_1) (bvxnor #x25855b90  bv_1)) (bvsmod (bvshl #x7c64da0e  bv_1) (bvand bv_2 #x8921fab5 ))))
(assert (bvslt (bvsub (bvurem bv_4 #xf3d2032f ) (bvnor bv_2 bv_0)) (bvmul (bvnand bv_2 bv_3) (bvsdiv #x1cd9045a  bv_3))))
(assert (bvuge (bvsrem (bvlshr #x68516847  #x4ef07e3e ) (bvand #xe1efc952  #x4e566480 )) (bvudiv (bvlshr #x7dba56a4  bv_4) (bvlshr bv_0 #xb64f1e56 ))))
(assert (bvsle (bvsrem (bvudiv bv_3 #x34d1c63a ) (bvxor bv_3 #x81062eca )) (bvurem (bvadd bv_0 bv_4) (bvlshr bv_4 bv_2))))
(assert (bvule (bvand (bvlshr #x2b229590  #xd3857b20 ) (bvurem bv_2 #x610a6875 )) (bvurem (bvlshr bv_0 bv_3) (bvsdiv #xfca6940d  bv_4))))
(check-sat)
(exit)
