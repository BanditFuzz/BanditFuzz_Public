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
(assert (bvsle (bvxor (bvshl bv_2 #x117d73fa ) (bvor bv_0 #x03797b8d )) (bvnand (bvadd bv_2 #x8251e61f ) (bvurem bv_2 bv_0))))
(assert (bvule (bvsub (bvnand #x77b97bb3  #x970ac50e ) (bvadd #x74c19b35  bv_0)) (bvnand (bvor bv_4 #x34c19839 ) (bvxnor bv_3 bv_3))))
(assert (not (=> (and bool_4 bool_4) (bvslt #x690fe490  #x0e0eabf1 ))))
(assert (xor (bvsle (bvmul bv_2 #xcb3d14d3 ) (bvshl bv_2 bv_3)) (bvuge (bvudiv #x86674e47  bv_0) (bvsub #x697527be  bv_3))))
(assert (bvugt (bvand (bvand bv_2 bv_2) (bvsmod #x4dc94cad  #x93b99ecf )) (bvsmod (bvnand #x1165632b  bv_0) (bvor bv_4 bv_3))))
(check-sat)
(exit)
