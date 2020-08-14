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
(assert (bvslt (bvsmod (bvsmod #x7b4c5195  bv_0) (bvashr #x18da21d4  #x33a50a98 )) (bvsrem (bvand #x1f402606  #x46d37204 ) (bvnand bv_3 #xa27a6091 ))))
(assert (bvslt (bvsmod (bvshl bv_4 bv_2) (bvurem bv_3 #x6dc0fc00 )) (bvadd (bvsmod #xed92de8f  #x0237134f ) (bvnand bv_2 bv_3))))
(assert (bvsge (bvurem (bvsmod bv_2 bv_3) (bvsmod #x3a2754bc  #xb2fd231d )) (bvudiv (bvashr #x28138b4b  #x76991a32 ) (bvurem #xf11bbb98  bv_0))))
(assert (bvule (bvsub (bvurem #xed6d4310  bv_2) (bvsdiv #x009a327f  #xc5d29e87 )) (bvnor (bvshl #xdb89f707  bv_1) (bvshl bv_1 #x1349bb14 ))))
(assert (bvslt (bvsdiv (bvsrem bv_3 bv_1) (bvsmod bv_3 bv_4)) (bvashr (bvand bv_0 bv_3) (bvsmod #x54a809bb  #x69a4ba4c ))))
(check-sat)
(exit)
