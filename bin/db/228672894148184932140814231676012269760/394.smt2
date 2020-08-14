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
(assert (and (bvsge (bvshl #x0241ddd9  bv_3) (bvxor bv_0 bv_3)) (bvult (bvudiv #x3cd7dcb6  #x131898e7 ) (bvnor #xa9e84074  #x153512e1 ))))
(assert (bvuge (bvsrem (bvashr #xa36d4342  #xea320093 ) (bvsmod #x6d417a87  #x748a9a69 )) (bvlshr (bvshl bv_1 bv_2) (bvshl #x3ea963f2  bv_3))))
(assert (=> (or (bvult bv_1 bv_0) (=> false false)) (bvsgt (bvmul #x269ccebc  #xdc27b6da ) (bvashr #xb2308d11  #xbec2955e ))))
(assert (xor (bvult (bvashr bv_0 bv_1) (bvashr bv_0 #xa9153873 )) (not (bvsgt bv_3 bv_3))))
(assert (bvult (bvsdiv (bvnor bv_4 #x2353d3e2 ) (bvsrem bv_3 #x2478b265 )) (bvsrem (bvashr bv_2 bv_4) (bvxnor bv_0 #x32fe7075 ))))
(check-sat)
(exit)
