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
(assert (bvule (bvurem (bvsdiv bv_0 #x7d7d3a31 ) (bvurem #x93b251ec  #x98b65e0b )) (bvurem (bvudiv #x61896d2b  #xc158f763 ) (bvsdiv bv_3 bv_0))))
(assert (bvslt (bvxor (bvurem #x3e2683b7  #x65ca8c23 ) (bvxnor #xf9cfbdb0  bv_3)) (bvand (bvsrem bv_4 #x8c3e903a ) (bvsub #x80b3fc3a  #x678e7871 ))))
(assert (and (bvsle (bvsdiv bv_4 #x036874b1 ) (bvxnor #x2d4c0511  bv_0)) (bvsle (bvor bv_4 #xff1bcd8f ) (bvadd #xd4fae000  bv_4))))
(assert (and (and (bvsge #x89b31608  #x673829fc ) (bvult bv_0 #xdd8ad9b5 )) (or (bvuge #xcb55f604  #x448e6203 ) (bvsgt #xe003dd5f  #x9a190b85 ))))
(assert (not (and (bvugt #x3a0f68c1  #x98e8ba4d ) (bvsge bv_1 bv_3))))
(check-sat)
(exit)
