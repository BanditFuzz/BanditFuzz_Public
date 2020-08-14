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
(assert (not (bvsle (bvxor #xe0426503  #x7ec51fbd ) (bvadd bv_4 bv_4))))
(assert (=> (or (bvult #xf39c246f  bv_1) (bvule #x3b97e5db  bv_2)) (or (bvule #x6f27a63a  #xd551e7dc ) (xor bool_1 true))))
(assert (bvugt (bvashr (bvxor bv_2 bv_4) (bvlshr #x7164557e  #x93420b46 )) (bvor (bvmul bv_1 bv_0) (bvlshr #x7804e8a3  #x27924ebf ))))
(assert (=> (bvugt (bvsrem #x9740c176  #x848bdeda ) (bvlshr bv_1 bv_4)) (not (not bool_2))))
(assert (or (or (bvsge bv_0 bv_2) (bvsge #x50e3a8e6  bv_2)) (bvsge (bvor #x7fbea7ff  #x72026310 ) (bvxnor #xde171b96  bv_4))))
(check-sat)
(exit)
