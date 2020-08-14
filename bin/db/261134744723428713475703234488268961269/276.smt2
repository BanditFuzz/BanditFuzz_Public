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
(assert (bvugt (bvsub (bvsub #xba1938df  #x7718abfd ) (bvshl bv_1 bv_1)) (bvashr (bvsdiv #x046b69a0  bv_4) (bvsmod #x15d86e6c  bv_2))))
(assert (xor (bvsle (bvurem bv_4 bv_3) (bvudiv #x1d76dd70  #xa0d8ded2 )) (bvult (bvsrem #xab4b379e  #xdf534f17 ) (bvurem bv_1 bv_4))))
(assert (bvugt (bvshl (bvsub bv_3 bv_1) (bvsrem #x94207c66  bv_0)) (bvxnor (bvnand #x80ca6236  bv_3) (bvshl bv_4 bv_3))))
(assert (bvult (bvor (bvsub bv_2 bv_1) (bvshl bv_0 bv_4)) (bvadd (bvor bv_3 bv_1) (bvurem #xc9b73015  #xb994691f ))))
(assert (bvsge (bvxnor (bvxnor bv_2 #xb7739e7b ) (bvmul #x6ea13ec8  bv_2)) (bvadd (bvsmod bv_2 bv_3) (bvsrem bv_0 #x55d45dd7 ))))
(check-sat)
(exit)
