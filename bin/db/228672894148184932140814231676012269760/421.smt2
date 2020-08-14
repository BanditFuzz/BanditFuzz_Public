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
(assert (=> (bvuge (bvshl bv_4 #x3631a688 ) (bvshl #x3399bdf6  bv_1)) (bvugt (bvurem bv_4 #x955fd7c1 ) (bvadd bv_4 bv_3))))
(assert (bvslt (bvlshr (bvadd bv_0 #x75b2b3c5 ) (bvadd bv_4 bv_3)) (bvshl (bvor #x24a14c13  #x763deb6e ) (bvsdiv bv_2 #x046ecb28 ))))
(assert (bvugt (bvsrem (bvxnor #x1c43bd5c  bv_3) (bvadd #x58fc6415  #x8877a298 )) (bvshl (bvor #xddc3f264  #xb87bb9f4 ) (bvsmod bv_4 bv_3))))
(assert (not (bvule (bvand bv_2 #x2469b2d3 ) (bvadd bv_2 #x6edb7f70 ))))
(assert (bvule (bvnor (bvxnor #xdab37f28  #xaed50ba5 ) (bvxnor #xdc0322bf  #xb8311567 )) (bvadd (bvxor #x7944937d  #x961a7047 ) (bvmul bv_3 bv_3))))
(check-sat)
(exit)
