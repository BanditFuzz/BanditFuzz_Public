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
(assert (bvslt (bvsrem (bvudiv #xc95b25f1  bv_2) (bvmul bv_0 bv_4)) (bvxor (bvurem bv_3 #xa328ac29 ) (bvashr #x695954fc  #x109547c8 ))))
(assert (bvsgt (bvor (bvsrem #x023ee9b3  #x39db1db4 ) (bvsmod bv_4 #xbd94a997 )) (bvashr (bvurem #x651b58f7  bv_4) (bvlshr #xbc93a4b0  #xa0819ccb ))))
(assert (bvslt (bvashr (bvashr #xde622d6c  bv_4) (bvsrem #x83abc6c8  bv_2)) (bvxor (bvxor bv_3 #x4f9955ff ) (bvshl #xd5f2b6e8  #x6bead5f5 ))))
(assert (bvsgt (bvsrem (bvashr #xbe72e0ce  #x490d9752 ) (bvashr #x708f2271  bv_1)) (bvor (bvsmod bv_0 bv_3) (bvor bv_2 #x6b0085d4 ))))
(assert (bvugt (bvshl (bvlshr #x3fb04763  bv_3) (bvxnor #x9cc49c41  #x9e07379e )) (bvsub (bvxor #xec627b5e  bv_3) (bvsub #x663850fa  bv_1))))
(check-sat)
(exit)
