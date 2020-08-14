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
(assert (bvule (bvmul (bvxor #xb14b9f42  #xc973a5a8 ) (bvand bv_4 #x4b6d7d84 )) (bvxor (bvsub #xa85b90fe  bv_3) (bvsrem bv_1 #x363bc623 ))))
(assert (bvsgt (bvand (bvxnor #x15a89c3e  #x1e822629 ) (bvand bv_3 bv_2)) (bvxor (bvmul bv_1 bv_0) (bvurem bv_4 #x3b32f48e ))))
(assert (bvsgt (bvnor (bvadd #x51baf564  #xbc9887fd ) (bvsrem bv_2 #x2a26d166 )) (bvadd (bvshl bv_2 bv_2) (bvmul bv_3 #xccb80de7 ))))
(assert (and (xor (bvuge bv_4 bv_3) (or false true)) (bvult (bvnand #xd983f942  bv_4) (bvsub #x71f77791  #x0cef2abf ))))
(assert (bvult (bvand (bvor #x53dc664f  bv_0) (bvadd bv_2 #xb24bec1e )) (bvlshr (bvsub #x7ff7b8c4  #x9866eb38 ) (bvlshr bv_0 bv_3))))
(check-sat)
(exit)
