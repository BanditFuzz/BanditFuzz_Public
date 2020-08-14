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
(assert (not (or (bvuge bv_4 #x6b94a601 ) (or bool_2 true))))
(assert (bvsle (bvsmod (bvlshr bv_2 #xea9e85c2 ) (bvsub #x1e6dd7cb  #x6b429a16 )) (bvsmod (bvsmod #x32018d32  bv_3) (bvxor bv_2 #x736b9622 ))))
(assert (=> (bvule (bvmul #x60e47333  #x3155254a ) (bvshl #x238cb5dc  #x4adb589e )) (or (bvult bv_3 #x410780e1 ) (or bool_2 true))))
(assert (bvugt (bvnor (bvudiv #x9a3abcd7  #x112d116a ) (bvsub bv_2 bv_2)) (bvxor (bvmul bv_0 bv_1) (bvmul bv_4 #x1657daa4 ))))
(assert (bvuge (bvsmod (bvxor #x903bafb1  bv_2) (bvmul bv_1 bv_2)) (bvudiv (bvlshr #xda3e09dc  #xa643bb4c ) (bvlshr bv_0 #xef97561d ))))
(check-sat)
(exit)
