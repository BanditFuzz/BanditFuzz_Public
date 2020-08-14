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
(assert (bvslt (bvadd (bvashr #xa885dc76  #x9f586e6b ) (bvsdiv bv_2 #x7e80299a )) (bvsub (bvsrem #xc840fb76  bv_2) (bvor #xb235f945  #x29b77f9c ))))
(assert (bvsle (bvxnor (bvxor #x12929fd3  bv_2) (bvxnor #xddb96066  bv_0)) (bvnor (bvsdiv #x43215285  #x1a73156e ) (bvsmod bv_1 bv_4))))
(assert (bvsgt (bvshl (bvand #xce271f71  bv_3) (bvurem bv_4 bv_0)) (bvurem (bvadd #x6999dfa4  bv_0) (bvnor bv_0 bv_2))))
(assert (or (bvugt (bvadd #x3c39159a  #xa87b1ce7 ) (bvmul #xc79e5785  #xf4043cfa )) (and (=> bool_4 bool_0) (bvsge bv_0 #x7214712e ))))
(assert (or (bvule (bvmul #x2ee7984d  #x1e935a3d ) (bvshl bv_4 #x208a7b25 )) (bvugt (bvlshr #x19026ed5  #x90a9b55b ) (bvxor bv_3 #x74b57e2e ))))
(check-sat)
(exit)
