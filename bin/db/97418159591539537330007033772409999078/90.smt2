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
(assert (bvult (bvsmod (bvnand #x44c069d8  bv_4) (bvor #xa9f40fda  bv_2)) (bvlshr (bvsmod #x80086a40  #xca9e3163 ) (bvand #xe046de61  #xefb21a93 ))))
(assert (bvsgt (bvadd (bvshl bv_2 bv_3) (bvsmod bv_3 bv_2)) (bvadd (bvsub bv_4 bv_4) (bvxnor bv_2 bv_1))))
(assert (xor (bvsge (bvashr bv_3 #xa17df284 ) (bvshl bv_2 #xbc30fc5e )) (xor (bvult #x58524bcb  #x5f6241a0 ) (bvugt #x0b75f8a4  #xa1465825 ))))
(assert (bvult (bvshl (bvurem bv_2 #x3a377456 ) (bvor bv_4 bv_2)) (bvxor (bvnor #xeb01e99d  bv_0) (bvashr #x2d97ad4a  #x73c2c1c9 ))))
(assert (not (bvult (bvmul bv_0 bv_1) (bvsmod bv_2 bv_2))))
(check-sat)
(exit)
