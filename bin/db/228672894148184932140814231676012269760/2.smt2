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
(assert (bvult (bvnand (bvxnor #x9227eb1d  #x87e10da7 ) (bvxnor #x342457a0  bv_4)) (bvsmod (bvnor bv_4 bv_4) (bvlshr #xdb1e375c  bv_2))))
(assert (=> (not (not false)) (bvslt (bvxnor #x1e345c98  bv_3) (bvxnor #xa7cd0b26  #x47c7a24a ))))
(assert (not (bvult (bvnand #x76e37077  #xe1aefd59 ) (bvnor #xfa4ca285  #x1a38be84 ))))
(assert (xor (bvult (bvsmod #x5e827e93  bv_4) (bvshl #xbc2b7ce5  #x68c417af )) (=> (bvsge bv_4 bv_4) (or false bool_0))))
(assert (bvult (bvnand (bvashr #x2ae0e650  bv_0) (bvadd #x7e15695d  bv_4)) (bvsub (bvand bv_0 #x3aa76b77 ) (bvashr bv_3 #x64c2b21f ))))
(check-sat)
(exit)
