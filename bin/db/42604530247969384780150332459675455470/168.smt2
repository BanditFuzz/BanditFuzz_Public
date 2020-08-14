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
(assert (bvult (bvurem (bvudiv bv_1 bv_0) (bvor bv_3 bv_1)) (bvnand (bvand bv_2 bv_2) (bvsub #xec42243e  bv_2))))
(assert (bvsgt (bvsub (bvshl #x9c5abaa4  #x2b55c503 ) (bvudiv bv_4 #x8ebe3da3 )) (bvnand (bvsub bv_3 bv_2) (bvsub #xda43a4a0  #x4710996b ))))
(assert (=> (bvsgt (bvxor bv_3 bv_2) (bvsmod #x616b39e6  #x226e816a )) (bvult (bvnand bv_1 #x6514a7f1 ) (bvsub #x01c33d3c  #x0c035c24 ))))
(assert (not (bvsge (bvsrem bv_3 #xbffb74ad ) (bvmul bv_0 bv_4))))
(assert (and (xor (bvsle bv_1 bv_3) (=> bool_1 bool_1)) (or (bvule #x0efb565b  bv_1) (=> bool_2 true))))
(check-sat)
(exit)
