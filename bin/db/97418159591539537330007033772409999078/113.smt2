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
(assert (and (bvule (bvshl bv_0 #xbb131280 ) (bvudiv #xe2decb55  bv_4)) (bvsgt (bvnand #x026d3cdd  bv_2) (bvand bv_2 #x96312f71 ))))
(assert (bvugt (bvmul (bvudiv bv_1 bv_4) (bvlshr bv_4 #x81c8fffa )) (bvnor (bvsdiv #xd0f46d2f  #x938abb3b ) (bvsdiv bv_0 bv_1))))
(assert (bvugt (bvsmod (bvsmod bv_4 bv_1) (bvor #x04119bcd  bv_1)) (bvshl (bvashr bv_0 bv_3) (bvlshr bv_4 bv_2))))
(assert (and (bvule (bvashr bv_0 #xebbfaf42 ) (bvshl #xe0a8aa6e  bv_3)) (bvsge (bvnor #x97900bf3  #xceb115bd ) (bvurem #xd7dd247f  #x0cad7dd4 ))))
(assert (bvsle (bvor (bvsrem #xd53d673e  #xd54e8815 ) (bvxor #x8c5b3ca7  #xa0cc0845 )) (bvnor (bvxor bv_0 bv_3) (bvnor bv_0 #x3836a56a ))))
(check-sat)
(exit)
