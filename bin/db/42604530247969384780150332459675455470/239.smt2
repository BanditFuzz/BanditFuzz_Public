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
(assert (and (bvsle (bvxor bv_0 #x2219bcdb ) (bvxor #xec1619fd  #xe581cb0e )) (bvuge (bvsub bv_0 bv_0) (bvnor #x9f51aab5  #x81d7ad72 ))))
(assert (bvule (bvadd (bvor bv_1 #xa140d2f7 ) (bvxor #x67c8cdc5  #x08a7feb0 )) (bvadd (bvshl bv_3 bv_3) (bvsub bv_1 bv_4))))
(assert (and (xor (bvuge #xc7a0e725  #xfd4b59a5 ) (and bool_2 true)) (bvult (bvand #x99d2d125  #x6ec36e88 ) (bvand #x747767a4  #x5957519a ))))
(assert (or (bvsge (bvsub bv_2 bv_1) (bvlshr #xc6d81873  bv_2)) (=> (=> bool_0 true) (bvult #x1978fad0  bv_4))))
(assert (not (bvugt (bvnand bv_0 bv_1) (bvmul bv_3 bv_4))))
(check-sat)
(exit)
