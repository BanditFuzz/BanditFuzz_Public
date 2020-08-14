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
(assert (bvsgt (bvlshr (bvxnor #x10b6f1ff  bv_2) (bvsmod bv_0 bv_1)) (bvurem (bvnand bv_0 #x0ecd6cb9 ) (bvlshr #x011ddca8  bv_1))))
(assert (and (xor (xor true true) (bvsle #x079c9293  bv_3)) (bvuge (bvsub #x168e5d88  bv_0) (bvsdiv #xe2af01e6  #x8a914900 ))))
(assert (or (bvsgt (bvmul bv_2 bv_0) (bvadd bv_4 bv_4)) (bvugt (bvlshr #xb261e6a9  bv_4) (bvsmod bv_2 #x0c6a6e94 ))))
(assert (bvsge (bvor (bvshl #x1456e238  #xac03678e ) (bvor #xef8ba17d  #x7d016b8f )) (bvand (bvsub bv_1 #x19773681 ) (bvnor bv_2 #x6e3307d8 ))))
(assert (bvugt (bvurem (bvxor #x54b6ee56  bv_0) (bvadd #xb2b5720a  #x2678326c )) (bvand (bvor bv_2 #x809d886f ) (bvsdiv bv_2 bv_1))))
(check-sat)
(exit)
