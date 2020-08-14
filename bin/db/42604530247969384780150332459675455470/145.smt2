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
(assert (bvsgt (bvxnor (bvnand #x9138697a  bv_0) (bvmul bv_4 bv_4)) (bvadd (bvsrem bv_0 #x6dc65c12 ) (bvashr #xbdb8e084  bv_3))))
(assert (bvslt (bvand (bvshl bv_3 #x388271e1 ) (bvnand bv_1 #xd8aa6594 )) (bvand (bvudiv bv_1 #x12e490f3 ) (bvshl #x0c3ecbd6  bv_0))))
(assert (xor (not (=> false bool_2)) (bvslt (bvand bv_1 bv_0) (bvudiv #x6a9d99f6  bv_0))))
(assert (bvsgt (bvadd (bvnor #x514f2994  #xce32e85f ) (bvmul #x144cbf3c  bv_3)) (bvashr (bvand bv_1 bv_1) (bvlshr #xb72a00ad  bv_1))))
(assert (bvugt (bvnor (bvand bv_3 #x19138bfa ) (bvashr bv_2 bv_2)) (bvand (bvurem bv_3 bv_2) (bvsdiv #x968bd37b  bv_4))))
(check-sat)
(exit)
