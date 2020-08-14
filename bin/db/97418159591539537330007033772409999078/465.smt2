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
(assert (xor (and (=> false true) (bvugt bv_1 bv_4)) (bvule (bvxnor #x16094e31  #x17f25d44 ) (bvnor #x3a3c9174  bv_1))))
(assert (bvsgt (bvmul (bvurem bv_3 #xc309667a ) (bvsdiv #xe8c6d176  #x4a70b98c )) (bvshl (bvxnor #xde57e41a  bv_4) (bvnand bv_3 bv_3))))
(assert (bvslt (bvadd (bvashr bv_1 #x304e2896 ) (bvnand #xb13b4842  #x9617e1d1 )) (bvsrem (bvudiv #x97dfd7f4  #x4830c5be ) (bvor bv_0 bv_3))))
(assert (and (bvult (bvsdiv #x77ce891e  #x36f585cb ) (bvshl bv_2 bv_0)) (not (=> true bool_1))))
(assert (bvsle (bvsmod (bvadd bv_2 #xa171308a ) (bvnand #x4deadef4  #x01d980dd )) (bvor (bvashr #xfa9329ee  bv_0) (bvsub bv_4 #xffe5afc8 ))))
(check-sat)
(exit)
