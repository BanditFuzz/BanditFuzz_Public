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
(assert (=> (or (xor bool_2 false) (bvslt #x0f32bd36  #x66cfb009 )) (bvuge (bvashr bv_0 bv_3) (bvurem #x3bd49342  bv_0))))
(assert (bvsgt (bvsmod (bvxor bv_2 #xcd2d46f6 ) (bvxnor bv_0 bv_2)) (bvsrem (bvsub bv_4 #x52827e03 ) (bvsub bv_2 bv_2))))
(assert (bvult (bvnand (bvnand bv_1 #xcaf6d1e2 ) (bvashr bv_0 #xc92668f4 )) (bvudiv (bvshl bv_0 #xb9e37a3d ) (bvsmod #x739b9520  bv_3))))
(assert (bvslt (bvsmod (bvmul #x1b49c0cd  #xa2e11dee ) (bvnor #x1a9e79ca  #x13b1cb4a )) (bvsrem (bvudiv #x6f5eab24  #x71c16c4d ) (bvudiv #x4cd82ee9  bv_2))))
(assert (bvuge (bvnand (bvxor #x514001ac  bv_0) (bvashr #x3f448c72  bv_0)) (bvsub (bvmul #x62de347c  #xa8aa0b0e ) (bvnor bv_2 bv_2))))
(check-sat)
(exit)
