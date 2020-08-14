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
(assert (xor (not (xor false false)) (xor (not false) (or true true))))
(assert (and (or (bvsle #xa2df0db7  bv_0) (=> false false)) (bvult (bvsub #xba0cbf79  #x6bf021f0 ) (bvxnor #x5e5941c0  bv_0))))
(assert (=> (bvsle (bvnand #xd4783fc7  #xabd73601 ) (bvshl #x77bb254e  bv_1)) (bvsle (bvxnor bv_2 #xeec53c29 ) (bvashr #xafa78d87  bv_1))))
(assert (bvsge (bvlshr (bvsub bv_3 #x1c75d6eb ) (bvnor bv_3 bv_4)) (bvlshr (bvsrem bv_3 bv_2) (bvmul #x0f046ead  bv_3))))
(assert (bvsge (bvsdiv (bvsub #xe1fe7f06  bv_2) (bvashr bv_2 #x6cafe55e )) (bvurem (bvudiv #xb9298ea4  #x0c1d8edb ) (bvor bv_3 #x809a202a ))))
(check-sat)
(exit)
