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
(assert (not (bvugt (bvsub bv_1 #xfe47b164 ) (bvxnor #x9205e29f  bv_1))))
(assert (bvule (bvsmod (bvsub bv_3 #xc5fbe470 ) (bvxnor #x42b222e0  bv_2)) (bvor (bvand bv_2 #xf761a9ee ) (bvsdiv bv_3 bv_3))))
(assert (bvslt (bvlshr (bvlshr #x9d08c441  #x3b399576 ) (bvmul bv_2 bv_3)) (bvmul (bvurem bv_3 #x1302eead ) (bvashr #xde9c5156  bv_1))))
(assert (and (xor (xor bool_1 false) (and false false)) (bvult (bvnor #xcc3870d6  #x2ff0baaf ) (bvxor #xe4c4f6ec  bv_2))))
(assert (bvuge (bvudiv (bvnand #xee4d653a  #xf6851729 ) (bvand #x6bf63812  bv_0)) (bvxor (bvsrem bv_2 bv_0) (bvsdiv bv_0 #x23d215dd ))))
(check-sat)
(exit)
