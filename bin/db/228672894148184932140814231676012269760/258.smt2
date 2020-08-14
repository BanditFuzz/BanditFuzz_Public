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
(assert (bvugt (bvsmod (bvurem #x97351b4a  bv_1) (bvnand bv_3 bv_4)) (bvlshr (bvor bv_1 #x71f8e78c ) (bvnor bv_3 bv_1))))
(assert (bvsle (bvnor (bvurem bv_3 bv_0) (bvsdiv #x6c4e883f  bv_0)) (bvadd (bvurem #x29ed9a3d  bv_1) (bvxnor bv_2 #xb67087fe ))))
(assert (=> (bvsle (bvsrem bv_1 #xe3dfc8de ) (bvurem bv_0 bv_4)) (not (bvsle #x19e9e2fd  bv_0))))
(assert (bvugt (bvxnor (bvxnor #x84979b85  bv_1) (bvlshr #xf7d7b76f  bv_4)) (bvnor (bvnand bv_0 bv_2) (bvmul #x1d9e9954  #x7676706d ))))
(assert (bvsge (bvashr (bvlshr bv_3 bv_2) (bvsrem bv_0 bv_4)) (bvudiv (bvsmod bv_4 bv_1) (bvsrem #x46b56475  #x3b4611db ))))
(check-sat)
(exit)
