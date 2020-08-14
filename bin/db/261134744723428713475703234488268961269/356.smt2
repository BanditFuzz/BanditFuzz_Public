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
(assert (xor (xor (=> true bool_3) (bvslt #x349d1770  #xac3ddd98 )) (bvugt (bvsmod bv_0 #x3da328ee ) (bvsmod bv_0 #xff114c78 ))))
(assert (or (=> (bvult #x56b10fd4  #xb6a47074 ) (=> true true)) (bvugt (bvurem bv_2 bv_0) (bvand bv_0 #x33e3b4ce ))))
(assert (bvule (bvnand (bvurem #x1600aef7  #x74aeb2b6 ) (bvnor bv_3 bv_1)) (bvsmod (bvsub bv_1 #x34bcd9bc ) (bvsrem #xd617225e  #xc23db2f8 ))))
(assert (bvsgt (bvsrem (bvxnor bv_1 bv_1) (bvsmod #x93268c0b  #xb91d49ca )) (bvnor (bvsrem #xfd31c765  bv_4) (bvsrem bv_1 #x21acccd1 ))))
(assert (bvslt (bvadd (bvudiv #x42e948dc  #x61f68e25 ) (bvsrem bv_2 #x6ec06f89 )) (bvmul (bvurem #x6593dc8d  bv_2) (bvlshr bv_0 #x8ed50ebd ))))
(check-sat)
(exit)
