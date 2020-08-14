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
(assert (and (and (bvule #x35fef496  bv_4) (bvule #xa7b34c34  bv_1)) (bvsge (bvlshr #x09fb252a  #xa86e28f4 ) (bvlshr #x4accd675  #x63980ef5 ))))
(assert (bvsle (bvnor (bvand bv_3 bv_3) (bvashr bv_3 #xfef4be1d )) (bvadd (bvand #x2135bd85  #x2ca1d13a ) (bvsrem #xfbca75ee  bv_0))))
(assert (bvult (bvashr (bvashr bv_0 bv_1) (bvsrem bv_4 #x877ae955 )) (bvsmod (bvadd bv_3 bv_1) (bvsrem bv_4 bv_2))))
(assert (bvuge (bvnor (bvxnor #xdaecf1a8  bv_1) (bvlshr #x144d6375  bv_3)) (bvxor (bvurem #x3668e513  #x6c324a02 ) (bvudiv #x95be058c  bv_0))))
(assert (=> (bvult (bvudiv #x3c715af7  #x858c2472 ) (bvudiv bv_0 bv_4)) (or (=> false bool_2) (and bool_4 bool_3))))
(check-sat)
(exit)
