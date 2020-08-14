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
(assert (bvuge (bvudiv (bvsrem bv_3 #xb3a03a11 ) (bvand #xf9f5510a  #x49112749 )) (bvshl (bvxor bv_3 #xa435ca38 ) (bvxor bv_1 bv_3))))
(assert (=> (bvsle (bvsrem #xf9e05bcb  bv_1) (bvudiv #x0ce44752  #x339cc2bf )) (bvugt (bvmul #x69cd471f  bv_3) (bvsdiv bv_0 #x8b555907 ))))
(assert (=> (xor (bvsge bv_4 bv_2) (bvsge bv_4 bv_3)) (bvslt (bvadd #xc71b11bb  #x8adce54b ) (bvashr #xe87b2094  bv_4))))
(assert (bvslt (bvudiv (bvnor bv_3 bv_0) (bvor bv_0 bv_2)) (bvsdiv (bvshl bv_1 bv_4) (bvsmod #xc9726246  bv_2))))
(assert (not (bvuge (bvshl bv_2 #x30c45464 ) (bvand bv_4 #xe4e668de ))))
(check-sat)
(exit)
