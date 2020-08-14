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
(assert (bvsgt (bvxnor (bvurem bv_2 #x6869029f ) (bvxnor bv_0 bv_2)) (bvsmod (bvmul bv_3 #x2117146c ) (bvlshr #x0837093a  bv_3))))
(assert (and (and (xor false bool_2) (and true bool_4)) (bvult (bvsub #x414f4669  #xb764d48d ) (bvsub bv_4 #x01e15707 ))))
(assert (and (bvugt (bvand #x5e82f5d7  bv_2) (bvsmod bv_0 #x2c622d9c )) (bvsle (bvor #x9b9e5e1e  bv_0) (bvadd #x0fefdaab  bv_0))))
(assert (not (bvslt (bvshl bv_4 bv_2) (bvsrem #x0c0523b2  #xb69d4036 ))))
(assert (bvugt (bvshl (bvnor #xd730e2ee  bv_2) (bvand #x9b319961  #xb5a34401 )) (bvshl (bvsmod bv_4 bv_4) (bvmul bv_2 #x4918f324 ))))
(check-sat)
(exit)
