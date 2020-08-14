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
(assert (xor (bvuge (bvxnor #x6d7fcab4  bv_1) (bvxnor bv_4 #x5eb31b96 )) (bvult (bvnor bv_1 bv_0) (bvnand #x0ed6f66f  #xc97d2943 ))))
(assert (xor (bvuge (bvsdiv bv_0 bv_2) (bvnand bv_0 bv_0)) (bvult (bvlshr #x1aa294b9  #xc80a2a8a ) (bvxnor #x9dd608a1  bv_1))))
(assert (bvsge (bvor (bvsrem #xba360215  #x41d7be3f ) (bvsmod bv_0 bv_2)) (bvsub (bvsrem #x9cc21bd7  #x94dfa229 ) (bvashr #x3d5b2bac  bv_2))))
(assert (bvslt (bvnor (bvor #x98a903b5  bv_0) (bvsdiv bv_3 bv_0)) (bvxor (bvor #x3d9311ec  bv_0) (bvand #x846aad03  #x40c59d3a ))))
(assert (or (xor (bvuge #x912c0a15  #x63630873 ) (not bool_3)) (or (=> bool_3 bool_1) (or bool_0 false))))
(check-sat)
(exit)
