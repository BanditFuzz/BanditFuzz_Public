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
(assert (not (bvuge (bvudiv #xfe934ce9  bv_4) (bvsdiv bv_1 #x5edb3301 ))))
(assert (bvslt (bvashr (bvxor bv_3 #x00a98477 ) (bvshl #xbd4f755b  #x32cd913d )) (bvsdiv (bvor #xcd6fe72a  bv_0) (bvnor bv_4 bv_3))))
(assert (bvult (bvsdiv (bvsub #x4fb409ca  #x01079427 ) (bvnor #x77bdd623  bv_3)) (bvnor (bvshl bv_2 bv_1) (bvurem bv_4 bv_4))))
(assert (bvule (bvmul (bvadd #xdbdf735f  bv_3) (bvand bv_4 bv_1)) (bvnand (bvshl bv_3 bv_0) (bvxnor bv_0 #xaf11d330 ))))
(assert (bvuge (bvmul (bvxnor #x86ef09cc  #x7c3ede89 ) (bvsdiv bv_1 #x09fa92b4 )) (bvsrem (bvshl bv_4 #x081f0155 ) (bvurem bv_4 #x0146e328 ))))
(check-sat)
(exit)
