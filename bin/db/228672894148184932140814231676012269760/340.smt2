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
(assert (and (and (bvugt #xd72ed51b  #x25d3bf59 ) (bvuge bv_3 bv_0)) (=> (xor true true) (and bool_1 false))))
(assert (bvult (bvsdiv (bvashr bv_2 bv_3) (bvmul #x759861ce  bv_2)) (bvxor (bvsmod bv_4 #x0a07f635 ) (bvsmod #xa7bf5512  #x82263482 ))))
(assert (xor (bvsle (bvurem #x1f3bcb16  bv_2) (bvsub bv_1 #x27afe1c7 )) (xor (not true) (not false))))
(assert (xor (not (or bool_3 true)) (not (bvsgt bv_0 #xfb366f00 ))))
(assert (=> (bvsgt (bvudiv #x2d30dba5  bv_2) (bvxnor bv_0 #x29246ae1 )) (bvsgt (bvlshr #x30a397ca  #x111df8da ) (bvudiv #xf19a998f  #xc824b02c ))))
(check-sat)
(exit)
