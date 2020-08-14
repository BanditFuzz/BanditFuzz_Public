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
(assert (bvule (bvmul (bvsdiv #xe6aa99e0  bv_1) (bvudiv #x54d5214a  bv_0)) (bvmul (bvurem #x0a28d570  bv_3) (bvand #xd411bad4  #xad8e767b ))))
(assert (bvsge (bvor (bvnand #xdfcbd25c  bv_2) (bvadd #x74d51527  #x991182a3 )) (bvshl (bvadd #xe24f7ade  #xf8cb38af ) (bvashr bv_3 bv_2))))
(assert (bvsle (bvudiv (bvlshr bv_3 bv_3) (bvudiv bv_2 #xd569721c )) (bvxnor (bvlshr #x3054cd2b  #xe82081ab ) (bvshl bv_2 #x17868f33 ))))
(assert (not (bvule (bvsrem bv_3 #x5fa3dceb ) (bvor bv_1 bv_3))))
(assert (bvuge (bvor (bvadd #x6da01633  bv_1) (bvlshr #xc9a2a100  #x20c46025 )) (bvxor (bvnor bv_4 bv_3) (bvashr #x0c98f647  #x9f8b32e0 ))))
(check-sat)
(exit)
