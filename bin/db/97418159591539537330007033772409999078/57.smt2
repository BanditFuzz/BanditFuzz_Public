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
(assert (=> (bvslt (bvsrem bv_2 #x27f73397 ) (bvadd bv_4 bv_2)) (and (bvsle bv_3 #x7e59195f ) (bvuge #x49eb2adb  bv_1))))
(assert (bvule (bvlshr (bvudiv bv_2 bv_1) (bvsmod #x31edf66f  bv_1)) (bvsub (bvsdiv #x88ee1eef  #xcaf9ab6c ) (bvsdiv #xc28413fd  bv_4))))
(assert (not (or (bvsgt bv_3 bv_0) (xor bool_0 bool_1))))
(assert (bvslt (bvnor (bvashr #x810959f0  #x8c0774af ) (bvurem bv_2 bv_0)) (bvsmod (bvsub #xeaf76277  #xb8f60d87 ) (bvxnor bv_2 bv_0))))
(assert (bvugt (bvsdiv (bvsmod #xbafbfcde  #xa2f9a295 ) (bvsrem #x5f2c23b7  #x0d41e47e )) (bvnor (bvsub bv_3 bv_1) (bvshl #x52540875  #x89a2626d ))))
(check-sat)
(exit)
