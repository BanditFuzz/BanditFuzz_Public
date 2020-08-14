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
(assert (not (bvugt (bvnand bv_2 bv_3) (bvsub bv_1 bv_2))))
(assert (bvsgt (bvor (bvand #x63214988  bv_4) (bvnor #xcaa4956f  bv_3)) (bvsmod (bvadd #x0681b44e  #x5cd968db ) (bvnand bv_1 bv_1))))
(assert (and (=> (bvule #x10be34fc  #x9149d88b ) (and bool_0 true)) (bvslt (bvsdiv #x9fa850b5  bv_0) (bvshl #x78466af3  bv_0))))
(assert (=> (not (and false bool_4)) (or (bvugt bv_4 bv_3) (or false bool_0))))
(assert (bvugt (bvudiv (bvor #x69b12458  bv_1) (bvurem #xbaa07058  bv_0)) (bvxor (bvadd bv_2 #xa806a324 ) (bvudiv #x7620f139  #x44478860 ))))
(check-sat)
(exit)
