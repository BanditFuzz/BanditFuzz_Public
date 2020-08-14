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
(assert (bvuge (bvand (bvxor #x42dbeb24  #x2377a8b9 ) (bvsrem #x6f72f5ca  #x747df942 )) (bvadd (bvsmod #xb0b6cd92  #x3c690390 ) (bvnand #xb374a298  #x24d36ea5 ))))
(assert (bvsge (bvmul (bvnor bv_3 #xd0d1804e ) (bvnor #x2ede072e  bv_2)) (bvsdiv (bvsdiv #x08b6306f  #xafeb2376 ) (bvnor bv_0 #x23945c93 ))))
(assert (bvsle (bvand (bvxor #x19ca1198  bv_0) (bvudiv #xf6d9621b  #x2cc51eb7 )) (bvnor (bvlshr bv_0 #x553549b0 ) (bvxor bv_0 bv_0))))
(assert (bvsgt (bvxnor (bvudiv #xe880b5b4  #xde8146cf ) (bvsdiv #x5e98a564  bv_0)) (bvlshr (bvand bv_0 #x738b06dc ) (bvudiv #x39d101fa  bv_2))))
(assert (bvult (bvlshr (bvxor bv_0 #x519167cf ) (bvshl bv_4 #xbc11d386 )) (bvand (bvxor #x9c6a726f  #xd7d7e19d ) (bvsdiv #x0332fbdd  #x2c699ae2 ))))
(check-sat)
(exit)
