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
(assert (bvuge (bvsmod (bvsrem #xcb123897  #x748a44cc ) (bvnor bv_1 #x708802d5 )) (bvxor (bvsmod #xaf907e1c  bv_2) (bvashr #x1518e035  #xfe9ae6cc ))))
(assert (or (bvsgt (bvlshr bv_3 bv_4) (bvadd bv_1 bv_1)) (not (bvsle bv_0 #x4974f479 ))))
(assert (bvult (bvxnor (bvadd bv_1 bv_0) (bvashr bv_4 #x37a36ab3 )) (bvurem (bvadd bv_4 #x6253038d ) (bvashr #x9b4b0ed5  bv_1))))
(assert (bvule (bvudiv (bvor #x4dbb2475  #xc24b4af8 ) (bvudiv #x95307e5d  bv_2)) (bvmul (bvsmod bv_4 bv_1) (bvshl bv_4 bv_2))))
(assert (xor (bvuge (bvudiv bv_4 bv_1) (bvxnor #xb1ab785e  #x05e4fe2c )) (bvsgt (bvshl #xbf4dae4f  bv_3) (bvmul #x9e76ae99  bv_1))))
(check-sat)
(exit)
