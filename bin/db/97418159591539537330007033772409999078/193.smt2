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
(assert (xor (bvslt (bvsdiv bv_3 bv_0) (bvor #xa4e3b037  #x5c88c74c )) (=> (bvsgt bv_2 #x6e303145 ) (bvugt #x45cec403  #x7d6d24ca ))))
(assert (bvsle (bvshl (bvsdiv bv_3 bv_1) (bvnand bv_0 bv_1)) (bvor (bvadd #xabe2439b  bv_3) (bvand #x2d8d7f9b  #x29269b58 ))))
(assert (bvslt (bvudiv (bvsub #x811b910f  bv_4) (bvnor bv_1 #x0ac1fc7b )) (bvsdiv (bvashr #xd5f81ca6  #xa8a25d03 ) (bvshl bv_3 bv_0))))
(assert (and (bvuge (bvxnor #x2455ba4d  #x2cd1e30d ) (bvnand #xff38cc44  #xf9ed0f4e )) (bvsge (bvsub #xad261edf  #x627f9a25 ) (bvmul #xf22f2a86  #xc5134d39 ))))
(assert (bvule (bvnor (bvashr #x58770551  #x90503a6b ) (bvudiv bv_3 bv_1)) (bvnor (bvnand bv_4 #xac02f470 ) (bvxor #x49731130  bv_4))))
(check-sat)
(exit)
