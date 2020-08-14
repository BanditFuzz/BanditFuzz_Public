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
(assert (=> (bvsgt (bvashr #xfcf34a15  #xac3c2891 ) (bvmul #x811f7302  bv_1)) (bvuge (bvmul bv_3 #x8956afaa ) (bvadd bv_1 #x66e63fa7 ))))
(assert (bvule (bvand (bvsrem #x618a8e23  #x8dbda5b1 ) (bvor bv_0 bv_3)) (bvxor (bvashr bv_4 bv_3) (bvudiv #x9f535332  #x4649424f ))))
(assert (bvuge (bvor (bvxnor #x9f491db3  #xffaacc07 ) (bvudiv bv_0 #xd2a805dc )) (bvudiv (bvurem bv_4 #x7c453ad9 ) (bvashr bv_1 bv_2))))
(assert (or (=> (xor bool_1 true) (bvsgt #x399c11b3  #x0b2120a4 )) (bvsle (bvashr #x52dc30f3  #x31467464 ) (bvsrem bv_3 #x50e9eb88 ))))
(assert (=> (and (bvuge bv_1 bv_0) (bvsle #xbe5594d5  #xcfd62c6b )) (bvsge (bvxnor bv_2 #x45c21f5c ) (bvand #x1303b7f3  #x72ee2183 ))))
(check-sat)
(exit)
