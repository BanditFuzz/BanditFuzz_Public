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
(assert (xor (bvuge (bvashr #x6b8eb3b9  bv_3) (bvsub bv_3 bv_4)) (=> (bvugt bv_2 bv_3) (=> false bool_4))))
(assert (bvult (bvurem (bvshl bv_0 #xa089406e ) (bvadd #x193a779c  bv_3)) (bvadd (bvsdiv bv_4 bv_1) (bvnor #xaba757f9  bv_0))))
(assert (bvugt (bvsrem (bvmul #xe9d261df  #xe41dc334 ) (bvlshr #x43977e48  #x55603b41 )) (bvashr (bvlshr bv_3 #x5636b8e9 ) (bvshl bv_4 bv_3))))
(assert (bvsge (bvnand (bvsmod bv_3 bv_4) (bvnor bv_1 bv_2)) (bvsub (bvsdiv bv_2 #x778b2498 ) (bvlshr bv_3 bv_0))))
(assert (xor (not (bvugt bv_3 #x04811bbf )) (bvugt (bvor bv_4 #x342ed52b ) (bvnand bv_4 #x49b38eb3 ))))
(check-sat)
(exit)
