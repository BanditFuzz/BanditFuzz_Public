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
(assert (xor (and (and true bool_1) (bvsgt bv_2 bv_3)) (bvslt (bvmul bv_0 bv_3) (bvxnor bv_1 #x17cf2b96 ))))
(assert (or (bvslt (bvudiv bv_3 bv_1) (bvnor bv_0 #x91ecb1d5 )) (bvule (bvsub #xa1f5298b  #xf5a5e065 ) (bvnor #x0cad7045  #x0495e1d8 ))))
(assert (=> (and (or false false) (bvsle bv_0 bv_0)) (bvuge (bvand #x75d07832  #x5fd0675c ) (bvand #xe05a9010  #xa039c11a ))))
(assert (and (not (not bool_0)) (bvslt (bvand bv_4 bv_2) (bvxnor #xf3bb72e7  #x3ce63c30 ))))
(assert (or (bvsgt (bvadd bv_0 #x9872bde2 ) (bvnand bv_2 bv_0)) (bvsgt (bvsdiv #xaf855fd0  #x4f3f526c ) (bvor #xb10891e6  bv_3))))
(check-sat)
(exit)
