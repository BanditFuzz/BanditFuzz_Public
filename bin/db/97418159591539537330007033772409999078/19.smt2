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
(assert (or (=> (bvuge #x92d9a727  bv_1) (bvugt bv_3 #x01279e38 )) (bvsle (bvand bv_0 #xbd506c1d ) (bvor #xc58c16a1  bv_3))))
(assert (not (bvult (bvxor #xb6ccd798  bv_3) (bvsub #x1e56db83  #x3ebf8778 ))))
(assert (bvugt (bvashr (bvlshr #x111a26a5  bv_2) (bvmul #x29e7b1d1  #xbb97206b )) (bvsmod (bvnor bv_2 #x5e4dcc81 ) (bvor #x6a7aa2fd  #xf85369cd ))))
(assert (bvugt (bvor (bvashr #xe4069522  #xd84886b2 ) (bvlshr bv_4 #x6a4e7b52 )) (bvxnor (bvnand #x3dfcd840  #xe16fe83a ) (bvsmod bv_4 #x6e2c8648 ))))
(assert (xor (xor (bvsgt #xc4b2ec75  #xa7da9ce2 ) (or false bool_2)) (bvslt (bvadd #x794f827e  #x68f07dd2 ) (bvashr #xa77f02a2  #xfbb9ab5c ))))
(check-sat)
(exit)
