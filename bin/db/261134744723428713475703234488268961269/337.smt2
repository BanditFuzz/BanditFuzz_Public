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
(assert (or (not (and true false)) (bvsgt (bvand #xe9139f84  #xa8dbe19a ) (bvxnor #xa4b62129  #xfe2b1be4 ))))
(assert (bvule (bvor (bvnor #x679c887c  #x57c2e45b ) (bvsdiv #x379f6bcd  bv_0)) (bvxor (bvor bv_0 #x238c8902 ) (bvnor bv_2 #x72671ec5 ))))
(assert (bvsgt (bvxor (bvsmod bv_1 #xed4ee878 ) (bvor #x43ed51b7  #x02d39792 )) (bvlshr (bvxor bv_3 #xf0ce051e ) (bvshl bv_0 #x4ef99938 ))))
(assert (bvugt (bvnand (bvsmod #x61a6abed  #xd9157c53 ) (bvand bv_2 bv_2)) (bvand (bvudiv #xab9c7988  bv_2) (bvand #x3ef3c970  #x3180303c ))))
(assert (bvule (bvadd (bvsdiv bv_1 bv_2) (bvxnor bv_1 #x4f422b9e )) (bvadd (bvudiv bv_0 bv_4) (bvlshr bv_2 #xda52d47e ))))
(check-sat)
(exit)
