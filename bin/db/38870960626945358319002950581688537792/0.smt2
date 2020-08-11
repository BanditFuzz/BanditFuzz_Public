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
(assert (and (and (bvule #x97bd1727  #xf99147b4 ) (bvule #x204fbfbc  bv_2)) (not (=> false false))))
(assert (bvsgt (bvor (bvnor bv_4 bv_1) (bvand #x98efd73e  bv_3)) (bvor (bvsub bv_0 #xb63b8387 ) (bvnor bv_3 bv_2))))
(assert (bvult (bvurem (bvsdiv #xa93893c7  bv_4) (bvxnor #xb891b3e9  #x2556c5e4 )) (bvurem (bvnor bv_2 #xf74e1f8a ) (bvor #xd8d9bb4c  #xa1701bfc ))))
(assert (bvugt (bvnand (bvnor #x16aa0ab7  #x46681322 ) (bvudiv #xf89a93af  bv_4)) (bvor (bvshl bv_0 #xa7ea3042 ) (bvnand bv_2 bv_2))))
(assert (bvsle (bvsrem (bvmul bv_2 #x552ea682 ) (bvashr #x3672b646  #x6862be23 )) (bvudiv (bvnor #x0659d789  bv_4) (bvlshr #x5195faa5  #x57ab9546 ))))
(check-sat)
(exit)
