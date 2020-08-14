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
(assert (bvsle (bvadd (bvsrem #x2c0e1b03  bv_3) (bvand #x69ee57b0  bv_3)) (bvlshr (bvsdiv #xa272380f  bv_4) (bvurem bv_0 bv_4))))
(assert (bvslt (bvsrem (bvsub bv_1 bv_4) (bvshl #xf9c719f2  bv_4)) (bvshl (bvmul #x207d27c6  bv_1) (bvand #x2bcf6988  #x179c1327 ))))
(assert (not (bvule (bvurem bv_2 bv_3) (bvxnor #xaf864494  #x9cff2ba9 ))))
(assert (bvugt (bvnand (bvsrem bv_0 bv_1) (bvsmod #xf18b9238  bv_3)) (bvmul (bvxnor bv_1 bv_1) (bvor #x238ef1a6  #x533d7dfa ))))
(assert (bvugt (bvsrem (bvsdiv #x238b8e64  bv_2) (bvsdiv #x23893426  #x79a9b4c4 )) (bvashr (bvor bv_0 bv_2) (bvnand #x74eaf122  #x094c66ab ))))
(check-sat)
(exit)
