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
(assert (or (bvsge (bvsrem bv_2 #x34985041 ) (bvshl bv_3 #xac5309a8 )) (bvsgt (bvshl bv_1 bv_0) (bvsub bv_0 #x55149988 ))))
(assert (bvuge (bvmul (bvsmod #x85025e67  bv_2) (bvmul bv_0 #xc3e43183 )) (bvashr (bvsrem bv_2 bv_1) (bvashr #xa2787fc3  #x5f2efc9a ))))
(assert (bvult (bvnand (bvsrem bv_3 #x43e7bbf9 ) (bvmul bv_0 #xe89bef00 )) (bvxor (bvmul #x98ffa1cc  #x4c2e67fa ) (bvlshr bv_1 #xb5058179 ))))
(assert (bvsge (bvxor (bvlshr bv_2 bv_4) (bvor #x2e281854  bv_0)) (bvnand (bvsrem bv_3 #xec9e0949 ) (bvsub #x99ea5b3e  bv_3))))
(assert (bvult (bvsmod (bvshl #x5bb37d21  bv_3) (bvadd bv_0 bv_4)) (bvnand (bvnand #x36a588ce  #x93793f3d ) (bvxnor #xdd3b1a23  #xe430a236 ))))
(check-sat)
(exit)
