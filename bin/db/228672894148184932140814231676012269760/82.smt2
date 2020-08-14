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
(assert (bvsge (bvxor (bvnor bv_3 #x8070026b ) (bvsub #x8154dea4  bv_0)) (bvand (bvashr #xafb0fea2  bv_3) (bvand #x441a59b5  bv_0))))
(assert (bvule (bvxor (bvudiv #xe8ec0a52  bv_0) (bvnand bv_2 bv_3)) (bvand (bvsdiv bv_2 #x2453176b ) (bvshl #x84f116ca  bv_2))))
(assert (=> (bvugt (bvxor bv_4 #x24cec474 ) (bvsub bv_1 #x0d3b5401 )) (and (bvule #xee97d376  #x8b98acf8 ) (bvult bv_1 #x0a8520b0 ))))
(assert (bvslt (bvsdiv (bvxnor bv_2 #x2fb1d9b0 ) (bvsrem #xdcd87012  #x270a8646 )) (bvxor (bvsub bv_0 bv_4) (bvxnor bv_3 bv_4))))
(assert (bvsle (bvsub (bvshl bv_4 #x7c6419ca ) (bvashr bv_1 bv_3)) (bvashr (bvmul bv_4 bv_2) (bvxnor bv_4 #xb00910d7 ))))
(check-sat)
(exit)
