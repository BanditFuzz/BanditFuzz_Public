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
(assert (and (not (bvsle bv_1 #xac6f48cc )) (not (and false bool_0))))
(assert (bvsle (bvsmod (bvnor bv_4 #x1eecd8c2 ) (bvxor #xd132ac5a  bv_1)) (bvsrem (bvsdiv bv_4 #x56bf2ccb ) (bvashr #x4cc51a40  #xb5065b1a ))))
(assert (xor (bvult (bvsdiv #x006fb3ca  bv_2) (bvlshr #x98a85476  #xb52db66b )) (or (=> true false) (bvsge bv_1 bv_1))))
(assert (bvuge (bvsrem (bvsmod #x540bef08  bv_3) (bvashr #x04fb90fb  #x98fca83b )) (bvadd (bvsub bv_3 #xf89945d3 ) (bvnand #xc7e00dda  bv_0))))
(assert (bvslt (bvashr (bvmul #x7961de13  #xc8038bf0 ) (bvnand bv_2 #x294c3d37 )) (bvlshr (bvsrem bv_0 #xa18494fb ) (bvsdiv bv_2 #x657cd79a ))))
(check-sat)
(exit)
