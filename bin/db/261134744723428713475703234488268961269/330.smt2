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
(assert (bvule (bvand (bvadd bv_2 bv_0) (bvand bv_0 #xf2da26a4 )) (bvand (bvsmod #xb7bbbe9d  bv_0) (bvxor #x560656ab  bv_2))))
(assert (bvule (bvlshr (bvsrem #x60d3844f  bv_2) (bvor #x86fe2d81  #x58038234 )) (bvsdiv (bvsmod bv_2 bv_0) (bvsrem bv_0 #x3cc44c2c ))))
(assert (bvsle (bvsrem (bvmul bv_1 #xf03fccb6 ) (bvashr bv_2 #x68911cc8 )) (bvurem (bvsrem #x4fd5cfad  #x6e938d85 ) (bvsdiv #x0112cf6a  bv_3))))
(assert (=> (bvslt (bvashr #x2b611501  #x70a19b84 ) (bvnand #x9079c3ab  #xb29e5695 )) (xor (and false true) (bvsgt #xdfe38fa1  #xa82dc817 ))))
(assert (bvugt (bvashr (bvxor #xf34541ec  bv_3) (bvmul bv_1 #xeb7bef87 )) (bvxnor (bvnand bv_2 #x946679b8 ) (bvand bv_0 bv_3))))
(check-sat)
(exit)
