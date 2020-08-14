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
(assert (xor (bvule (bvsrem bv_4 bv_3) (bvnand #x24b94488  bv_3)) (bvule (bvnand #xcdd4ed49  bv_3) (bvsmod bv_4 #x97f61804 ))))
(assert (xor (xor (and true false) (not true)) (bvsge (bvsub #x6a154776  bv_3) (bvxor #xdc3ff034  bv_4))))
(assert (bvugt (bvnand (bvsrem #xf0bc982e  bv_2) (bvashr bv_2 bv_4)) (bvsrem (bvsdiv bv_2 bv_4) (bvlshr #x49c8e2d3  #xfffbd020 ))))
(assert (and (or (bvslt #x1e5937c8  bv_4) (bvslt bv_1 #xb3bb600e )) (or (bvsgt bv_1 bv_4) (bvule #xdf63b172  #xbe6edd47 ))))
(assert (bvslt (bvmul (bvurem #x744c2317  bv_4) (bvurem bv_2 bv_2)) (bvsdiv (bvnor #x0c8061cd  #x0161a207 ) (bvor #x28fe44ae  #xc5c19056 ))))
(check-sat)
(exit)
