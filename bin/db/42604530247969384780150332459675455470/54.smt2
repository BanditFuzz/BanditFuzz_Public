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
(assert (bvugt (bvnand (bvmul bv_2 #x3e1f73cc ) (bvsdiv bv_0 bv_2)) (bvnor (bvsub #x1c403b81  bv_2) (bvsdiv bv_2 bv_0))))
(assert (bvugt (bvnor (bvsrem bv_3 #x07f148b4 ) (bvor #x1d82f12a  #x1ec45bab )) (bvudiv (bvor #xcb385cc2  #xec9a7dbd ) (bvnor bv_4 #xa0bb1fdd ))))
(assert (bvult (bvmul (bvudiv #xe8508d3c  #x12f15214 ) (bvadd bv_4 bv_3)) (bvsdiv (bvashr #x17447730  #xc517078b ) (bvurem bv_0 #xcfa4c94d ))))
(assert (xor (=> (and true bool_0) (and false false)) (bvult (bvlshr #xc1b76963  bv_1) (bvxnor #x17956e87  bv_4))))
(assert (not (bvult (bvlshr bv_3 #x546106ac ) (bvashr bv_3 bv_2))))
(check-sat)
(exit)
