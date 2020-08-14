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
(assert (xor (bvule (bvnand #x18229049  #x42a4cbab ) (bvudiv bv_1 bv_0)) (=> (bvslt #x6fc442ad  #xf68a4934 ) (bvsgt #x2f20aeb2  #x113e09d2 ))))
(assert (bvslt (bvsub (bvsub #x6324e814  bv_1) (bvadd bv_1 #x9d70109c )) (bvlshr (bvnor bv_2 #xcd8137a1 ) (bvnand bv_1 bv_3))))
(assert (bvsge (bvadd (bvlshr #xd2f21c93  #x574e3238 ) (bvnor bv_3 #x691ea867 )) (bvand (bvurem bv_1 bv_0) (bvsdiv bv_0 bv_3))))
(assert (bvslt (bvmul (bvsdiv #x336469f0  bv_1) (bvudiv bv_4 bv_4)) (bvsrem (bvurem #x755664d8  #xc5084c8c ) (bvsrem #x1ff80ca2  #xaa4e26e6 ))))
(assert (=> (bvugt (bvmul #xd8155fc7  bv_3) (bvand #xc7f47c30  bv_1)) (bvult (bvashr #x67897d39  #x82ab751a ) (bvadd bv_4 #x925cc580 ))))
(check-sat)
(exit)
