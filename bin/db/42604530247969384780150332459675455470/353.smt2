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
(assert (=> (bvuge (bvmul #x4b13f5aa  bv_0) (bvnand #xf0323358  bv_2)) (bvult (bvsub bv_4 #xe6057d76 ) (bvudiv #x3183c0f8  bv_1))))
(assert (and (bvsge (bvshl #x5e4480ed  bv_2) (bvudiv #xd77f0278  #x2adc0597 )) (and (xor bool_0 bool_2) (bvult #x726a43bc  bv_0))))
(assert (not (and (bvsge bv_0 bv_4) (bvsge #xe784e0e8  bv_0))))
(assert (bvule (bvnor (bvnand bv_1 bv_4) (bvurem #x5373e8f2  bv_3)) (bvudiv (bvsrem #xc8985754  #x44e2e65c ) (bvsmod #xbcbcd903  bv_0))))
(assert (bvsle (bvsrem (bvnand bv_2 bv_3) (bvadd bv_2 bv_4)) (bvand (bvxor bv_0 bv_0) (bvlshr bv_4 #x5d41bcd4 ))))
(check-sat)
(exit)
