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
(assert (bvslt (bvnand (bvadd #xa0d40d29  bv_3) (bvand bv_1 #x68ea3ea8 )) (bvurem (bvxor bv_3 #x5cc181bd ) (bvxor #x4439c1f7  bv_0))))
(assert (xor (=> (xor true bool_1) (not bool_4)) (bvsge (bvsrem #x4b5dac30  bv_2) (bvor #x1f5b6b97  #x4cd4b56e ))))
(assert (bvule (bvand (bvsmod bv_4 #x7f7f4a38 ) (bvsdiv #x9dc89d8e  bv_2)) (bvxnor (bvnor #x43847a05  bv_2) (bvashr bv_2 bv_0))))
(assert (bvuge (bvadd (bvxor bv_3 bv_0) (bvsdiv #xf46a9bb1  bv_2)) (bvmul (bvudiv #x58731bc8  #xc14db111 ) (bvand #x7280e963  #xc0b872a9 ))))
(assert (not (bvsge (bvurem #x437a4a07  #x501f2c1c ) (bvashr bv_4 #xfa18a92a ))))
(check-sat)
(exit)
