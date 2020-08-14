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
(assert (or (bvult (bvshl #xdf5bc829  bv_3) (bvshl #xd72769b7  bv_0)) (bvugt (bvshl bv_2 bv_4) (bvnand #x6f9a2349  #x70db92e9 ))))
(assert (bvuge (bvxnor (bvashr bv_0 #x14166168 ) (bvashr bv_4 bv_0)) (bvxor (bvshl bv_4 bv_2) (bvsub bv_0 #x76b42ed0 ))))
(assert (bvsle (bvsmod (bvxor bv_0 bv_4) (bvor #xda03004b  #xc55ea513 )) (bvsrem (bvurem #xfa23a321  #xca46989a ) (bvxnor bv_1 bv_1))))
(assert (and (=> (bvsge bv_1 bv_2) (bvule bv_4 #xd75bb434 )) (=> (bvslt #x1f4fa201  bv_1) (bvsge bv_3 bv_0))))
(assert (xor (or (bvsge bv_0 #xde100ab1 ) (=> false true)) (bvule (bvsrem bv_1 #xed58cc04 ) (bvmul bv_4 bv_0))))
(check-sat)
(exit)
