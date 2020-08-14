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
(assert (xor (bvuge (bvand bv_1 #x694aee34 ) (bvsdiv bv_1 bv_0)) (and (=> bool_0 bool_3) (or true bool_0))))
(assert (or (=> (bvugt bv_4 #x8b5e5c2a ) (or false false)) (bvsle (bvxnor #x624b88a7  bv_0) (bvsdiv bv_2 #x23a84ce8 ))))
(assert (bvuge (bvand (bvshl bv_1 #xc04f6944 ) (bvmul #x41b38e4f  bv_2)) (bvand (bvurem bv_1 bv_3) (bvurem #x20095e6b  bv_1))))
(assert (xor (bvult (bvand #x16b9f50c  #x1275b620 ) (bvudiv bv_4 bv_4)) (bvsgt (bvxnor bv_3 #xfdd873bb ) (bvxor bv_4 #x4123281f ))))
(assert (bvsgt (bvand (bvmul bv_4 bv_3) (bvxor bv_1 bv_4)) (bvnand (bvsub bv_3 bv_3) (bvand #x6880524d  bv_0))))
(check-sat)
(exit)
