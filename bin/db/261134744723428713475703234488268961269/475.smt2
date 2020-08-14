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
(assert (bvule (bvor (bvudiv bv_2 #x6318c51b ) (bvmul bv_4 bv_3)) (bvxor (bvsrem #x20d1a875  bv_2) (bvxor bv_2 #xa3072364 ))))
(assert (bvule (bvsub (bvmul bv_4 #x62780872 ) (bvor bv_0 #x8874b6b6 )) (bvnor (bvlshr bv_3 bv_0) (bvsmod #x9996730a  #xb1c9bf9b ))))
(assert (bvult (bvor (bvsmod bv_1 #xbaae3c06 ) (bvashr #x1e253143  bv_1)) (bvlshr (bvsmod bv_4 bv_4) (bvnand #x78db54d1  #x69e7a5eb ))))
(assert (bvuge (bvxnor (bvnor bv_1 #x068e62f5 ) (bvsmod #x1965fbaa  bv_1)) (bvxnor (bvnor #x290454b4  #x47be8e64 ) (bvshl #x691f56a9  bv_0))))
(assert (not (bvsle (bvand #x5264b836  #xa5b3fe64 ) (bvashr #x01e4be95  #x29f64579 ))))
(check-sat)
(exit)
