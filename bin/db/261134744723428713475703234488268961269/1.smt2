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
(assert (or (bvsle (bvsmod #x0457e77e  #xc79ab252 ) (bvashr bv_0 #x41aaf738 )) (xor (bvule #xc59abb29  #x6cf386c1 ) (or bool_3 bool_0))))
(assert (bvult (bvsmod (bvsrem bv_0 bv_3) (bvlshr bv_4 bv_3)) (bvsrem (bvadd bv_1 #xb42e98e4 ) (bvxnor bv_0 bv_2))))
(assert (bvslt (bvashr (bvurem #xe6954e83  #xfbe210fa ) (bvudiv #xc5eab849  bv_4)) (bvshl (bvlshr #x6f775a70  #x6994eafb ) (bvlshr #x7ca53318  bv_1))))
(assert (bvsge (bvshl (bvashr bv_2 #xa1bbd0b4 ) (bvxnor bv_3 bv_0)) (bvlshr (bvand #xb3425433  bv_1) (bvashr #x31a5f7c3  bv_4))))
(assert (not (bvsge (bvsub bv_1 bv_4) (bvurem bv_3 bv_3))))
(check-sat)
(exit)
