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
(assert (bvule (bvadd (bvxnor #x809f6db6  bv_2) (bvashr #x2192c066  bv_3)) (bvxor (bvxor #xad77ca56  #x57a597bb ) (bvnor #xa130d5d3  #x4129dcd0 ))))
(assert (=> (bvsle (bvashr #xb0a24191  bv_4) (bvnand bv_1 bv_0)) (bvslt (bvshl #x83755a9e  #xbe69ce04 ) (bvsrem #xf5f41198  #xb6291f7e ))))
(assert (bvslt (bvmul (bvnor bv_0 bv_3) (bvadd #xb4a55638  bv_2)) (bvudiv (bvsrem bv_1 #xdc3afbd8 ) (bvnor bv_2 #x4823ce3a ))))
(assert (xor (not (and false true)) (bvule (bvsmod bv_4 #xedcd2233 ) (bvshl bv_1 #xee5d4357 ))))
(assert (bvsge (bvxnor (bvashr #x89271f96  #x00b6fcbf ) (bvadd #xcda1a4c9  bv_0)) (bvurem (bvor bv_3 #x49a3b2fb ) (bvlshr bv_1 #xb6dafd33 ))))
(check-sat)
(exit)
