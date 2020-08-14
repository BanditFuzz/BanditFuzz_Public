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
(assert (=> (not (xor true false)) (bvule (bvadd bv_2 #x8dcfb44f ) (bvmul bv_0 bv_0))))
(assert (bvuge (bvurem (bvsmod #x2368c838  #xeefeb342 ) (bvnor bv_0 #x8bbc8987 )) (bvlshr (bvmul #x7326def9  #x54bd17f6 ) (bvand bv_1 #xd59f683b ))))
(assert (bvsle (bvxor (bvshl bv_3 #x5d8fe0e8 ) (bvmul bv_1 bv_4)) (bvand (bvxnor #x4935b53c  #x4b8ffb4e ) (bvudiv #x0e7aba04  bv_0))))
(assert (not (bvsge (bvxnor bv_0 bv_0) (bvashr #xde02550c  bv_4))))
(assert (bvugt (bvsmod (bvsub bv_3 #x07dfeb98 ) (bvsmod #xd2344cf0  #xb4ce100e )) (bvashr (bvshl bv_2 #xc2622b13 ) (bvsmod #x2e32e359  bv_4))))
(check-sat)
(exit)
