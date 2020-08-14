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
(assert (=> (bvugt (bvor #xa3678831  #x6222eb22 ) (bvsmod bv_1 #x4bd20b7a )) (bvult (bvsmod #x132e6ecf  bv_4) (bvashr bv_0 bv_2))))
(assert (bvslt (bvsmod (bvsdiv bv_2 bv_4) (bvsmod bv_0 bv_2)) (bvudiv (bvor bv_4 #x5669f0d4 ) (bvor #x56246090  bv_1))))
(assert (bvslt (bvlshr (bvadd #x6614c8f6  bv_2) (bvsdiv #x7581a468  #xa7f62fb1 )) (bvshl (bvor bv_0 bv_2) (bvmul bv_3 bv_0))))
(assert (not (or (bvugt #xf4521ae4  #x9945074d ) (or true true))))
(assert (bvult (bvsrem (bvsmod #xeb7e36de  #xc147dbf3 ) (bvor bv_4 bv_0)) (bvxnor (bvsdiv #x5ba4cc10  bv_3) (bvashr bv_3 #xda1d10fd ))))
(check-sat)
(exit)
