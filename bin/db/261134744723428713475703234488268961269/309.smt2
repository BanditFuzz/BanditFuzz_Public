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
(assert (bvult (bvnand (bvnand bv_1 bv_3) (bvurem bv_3 #x8ce79e96 )) (bvlshr (bvurem #x7a742d7a  #x850ac39a ) (bvadd bv_2 bv_3))))
(assert (xor (bvugt (bvxor #x9d924f6b  #x27ac0103 ) (bvsub #x15caf574  #xff5d2f1a )) (or (bvsle #x7daa0810  bv_4) (=> bool_4 false))))
(assert (bvsgt (bvsrem (bvudiv #x372a1478  #x35fb6a7c ) (bvsrem #x4ce36761  bv_3)) (bvnand (bvsdiv bv_4 #xb9698448 ) (bvxnor bv_3 bv_4))))
(assert (and (bvult (bvxor #xb741abfc  #xddbeed2e ) (bvudiv #x87042d6d  #xcdcfcfa9 )) (bvugt (bvand #x00dd5352  #x67cdb3b2 ) (bvashr #xa4c6ba15  #xef291c8e ))))
(assert (or (or (bvsgt bv_3 bv_3) (bvsgt #x7bc77f11  #xc0466031 )) (or (bvule bv_1 #x56e9c1fb ) (and bool_0 true))))
(check-sat)
(exit)
