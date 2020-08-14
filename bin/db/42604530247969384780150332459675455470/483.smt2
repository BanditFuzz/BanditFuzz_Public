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
(assert (bvult (bvor (bvlshr #xee73ae75  #xba72ec0c ) (bvxor bv_3 bv_3)) (bvudiv (bvadd #x9fdd4d4a  #x6329c5e4 ) (bvadd #xab0acb57  bv_3))))
(assert (bvslt (bvurem (bvnand #x2369cb71  bv_0) (bvxor #xb229115e  bv_4)) (bvadd (bvurem #x469bcac4  bv_1) (bvsrem bv_2 #x4e14918f ))))
(assert (bvsle (bvnand (bvsmod bv_1 bv_4) (bvand bv_1 bv_2)) (bvlshr (bvor bv_3 bv_3) (bvudiv #xa4c0d928  #x1dc30966 ))))
(assert (xor (and (not true) (bvugt bv_2 bv_3)) (not (and bool_3 true))))
(assert (bvslt (bvand (bvnand bv_2 bv_2) (bvxnor #x1f583199  bv_2)) (bvxnor (bvadd #x3ad42e8e  bv_3) (bvand bv_4 bv_4))))
(check-sat)
(exit)
