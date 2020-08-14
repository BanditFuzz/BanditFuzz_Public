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
(assert (or (or (=> false true) (bvule #xdca15d7f  #xee152f69 )) (bvugt (bvnor bv_0 #xd44b6d8f ) (bvlshr #x0275ba01  #xbbac4165 ))))
(assert (and (bvule (bvshl #xc96036f2  #x19c2a855 ) (bvsub bv_0 #xbe72af94 )) (bvult (bvlshr #xf5fddf28  #xce216dc5 ) (bvsmod bv_4 #xdac4c740 ))))
(assert (=> (bvuge (bvand bv_2 bv_0) (bvxnor bv_4 bv_1)) (xor (bvugt #x2702f961  bv_3) (bvuge #x4d2c1c1b  bv_3))))
(assert (and (bvule (bvlshr bv_0 bv_1) (bvxor #x63c02406  bv_3)) (bvult (bvlshr bv_0 #xd4f29fbe ) (bvnand bv_4 #x8694748e ))))
(assert (and (bvsge (bvadd bv_4 bv_1) (bvashr #xefcbe24c  #x1f9d124d )) (bvsle (bvxnor bv_0 bv_0) (bvudiv bv_3 #xa245906e ))))
(check-sat)
(exit)
