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
(assert (bvsge (bvurem (bvand #x7302e049  #xbe9a7b81 ) (bvashr bv_4 #x7df15e2d )) (bvshl (bvmul #x433128da  #xd3ae00ec ) (bvand #x96513e83  bv_4))))
(assert (bvslt (bvudiv (bvor #x17a1ba01  bv_4) (bvand bv_3 #xf2178b67 )) (bvudiv (bvsrem bv_2 #x559d3644 ) (bvlshr bv_1 #xcaf92618 ))))
(assert (and (bvult (bvshl #x3bed04ff  bv_4) (bvshl #x695bd018  bv_4)) (bvuge (bvsrem #xbd13be24  #x300d6e1a ) (bvurem #xd63b0621  #xd5027ddb ))))
(assert (bvsgt (bvor (bvudiv #xf3775c82  bv_4) (bvashr #xda3b8c80  #x46130b07 )) (bvudiv (bvand #x26eb4aec  #x17a647ce ) (bvxor bv_0 #xa9e97e07 ))))
(assert (not (xor (or bool_4 true) (bvuge #x021bb08f  #x19b477b1 ))))
(check-sat)
(exit)
