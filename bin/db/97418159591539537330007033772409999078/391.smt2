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
(assert (=> (and (bvuge bv_0 #xb9da6768 ) (bvsgt bv_0 #xb14d4597 )) (bvule (bvxnor bv_3 #x7dd80d3b ) (bvsrem #xaba79d2d  bv_0))))
(assert (bvsle (bvudiv (bvand #x4c3e622e  bv_1) (bvsub #xb970abb0  #x9c5b24ef )) (bvashr (bvashr bv_2 bv_0) (bvashr bv_2 #x7b30e2dc ))))
(assert (xor (xor (bvsgt bv_4 #x2c9d9d0b ) (bvuge bv_1 #xf25ef766 )) (or (bvult #x07024ec0  bv_0) (bvugt #x47584bbd  bv_3))))
(assert (bvuge (bvshl (bvashr #x1837cfd9  #x85477b2e ) (bvsdiv #xe9de4fef  #x932310f9 )) (bvand (bvand bv_4 #xf4768190 ) (bvmul bv_2 bv_4))))
(assert (bvuge (bvudiv (bvsdiv #xdbbc587a  bv_0) (bvand bv_1 bv_3)) (bvsmod (bvnand #x2b7f91e6  #x5206600e ) (bvnand bv_0 bv_3))))
(check-sat)
(exit)
