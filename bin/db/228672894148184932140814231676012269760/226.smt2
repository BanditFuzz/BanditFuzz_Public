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
(assert (bvult (bvlshr (bvurem bv_3 #xd4f0ebb3 ) (bvxor #x19e1cbe1  #xa6b7f239 )) (bvand (bvshl bv_4 #xa3626fcd ) (bvxor bv_3 #x1ebf1f31 ))))
(assert (bvule (bvnor (bvshl #x47aa204b  bv_4) (bvmul bv_2 #x1062c006 )) (bvor (bvsub #xdf06ad92  #xacbddfa6 ) (bvnand #x0c5b8d7a  bv_1))))
(assert (bvsgt (bvashr (bvmul #x6acd88d4  bv_0) (bvadd #xc5168c40  bv_0)) (bvlshr (bvshl #x28fc00eb  #xa9ba12a3 ) (bvashr bv_0 bv_2))))
(assert (bvule (bvashr (bvurem #x8ecc2dbe  bv_1) (bvashr bv_2 #xd58c1b39 )) (bvurem (bvshl bv_2 bv_3) (bvlshr bv_3 #x133c2804 ))))
(assert (xor (bvslt (bvsmod #x9b5e992e  bv_0) (bvsmod bv_2 #xf409560d )) (and (bvuge #xf41ed1ce  bv_0) (bvult bv_1 #xeb76feaf ))))
(check-sat)
(exit)
