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
(assert (not (and (and bool_1 bool_4) (bvuge #xc6adfe31  bv_0))))
(assert (or (bvuge (bvurem bv_4 bv_2) (bvurem bv_2 bv_1)) (not (bvsge bv_2 #xd57a16e3 ))))
(assert (bvugt (bvand (bvadd bv_3 #x1cff4dea ) (bvand #x772e9f6c  #xea432879 )) (bvmul (bvudiv bv_1 bv_4) (bvmul #xac6e1981  bv_0))))
(assert (bvsle (bvmul (bvor #x9f2dcc31  #x1b1c6a33 ) (bvsmod bv_3 #xa6fd2c00 )) (bvurem (bvlshr bv_4 bv_2) (bvashr bv_4 #x520f0d9d ))))
(assert (bvuge (bvsmod (bvsub #x16cc78b8  #x0703e1ed ) (bvxnor #x8b912a7f  #x51735c84 )) (bvnor (bvmul bv_2 bv_1) (bvashr #x62490ced  #x99f9710d ))))
(check-sat)
(exit)
