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
(assert (=> (xor (bvsge #x3b164c8d  #x6038f21e ) (and bool_4 true)) (and (bvsgt bv_2 bv_3) (bvule bv_0 bv_0))))
(assert (not (bvuge (bvudiv bv_0 #xd26dddd0 ) (bvashr #x72b4c5f1  #x388daba1 ))))
(assert (=> (bvsge (bvnor bv_0 #x1af37d97 ) (bvashr #x25d9dda4  #x8c44d2d4 )) (bvsge (bvudiv #xd1c06482  #x1684989b ) (bvurem bv_0 #x7b0f69e8 ))))
(assert (bvuge (bvadd (bvadd bv_4 #x49dc4c6a ) (bvsub bv_4 bv_3)) (bvsub (bvxnor bv_4 bv_0) (bvsdiv bv_4 #x8b2ad27f ))))
(assert (xor (not (or false true)) (bvuge (bvudiv bv_4 bv_3) (bvashr #x97c59e1a  bv_1))))
(check-sat)
(exit)
