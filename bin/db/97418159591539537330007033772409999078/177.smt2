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
(assert (bvsgt (bvshl (bvsmod bv_0 #xf5f00766 ) (bvmul #xe0080dfc  #x3d5c5cd3 )) (bvlshr (bvsdiv #x9a8b0954  #xb030b3c6 ) (bvadd bv_1 bv_4))))
(assert (bvuge (bvshl (bvshl #x346619b0  bv_3) (bvnor bv_3 bv_1)) (bvudiv (bvsub #x0dc1c777  bv_1) (bvsrem #xa06737e2  bv_4))))
(assert (or (xor (bvule #x5fe52155  bv_0) (or true bool_3)) (and (bvugt bv_1 bv_0) (bvsgt #x2c274809  #x135f4445 ))))
(assert (=> (bvsle (bvadd bv_3 #x9a8c0597 ) (bvadd bv_1 bv_4)) (bvugt (bvsdiv bv_3 #xcf5794b3 ) (bvurem #x98cab4f4  #xce39d844 ))))
(assert (and (=> (=> true bool_1) (or bool_3 bool_2)) (bvule (bvmul bv_0 bv_0) (bvshl #x23ed151b  #xa466e2df ))))
(check-sat)
(exit)
