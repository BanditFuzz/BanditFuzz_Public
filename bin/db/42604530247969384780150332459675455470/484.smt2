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
(assert (=> (bvsge (bvand bv_2 #x2dc9f9ff ) (bvxor bv_0 bv_3)) (or (=> true true) (=> false bool_1))))
(assert (bvule (bvurem (bvurem bv_4 #xeebfa569 ) (bvnand bv_1 bv_2)) (bvmul (bvnand #xdf7bc917  bv_3) (bvadd bv_3 bv_2))))
(assert (bvsgt (bvmul (bvor bv_0 bv_4) (bvor #x368ce947  bv_1)) (bvlshr (bvsrem bv_4 #x8ba2e698 ) (bvsdiv #x82060aee  #x82056917 ))))
(assert (=> (or (=> bool_3 true) (bvugt #x7d5a5bd0  #x3639c939 )) (bvslt (bvshl #x1374dc4b  bv_4) (bvnand #x3f7378d1  #x46bc0911 ))))
(assert (bvule (bvor (bvsrem #xddef9876  bv_4) (bvnand #xf11b426a  #xb4edf1d0 )) (bvashr (bvnor bv_0 #x273d6716 ) (bvudiv #x33cf3df6  bv_2))))
(check-sat)
(exit)
