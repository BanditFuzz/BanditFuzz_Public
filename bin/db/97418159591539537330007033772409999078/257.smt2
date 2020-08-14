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
(assert (bvslt (bvnand (bvmul bv_2 bv_0) (bvashr #x629414ab  bv_4)) (bvsdiv (bvudiv bv_2 #x206cab8b ) (bvsmod #x6c78857b  #x3b3cffd7 ))))
(assert (bvuge (bvor (bvnand #x468057ee  bv_3) (bvmul #xfe4c5cc2  #x9add6057 )) (bvashr (bvor bv_4 bv_0) (bvshl bv_3 bv_2))))
(assert (=> (and (bvsgt bv_3 bv_2) (and false false)) (bvsle (bvxnor bv_3 bv_3) (bvadd #x9d117111  bv_3))))
(assert (or (bvsge (bvsdiv bv_3 bv_4) (bvsrem #x2a359978  #x4845d2ce )) (bvugt (bvxor bv_0 bv_2) (bvshl #x14b474d1  bv_4))))
(assert (not (bvsge (bvor bv_3 #xbd9343a3 ) (bvlshr bv_1 #x195fcc54 ))))
(check-sat)
(exit)
