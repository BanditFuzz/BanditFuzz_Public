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
(assert (not (bvslt (bvmul #x3fffa45b  bv_1) (bvsub bv_4 #x57b53128 ))))
(assert (or (bvsge (bvnand bv_4 #xbe5913b8 ) (bvxnor bv_2 #x7a9be742 )) (not (bvule #x88810a01  bv_2))))
(assert (bvule (bvnand (bvand bv_0 bv_0) (bvsrem bv_1 #x6fbec9a7 )) (bvxnor (bvadd bv_0 #xd1c4a348 ) (bvudiv bv_1 #x5e1ab98d ))))
(assert (bvsgt (bvnand (bvxor bv_4 bv_2) (bvsdiv bv_4 bv_1)) (bvnor (bvsmod bv_2 bv_2) (bvnand #x9d2d5643  bv_0))))
(assert (bvsle (bvor (bvadd #x865aa95a  bv_1) (bvmul #x84f31090  #xfefa00a4 )) (bvmul (bvxnor bv_3 #x16c0ff1f ) (bvmul bv_1 bv_2))))
(check-sat)
(exit)
