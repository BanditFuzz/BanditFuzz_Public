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
(assert (bvult (bvshl (bvxor #x091baead  #xc19e94e8 ) (bvashr bv_4 bv_4)) (bvxnor (bvsub #x45f0ad81  bv_4) (bvor bv_2 #x6825aa87 ))))
(assert (and (not (bvult bv_2 #x67f1bc2d )) (bvslt (bvsmod #xb2384526  #x36a61561 ) (bvand #xb053b368  bv_2))))
(assert (bvslt (bvsmod (bvshl #x6398e943  #x3690c5c1 ) (bvsub bv_1 #xa0aaac07 )) (bvxor (bvxor bv_0 bv_2) (bvnand #x80a72e57  bv_4))))
(assert (=> (not (not false)) (xor (bvuge bv_4 #x42d155fa ) (bvsgt bv_1 #x4d842110 ))))
(assert (=> (bvsle (bvmul bv_0 #x796f81bf ) (bvshl bv_1 bv_0)) (bvugt (bvmul bv_0 #x3932dcca ) (bvsrem bv_4 #xb6cb11b3 ))))
(check-sat)
(exit)
