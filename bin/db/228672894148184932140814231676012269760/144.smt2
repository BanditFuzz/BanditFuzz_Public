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
(assert (and (not (bvuge #xcb570bf4  bv_2)) (bvule (bvsub bv_1 #x999c6436 ) (bvnor bv_0 bv_2))))
(assert (bvuge (bvand (bvadd bv_1 bv_2) (bvsmod bv_2 bv_4)) (bvashr (bvadd bv_2 bv_0) (bvsmod bv_4 #x5093f4b2 ))))
(assert (bvult (bvsdiv (bvashr bv_4 #x7367bbd4 ) (bvshl bv_4 #x1c76e2aa )) (bvnand (bvxor bv_2 #x2ab020ea ) (bvsdiv #xe2583783  #xff6f76c7 ))))
(assert (or (bvult (bvshl bv_4 #xd4da5e80 ) (bvand #xf6469329  bv_4)) (bvslt (bvnor #xc9adbcd2  bv_1) (bvnand bv_2 #x08f38d65 ))))
(assert (xor (bvugt (bvmul #x96b8d936  #xa26a2a3c ) (bvashr bv_1 bv_2)) (xor (or true bool_2) (=> bool_0 bool_2))))
(check-sat)
(exit)
