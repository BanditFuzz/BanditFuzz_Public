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
(assert (=> (xor (bvsge bv_2 bv_1) (and bool_2 bool_0)) (=> (or false false) (bvsge #x0005eeca  #x836fd16e ))))
(assert (=> (bvsge (bvshl bv_4 #xdfc78794 ) (bvxnor bv_2 bv_4)) (or (and true bool_3) (bvslt bv_1 #xafb254bb ))))
(assert (or (=> (bvslt bv_0 bv_1) (and true bool_1)) (bvugt (bvashr bv_0 bv_3) (bvudiv #xd938883c  bv_2))))
(assert (xor (not (bvsge #x4f588481  bv_2)) (and (or true bool_0) (bvsge #x0dbbe658  bv_3))))
(assert (xor (bvule (bvshl bv_3 #x3decbed0 ) (bvxor bv_0 #x2930906c )) (bvsge (bvshl bv_1 #x7520d491 ) (bvashr bv_2 bv_1))))
(check-sat)
(exit)
