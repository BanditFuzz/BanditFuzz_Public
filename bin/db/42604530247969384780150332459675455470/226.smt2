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
(assert (bvult (bvudiv (bvxor bv_3 #x2510c485 ) (bvsub #xdcd32257  bv_4)) (bvsrem (bvshl #x400ff01f  bv_3) (bvnor bv_4 bv_3))))
(assert (bvule (bvlshr (bvnor #x17a5c453  #xa04d9be6 ) (bvmul #x41b0699b  bv_1)) (bvsub (bvnor #x437946b4  bv_4) (bvsrem #x85bfa7ce  bv_3))))
(assert (bvuge (bvsub (bvlshr bv_1 #xc29254fb ) (bvashr bv_4 bv_4)) (bvadd (bvlshr #xcff5999b  #xced58fe4 ) (bvurem #xd23e76fc  #x27d821e5 ))))
(assert (bvugt (bvlshr (bvor bv_1 bv_3) (bvsrem bv_0 #x5533307c )) (bvsmod (bvurem bv_0 #x1e328f3b ) (bvxor bv_4 #x74e4cf21 ))))
(assert (bvsge (bvor (bvsub bv_4 bv_0) (bvmul #x901d5cde  #x2cd9f6ca )) (bvsdiv (bvurem #x13dc62ed  #x81580831 ) (bvsub bv_1 bv_2))))
(check-sat)
(exit)
