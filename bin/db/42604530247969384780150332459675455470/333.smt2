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
(assert (bvugt (bvsmod (bvurem #xcdd39706  bv_3) (bvor #xb9c45079  bv_2)) (bvor (bvudiv #x427c10f7  bv_4) (bvnor #xc097060b  bv_4))))
(assert (or (bvuge (bvxor #x37243e32  bv_2) (bvsdiv #x1fc57ab4  #x99ce0ba7 )) (bvsge (bvsub bv_1 #x0d3a5b3a ) (bvmul bv_3 #x7af8b9ab ))))
(assert (bvsgt (bvurem (bvashr bv_3 bv_1) (bvshl bv_1 #x864f93c6 )) (bvand (bvashr bv_4 #x366c3e0d ) (bvshl #x0fac2662  #xcdd6e18f ))))
(assert (bvugt (bvurem (bvshl bv_1 bv_3) (bvsmod bv_1 bv_0)) (bvor (bvmul #x106915f6  bv_0) (bvadd #xd2ebb351  #x55ce9f59 ))))
(assert (bvult (bvsdiv (bvmul bv_2 bv_3) (bvmul bv_2 bv_3)) (bvor (bvsmod #x7240bf96  bv_4) (bvxor #x1e1aabd9  bv_1))))
(check-sat)
(exit)
