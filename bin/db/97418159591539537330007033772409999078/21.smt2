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
(assert (or (bvsge (bvand bv_3 #x8b1254a9 ) (bvmul #x38c0105d  #x31a6ef62 )) (bvult (bvudiv #x29498492  #x9ed4b0cd ) (bvsub #xf3867961  bv_1))))
(assert (or (xor (=> bool_1 bool_1) (bvsgt bv_4 #x6e776118 )) (bvslt (bvashr #x57cee999  bv_1) (bvadd #x79dc3465  bv_0))))
(assert (bvuge (bvadd (bvxnor #xf1b5014a  bv_1) (bvudiv #xe90c428a  bv_3)) (bvnor (bvxor bv_1 #xe0f4bedb ) (bvxnor bv_2 #xe1a9a1cd ))))
(assert (bvsgt (bvnor (bvadd bv_1 bv_3) (bvsrem bv_3 #xc1e6c282 )) (bvnor (bvadd #xf4271591  bv_2) (bvashr bv_4 bv_4))))
(assert (or (bvugt (bvsub #x30df9d92  bv_2) (bvand bv_2 bv_0)) (bvsgt (bvsmod bv_2 bv_2) (bvxnor #xa30b0eb3  bv_0))))
(check-sat)
(exit)
