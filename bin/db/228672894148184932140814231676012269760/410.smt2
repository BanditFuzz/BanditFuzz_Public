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
(assert (bvsle (bvnor (bvsrem #x22ed8682  bv_0) (bvnor #xb83b52df  #xf8498b59 )) (bvashr (bvlshr bv_3 #x6289fa19 ) (bvxor bv_1 #x4b39074c ))))
(assert (=> (and (bvsgt #x0e61f158  #xa0119140 ) (bvugt #x83a93469  #x695193bd )) (bvsge (bvxor #x15eb792d  #xe7ae76d7 ) (bvsmod #x0282a269  bv_3))))
(assert (bvsle (bvurem (bvshl #xed7ea7ad  #xec094b1d ) (bvxor #xc9377593  bv_2)) (bvadd (bvashr #xec44eada  bv_0) (bvxnor bv_3 bv_2))))
(assert (bvule (bvxor (bvadd bv_1 bv_4) (bvmul bv_1 #x2b56b4d2 )) (bvor (bvnand bv_0 bv_1) (bvor bv_1 bv_2))))
(assert (not (bvugt (bvor bv_3 #xbced6352 ) (bvmul #xd767d0e5  #x3fa6b8d3 ))))
(check-sat)
(exit)
