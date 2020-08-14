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
(assert (not (bvslt (bvsrem bv_1 bv_2) (bvor #xa1caa030  bv_2))))
(assert (bvugt (bvxnor (bvurem #xf3099b20  #x2d93e35e ) (bvlshr #x7998d89e  #x3774a104 )) (bvashr (bvand bv_2 bv_3) (bvsdiv bv_4 bv_4))))
(assert (bvsge (bvnor (bvadd bv_3 #x7bfcb880 ) (bvashr bv_0 #x767516c5 )) (bvxor (bvudiv bv_2 #x9cefee01 ) (bvsdiv #xef076a1f  bv_0))))
(assert (bvsgt (bvxnor (bvsmod bv_2 #x0fdb186a ) (bvshl #xf0197315  bv_1)) (bvxor (bvsrem bv_0 #x4e2210dd ) (bvsdiv #x61287890  bv_0))))
(assert (bvsle (bvxnor (bvsub bv_0 bv_4) (bvlshr #x9d45b9c8  bv_4)) (bvnand (bvxor #x48bb00e5  #x60b9f453 ) (bvnor bv_4 bv_2))))
(check-sat)
(exit)
