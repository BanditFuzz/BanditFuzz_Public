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
(assert (or (bvugt (bvnor #x3949f13a  #x0669a390 ) (bvadd bv_0 #xefb67026 )) (bvsge (bvxnor bv_0 bv_2) (bvsdiv bv_1 bv_1))))
(assert (bvsle (bvadd (bvand #x32590ed3  #xba99c5f0 ) (bvmul bv_3 bv_2)) (bvsrem (bvashr bv_1 bv_0) (bvxor bv_0 #xc1c770fe ))))
(assert (not (not (bvule #x3f32503e  #x8ffd251c ))))
(assert (and (bvuge (bvurem bv_4 bv_0) (bvnand #xa9bd9247  #x63da1c9b )) (not (bvule bv_4 bv_3))))
(assert (bvsle (bvsdiv (bvudiv bv_4 #x9436d9f2 ) (bvsdiv #x40ca3444  #x35fd5b01 )) (bvadd (bvashr bv_2 #x3772d7d8 ) (bvor bv_3 bv_1))))
(check-sat)
(exit)
