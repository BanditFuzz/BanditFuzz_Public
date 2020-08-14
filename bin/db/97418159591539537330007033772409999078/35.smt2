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
(assert (bvule (bvmul (bvmul bv_1 bv_1) (bvlshr #x7e850d94  #xe2a59dec )) (bvsrem (bvor bv_2 #x5aaffeca ) (bvshl #xa0bf8098  #x0494ec3a ))))
(assert (bvuge (bvmul (bvadd #xa84c1eba  bv_4) (bvand #x9de6acb4  bv_3)) (bvor (bvadd #xf43e3fdf  bv_4) (bvlshr #x66e07d38  #x688a3d34 ))))
(assert (or (bvugt (bvudiv #xc374c4ea  bv_0) (bvashr #x2f4c91f5  bv_2)) (or (bvsle bv_1 bv_4) (bvsgt #x93372855  bv_2))))
(assert (xor (xor (bvugt bv_4 #x05f95ac6 ) (=> bool_3 false)) (not (xor false bool_0))))
(assert (bvuge (bvor (bvadd bv_0 #xe5415482 ) (bvashr bv_4 bv_3)) (bvudiv (bvmul bv_0 #x8784a4eb ) (bvor #xee98358c  bv_3))))
(check-sat)
(exit)
