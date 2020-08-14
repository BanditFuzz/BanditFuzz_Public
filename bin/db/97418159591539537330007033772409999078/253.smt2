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
(assert (bvugt (bvxor (bvadd #xb6942232  bv_3) (bvnand bv_0 #x8f6ca8b7 )) (bvudiv (bvnand #xee9a5241  bv_3) (bvsub bv_2 #xe51665dc ))))
(assert (xor (not (bvsgt #xcfd08d2a  #x7c86b5fa )) (bvugt (bvurem #x3564361e  bv_1) (bvnor #xfd2aec30  #x4d2adddb ))))
(assert (bvugt (bvxnor (bvxor #xbcd46c20  #xa7c55ef2 ) (bvxor #x834679da  #x906211b3 )) (bvsub (bvnor bv_3 bv_3) (bvashr #x9b765cea  #x4a6616e8 ))))
(assert (=> (=> (bvsle #xa351a76f  bv_2) (bvslt bv_2 #xe54a8f86 )) (not (bvult bv_2 bv_1))))
(assert (bvsge (bvadd (bvsrem #xcc034c42  #xb75e6a13 ) (bvor #x23cee190  #x9e9cebb6 )) (bvadd (bvand #x6aa7a181  #xbae3e003 ) (bvurem bv_1 bv_3))))
(check-sat)
(exit)
