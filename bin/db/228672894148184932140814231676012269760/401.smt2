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
(assert (bvsgt (bvlshr (bvor #x75c97276  bv_4) (bvxor #x4ad6a782  #xa22c2286 )) (bvnor (bvadd bv_4 #x85654332 ) (bvxor #xafb11455  #x74dc1aad ))))
(assert (bvugt (bvshl (bvshl bv_4 #x21827148 ) (bvmul #x0a9d041c  bv_2)) (bvurem (bvor #x2aa4471a  bv_1) (bvmul bv_2 bv_2))))
(assert (bvsge (bvsmod (bvnand bv_4 bv_1) (bvlshr bv_3 #x516075ef )) (bvnand (bvsub #x2adcd0b2  bv_4) (bvshl bv_4 bv_0))))
(assert (not (or (xor false bool_3) (bvsle bv_1 #x4b6500f4 ))))
(assert (or (bvsge (bvlshr bv_4 bv_1) (bvsdiv bv_1 bv_1)) (and (bvsgt bv_0 bv_2) (bvugt bv_1 #x2aaf832f ))))
(check-sat)
(exit)
