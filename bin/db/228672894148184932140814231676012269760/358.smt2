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
(assert (bvugt (bvadd (bvxor #x9dd015e5  bv_4) (bvshl #x0847c9d5  bv_2)) (bvudiv (bvashr bv_3 #x09e4135d ) (bvsmod #x89fe19e7  #xa40e1809 ))))
(assert (not (bvsle (bvlshr bv_1 bv_4) (bvadd bv_0 #x9e769915 ))))
(assert (bvslt (bvudiv (bvor bv_2 #x446b1934 ) (bvand #x579eea55  #xc58c4bc2 )) (bvlshr (bvadd #x27b4e252  #x078ab5d7 ) (bvlshr #x2e794731  bv_1))))
(assert (xor (not (bvslt bv_4 bv_0)) (xor (and bool_3 false) (xor false bool_2))))
(assert (bvugt (bvand (bvshl bv_0 bv_1) (bvsub #x255e46d7  #x575ebce1 )) (bvurem (bvnor bv_3 bv_3) (bvxor bv_0 #xbb1a10b5 ))))
(check-sat)
(exit)
