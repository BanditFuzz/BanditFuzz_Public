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
(assert (bvugt (bvlshr (bvadd #xf0428cf9  #x1e66377a ) (bvsrem bv_2 #x0ed0086f )) (bvxor (bvmul #xa3fe90f1  bv_3) (bvsdiv #xc6caf343  bv_1))))
(assert (bvslt (bvsub (bvsub #xaf097afc  #x2cbf83d9 ) (bvsmod #xff0248e0  bv_0)) (bvadd (bvshl #x9a107d12  bv_3) (bvsdiv #x5c267c01  #xeaf242d7 ))))
(assert (=> (xor (bvugt bv_0 #x283bf0ee ) (and bool_2 true)) (bvugt (bvshl #x7a284a31  #xd017fd1c ) (bvxor bv_0 bv_2))))
(assert (bvugt (bvlshr (bvsmod #x9805715a  #x4e2280e8 ) (bvadd #x5bad369b  bv_2)) (bvsdiv (bvadd bv_1 bv_3) (bvxor bv_0 #x5c1d1482 ))))
(assert (=> (bvsgt (bvor #x000563fd  bv_2) (bvurem #xce8db9e9  #x05421fd2 )) (bvslt (bvor bv_1 #xb8b0a65a ) (bvnand bv_0 #xb62c0e96 ))))
(check-sat)
(exit)
