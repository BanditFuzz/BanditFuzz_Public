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
(assert (xor (bvugt (bvmul #x9968d6b5  bv_1) (bvlshr bv_0 #x9b3ba1ab )) (or (bvule bv_3 #x8191994d ) (xor bool_4 false))))
(assert (not (xor (bvuge bv_4 bv_3) (and bool_0 bool_4))))
(assert (bvsgt (bvnand (bvsmod #x72852e33  #x0b9c42ae ) (bvmul bv_0 bv_2)) (bvsmod (bvxor #xad77ad07  bv_0) (bvxnor #x3ab03cca  #x539a460d ))))
(assert (bvugt (bvand (bvsrem #xa2434559  bv_0) (bvsmod bv_1 bv_0)) (bvsub (bvxor bv_0 #x0e57a582 ) (bvashr #x2d961e8f  #x98498845 ))))
(assert (bvsge (bvshl (bvmul #x4fef9720  bv_3) (bvsmod #xa91958cf  bv_3)) (bvashr (bvmul bv_3 bv_4) (bvashr #x044835af  bv_3))))
(check-sat)
(exit)
