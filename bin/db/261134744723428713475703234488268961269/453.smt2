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
(assert (bvsge (bvor (bvor #xafe8ce60  #x72f2bc15 ) (bvnand #x2441e97c  bv_1)) (bvsub (bvudiv bv_2 #xd211ee39 ) (bvor bv_0 #x0e9f05ab ))))
(assert (bvule (bvnand (bvsmod #x64b49fb2  #xeef263ea ) (bvand bv_1 bv_3)) (bvnand (bvsub #x345172b7  #x0277e9f1 ) (bvudiv bv_2 #x492a49ef ))))
(assert (bvugt (bvor (bvmul bv_1 #xb029aa2c ) (bvsub #x8cf8028e  #xeed2b397 )) (bvmul (bvor #x0b3ba1cc  bv_4) (bvnand bv_4 bv_2))))
(assert (bvsge (bvashr (bvsdiv #x9cdb18b6  #xa1b8fecf ) (bvsub bv_4 bv_3)) (bvmul (bvxnor bv_2 #x48740e47 ) (bvsrem bv_3 #x6b72c16c ))))
(assert (bvuge (bvsdiv (bvudiv #xde9a879e  #x30cef391 ) (bvand bv_2 #xd56cbed5 )) (bvand (bvxor bv_1 bv_3) (bvsub bv_3 #x21e43b62 ))))
(check-sat)
(exit)
