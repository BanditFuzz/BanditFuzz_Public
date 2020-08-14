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
(assert (and (xor (not false) (bvsgt #xbd5038cd  #xa451d74c )) (bvslt (bvurem bv_0 #x69dfb002 ) (bvsrem bv_3 bv_0))))
(assert (bvuge (bvashr (bvsmod #x19b4f595  #x87ea0205 ) (bvurem bv_3 #xf919f58d )) (bvnor (bvand bv_0 bv_4) (bvsrem #x90ee41b0  bv_1))))
(assert (bvult (bvsmod (bvadd bv_4 bv_4) (bvlshr #x591580b9  bv_4)) (bvand (bvashr #x76d74daa  bv_4) (bvurem bv_1 #x69ce4161 ))))
(assert (bvule (bvsrem (bvmul #xd760ecff  bv_4) (bvsrem #x95922af2  bv_0)) (bvsmod (bvnand #x92602341  #x89e03003 ) (bvsub #xf7b821d0  bv_3))))
(assert (bvsge (bvsrem (bvsmod bv_1 bv_2) (bvxor #x398c2106  #x5e2750d7 )) (bvxor (bvsub bv_4 #xd11a2382 ) (bvshl #x28cbca05  #x9add7925 ))))
(check-sat)
(exit)
