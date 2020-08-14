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
(assert (bvugt (bvurem (bvlshr #x151a902a  bv_0) (bvurem bv_2 #xd14619f9 )) (bvnand (bvnand #x70b2b691  #x1f3b20e4 ) (bvlshr #xd146ac4c  #xeb85e2e4 ))))
(assert (xor (bvult (bvxnor bv_4 bv_0) (bvand bv_4 bv_3)) (bvuge (bvsdiv #x95b4baf5  bv_0) (bvshl #xb41fedc2  bv_1))))
(assert (bvult (bvsmod (bvnand #x9fafe6e2  bv_0) (bvsub #x0eb832da  #x560b5ae7 )) (bvsdiv (bvnand #x1929e275  bv_3) (bvadd bv_0 bv_3))))
(assert (bvsle (bvxor (bvand bv_1 #x635a2c00 ) (bvsmod #x03545918  #x43c0c5c6 )) (bvsub (bvudiv bv_4 #xa0860109 ) (bvxor bv_0 bv_1))))
(assert (bvsgt (bvor (bvshl #xb295ed93  #x2d9208fd ) (bvmul bv_3 bv_2)) (bvnor (bvxnor #x77f66894  #xf0278b6e ) (bvurem #x4b595cb2  #x1e4b7d14 ))))
(check-sat)
(exit)
