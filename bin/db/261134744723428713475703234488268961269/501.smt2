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
(assert (bvugt (bvshl (bvashr #xea3272f1  #x20eed3cf ) (bvudiv bv_3 #xdf0ed4a5 )) (bvudiv (bvsdiv bv_1 #xbd5cd4e8 ) (bvlshr bv_2 bv_4))))
(assert (bvuge (bvadd (bvashr bv_4 bv_1) (bvsdiv bv_3 #xaf0b7282 )) (bvsub (bvnand #xb3670135  #x8aff9063 ) (bvsmod #x1aa5ae20  bv_2))))
(assert (bvult (bvshl (bvsub #xe8105a80  bv_4) (bvxor bv_0 #x5caa3fb4 )) (bvxnor (bvnor #x16f9051e  bv_3) (bvudiv #x98611dc1  #xf4033a17 ))))
(assert (xor (bvult (bvashr bv_4 bv_0) (bvxnor #x99f987d5  bv_2)) (=> (not bool_3) (xor bool_3 bool_2))))
(assert (bvuge (bvnand (bvlshr #xf7d926ba  #x422a4c9f ) (bvxor bv_1 #x388a9e6a )) (bvnor (bvmul bv_3 bv_1) (bvlshr #x135cf808  #x7cb09001 ))))
(check-sat)
(exit)
