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
(assert (xor (bvuge (bvsrem bv_0 #x8ae9cc10 ) (bvurem bv_4 #x429d6c61 )) (bvslt (bvlshr #xcf37b1aa  bv_2) (bvudiv #x231fd442  bv_3))))
(assert (or (bvule (bvshl bv_0 bv_2) (bvashr #x00155852  #x33aa105f )) (not (xor bool_4 false))))
(assert (bvugt (bvsub (bvsrem #x2ff0f97a  bv_1) (bvsdiv #x296153c8  bv_0)) (bvor (bvxor #xff3a6c02  bv_0) (bvmul #x6acb7811  #xf10bb94a ))))
(assert (and (bvsle (bvudiv bv_3 bv_4) (bvashr #xd8fb724d  #x89a94263 )) (or (bvuge bv_1 bv_4) (xor bool_3 bool_2))))
(assert (bvslt (bvudiv (bvxor bv_1 #x88020a4c ) (bvadd #xde6ed869  #xe60f1a46 )) (bvxor (bvurem #x7d932921  #x635e3f6f ) (bvshl #xfb3b9e80  bv_2))))
(check-sat)
(exit)
