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
(assert (bvule (bvsrem (bvsmod bv_1 #x6946d5b5 ) (bvlshr #x13b1f046  #x33e36032 )) (bvashr (bvnand #xb6445746  #xc77d9cbd ) (bvurem bv_3 bv_4))))
(assert (and (=> (bvuge #x9baa8b55  bv_4) (bvsgt #x9942c405  bv_1)) (bvslt (bvxnor #x1655e22c  #xbb3f7941 ) (bvxnor bv_0 bv_1))))
(assert (bvslt (bvand (bvshl #xd9d10ec3  bv_0) (bvurem bv_4 #x272fb87d )) (bvashr (bvadd bv_3 #xdca6247e ) (bvashr bv_2 bv_4))))
(assert (bvsge (bvadd (bvsdiv bv_2 #x366425ac ) (bvxnor bv_1 #x7a3c4949 )) (bvxor (bvand #x017d1b50  #x11dd42b4 ) (bvxnor #x67bdd7dc  bv_0))))
(assert (bvsle (bvurem (bvurem #xcd2361de  bv_0) (bvxor bv_4 #xb361034d )) (bvurem (bvxor bv_3 #xf03bd09f ) (bvurem bv_2 #x086a58f8 ))))
(check-sat)
(exit)
