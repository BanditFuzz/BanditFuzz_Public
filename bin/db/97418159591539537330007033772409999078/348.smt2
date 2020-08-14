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
(assert (bvslt (bvsub (bvudiv #xbe781c5e  bv_2) (bvsdiv #xe2c6fa19  #xfde64d0f )) (bvudiv (bvashr #x99f2c431  #xf4f739df ) (bvxor bv_1 #xe893953b ))))
(assert (bvuge (bvnor (bvor bv_0 bv_4) (bvxor bv_1 bv_0)) (bvsmod (bvnor #x3318a966  #x7839e556 ) (bvsub #x25d826ac  #x077be748 ))))
(assert (bvsle (bvnor (bvudiv bv_4 #x6ed8bc27 ) (bvxor bv_3 bv_4)) (bvlshr (bvxor bv_1 #x494a824e ) (bvashr #x50072fed  bv_2))))
(assert (bvslt (bvand (bvand bv_3 bv_3) (bvshl #xa6b793c6  #xc16c12a2 )) (bvxor (bvsrem bv_4 bv_2) (bvsmod bv_3 bv_2))))
(assert (=> (bvsge (bvadd #x144ca531  bv_4) (bvurem #x5e4ecd31  #x725aa772 )) (bvugt (bvsrem bv_2 #x9ebc99ba ) (bvsdiv bv_1 bv_3))))
(check-sat)
(exit)
