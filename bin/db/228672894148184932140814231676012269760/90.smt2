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
(assert (bvule (bvor (bvudiv #xd4297132  bv_3) (bvurem bv_2 #xeb259f69 )) (bvurem (bvudiv bv_2 #x15843d89 ) (bvshl bv_4 #x9357347e ))))
(assert (bvslt (bvsrem (bvor bv_3 #x001ba1a8 ) (bvand bv_0 #xb4cdd7bc )) (bvshl (bvand #x04be47ac  bv_3) (bvor bv_1 bv_4))))
(assert (not (bvule (bvsub bv_0 #xa3be9bd9 ) (bvxnor bv_3 bv_2))))
(assert (bvsge (bvmul (bvadd bv_4 bv_3) (bvlshr bv_2 bv_3)) (bvnand (bvsrem bv_2 #xa608bda5 ) (bvmul bv_2 bv_4))))
(assert (and (xor (bvuge #x34346393  #x9e841bca ) (xor true false)) (bvule (bvurem bv_0 bv_1) (bvxor #xd0ea983b  #xd0c178b1 ))))
(check-sat)
(exit)
