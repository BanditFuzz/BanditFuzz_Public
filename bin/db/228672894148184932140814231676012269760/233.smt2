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
(assert (bvule (bvand (bvurem bv_2 bv_2) (bvsrem bv_0 #x6319c843 )) (bvlshr (bvshl bv_1 #xd81274e5 ) (bvnor #x3aa6369a  bv_3))))
(assert (or (xor (bvugt #x24279469  bv_1) (=> false true)) (bvuge (bvashr bv_3 #xba03b0b6 ) (bvxnor bv_3 bv_4))))
(assert (bvsgt (bvxor (bvand #xce226009  #x3eadb3fe ) (bvsdiv bv_2 bv_4)) (bvnor (bvsdiv #x911b681f  #x5ddf995e ) (bvsmod #xd86ee0e3  bv_0))))
(assert (bvsle (bvlshr (bvsdiv bv_1 bv_1) (bvurem bv_2 #x7fe63ab5 )) (bvnand (bvnor #x1c566a99  #x5e3d163f ) (bvnor #x361840c3  bv_0))))
(assert (bvsge (bvsrem (bvnand #x9c45e8fd  #x24a14ad8 ) (bvnor #xc0b636bf  bv_4)) (bvmul (bvor #x9932700a  #xfa9fb325 ) (bvurem #x55296324  bv_4))))
(check-sat)
(exit)
