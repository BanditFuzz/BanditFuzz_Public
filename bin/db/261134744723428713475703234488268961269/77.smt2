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
(assert (bvsge (bvshl (bvsrem bv_3 #xdc2a9a36 ) (bvsmod #xe12effd7  #xe6e59a7f )) (bvashr (bvnor bv_0 #xc5701baa ) (bvshl #x9c11fae7  #xa80ff2b3 ))))
(assert (bvsge (bvadd (bvsrem #xb07f8d0c  bv_2) (bvashr #x558658f1  bv_3)) (bvxnor (bvsmod #xa4f95964  #x18532890 ) (bvsrem bv_4 bv_0))))
(assert (and (bvsle (bvnor #x5512fdaf  bv_2) (bvlshr #x9df104ab  bv_2)) (=> (xor true bool_1) (bvuge #x27d969ba  #xaec062f3 ))))
(assert (bvsle (bvashr (bvxnor #x3425ee92  #x2bbdab35 ) (bvand bv_0 #xbfb0c2cd )) (bvnand (bvand #x41e8853a  bv_1) (bvnand #x4918c761  bv_3))))
(assert (bvsle (bvxnor (bvnand #xc166123c  #x90b58f64 ) (bvsrem bv_3 bv_0)) (bvashr (bvxor #x700248f3  bv_3) (bvsmod bv_0 bv_1))))
(check-sat)
(exit)
