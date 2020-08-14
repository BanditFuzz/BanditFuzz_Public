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
(assert (=> (bvsge (bvmul bv_4 #x0a9192f0 ) (bvnor #x1d330866  bv_3)) (not (not false))))
(assert (bvsgt (bvshl (bvmul bv_3 bv_2) (bvnor #x9cda0709  #xea94faf9 )) (bvudiv (bvurem bv_1 bv_2) (bvnor #x0089ced4  bv_0))))
(assert (xor (not (bvsgt #x2cb1edf1  bv_2)) (or (not true) (bvult #x2dd71967  #xc092591b ))))
(assert (bvsge (bvxnor (bvadd bv_4 #x22fe254d ) (bvsdiv #x3fa8d828  #x39e3f7bc )) (bvmul (bvnor bv_3 bv_0) (bvashr bv_2 #x88313fb7 ))))
(assert (bvsge (bvurem (bvurem bv_2 bv_1) (bvsdiv bv_0 bv_0)) (bvadd (bvand #x3cc33875  bv_3) (bvlshr bv_0 #xa8baa693 ))))
(check-sat)
(exit)
