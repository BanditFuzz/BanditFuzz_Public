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
(assert (not (not (bvule bv_2 #x7f552af5 ))))
(assert (or (=> (bvsgt #xda39d65e  bv_4) (bvsgt bv_2 #xa6b5f545 )) (=> (bvsle bv_4 bv_3) (bvsle #x9e28b80b  #xd2a4f946 ))))
(assert (not (xor (bvult #x58ccfc16  bv_1) (bvule bv_2 #x4c89dae8 ))))
(assert (not (bvule (bvor bv_1 #x5569cfbd ) (bvand #x52cc80eb  bv_0))))
(assert (xor (bvult (bvxor bv_4 bv_2) (bvsrem #xe454dddf  bv_4)) (=> (bvsge #xb489971e  #xd49f0874 ) (or bool_4 bool_0))))
(check-sat)
(exit)
