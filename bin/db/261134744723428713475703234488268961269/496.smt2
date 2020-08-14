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
(assert (bvuge (bvudiv (bvsmod bv_3 bv_0) (bvnand #xa03d526e  bv_4)) (bvsmod (bvsub bv_3 bv_4) (bvand #x2b8dde8f  bv_0))))
(assert (bvslt (bvurem (bvsub bv_4 #xedc782a0 ) (bvor #x45da9bff  #x51b43a18 )) (bvxor (bvurem #x904fe69b  #x1e4fc3b1 ) (bvxnor bv_1 bv_1))))
(assert (=> (and (and bool_0 bool_2) (bvule bv_1 #x1040c17d )) (or (bvslt bv_2 bv_0) (bvult #x1fdaf1e1  #xabffcffb ))))
(assert (bvslt (bvsmod (bvsmod bv_0 bv_1) (bvadd #xaaab8086  bv_4)) (bvurem (bvxnor #xdcdd68cc  bv_3) (bvmul bv_0 #xe5b9e20b ))))
(assert (bvule (bvor (bvsub bv_2 bv_4) (bvsub bv_4 #xaedd9bfa )) (bvudiv (bvxor bv_1 #x60c3701f ) (bvor #x0df93990  #x22eafc51 ))))
(check-sat)
(exit)
