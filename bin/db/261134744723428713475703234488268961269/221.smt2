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
(assert (bvugt (bvsub (bvnand bv_0 #xb7c0d192 ) (bvxor bv_4 bv_4)) (bvudiv (bvxor bv_1 bv_2) (bvsrem #x8959c1aa  #xde938037 ))))
(assert (=> (bvugt (bvashr bv_3 bv_3) (bvshl bv_2 #xf3756423 )) (not (bvsgt #xc11f8e9d  #xb5e52923 ))))
(assert (bvsle (bvnor (bvand #x8da2760d  bv_2) (bvlshr #xa09e7aec  bv_1)) (bvnand (bvxnor bv_3 #x42d2cd3a ) (bvand #xd9ee43b1  bv_3))))
(assert (xor (xor (and bool_3 bool_0) (bvsgt #x9a02ab50  #x5392a610 )) (or (bvugt #xe4728f1f  #x5e89f9a5 ) (bvsge bv_2 #xdefeabf8 ))))
(assert (and (bvuge (bvurem #xe6cea9e9  #x53d72f68 ) (bvmul #x976a3077  bv_1)) (bvsle (bvlshr bv_2 bv_2) (bvnand bv_0 #x2224f406 ))))
(check-sat)
(exit)
