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
(assert (not (bvule (bvnor #xcf6e534c  bv_4) (bvudiv #xcb50bf98  #xf254073f ))))
(assert (=> (bvuge (bvashr bv_3 bv_2) (bvsrem #x1b6839c5  bv_0)) (bvuge (bvsub #xdca9a771  bv_0) (bvor #x99a7c871  bv_3))))
(assert (bvult (bvashr (bvand bv_2 #x4bfc8066 ) (bvor bv_0 bv_4)) (bvor (bvlshr bv_2 #x3ac3ab62 ) (bvlshr #x9ce3c637  bv_2))))
(assert (bvuge (bvnor (bvnor bv_4 #x357f6275 ) (bvlshr bv_2 bv_0)) (bvxor (bvor #x6f7f36f2  bv_4) (bvudiv bv_4 bv_3))))
(assert (bvsle (bvor (bvsub #x9a975e9e  bv_2) (bvashr #x7390fdfe  #xb6a29e7a )) (bvudiv (bvshl bv_0 #x2d5a632c ) (bvxor #xd5836ffc  #xa5486edb ))))
(check-sat)
(exit)
