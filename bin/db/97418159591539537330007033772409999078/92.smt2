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
(assert (bvsle (bvsdiv (bvsrem bv_4 bv_2) (bvsdiv bv_2 bv_2)) (bvnand (bvsdiv #x617d5ee7  bv_2) (bvsrem #xec5ce3c0  bv_4))))
(assert (bvuge (bvxnor (bvurem bv_4 #x3fb161cd ) (bvsub bv_4 #xf6d03de6 )) (bvor (bvlshr #x057e9d9a  #x5ac765d6 ) (bvmul #xda5ad8d9  bv_3))))
(assert (not (not (bvsle #x0c2e406f  #xcd37da61 ))))
(assert (bvugt (bvsmod (bvand bv_4 bv_3) (bvxnor #x3e1ee8be  bv_1)) (bvxor (bvxnor #x25b8c493  #xf9747706 ) (bvsmod bv_1 #x4e4f4907 ))))
(assert (bvsge (bvxor (bvlshr bv_4 bv_2) (bvmul #xac0ec231  bv_0)) (bvsrem (bvnand #xb60fbc79  bv_2) (bvnand #xe047c841  bv_2))))
(check-sat)
(exit)
