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
(assert (bvugt (bvashr (bvsub #x1133e4e6  #x09448f4a ) (bvxnor #x2852a07a  bv_3)) (bvlshr (bvxor bv_2 bv_4) (bvmul #x7dca6920  bv_4))))
(assert (bvsge (bvxnor (bvxnor bv_1 bv_0) (bvashr #xcea750cc  bv_3)) (bvudiv (bvxor bv_0 #xf2b32fc8 ) (bvsmod bv_3 #x524e4a6e ))))
(assert (xor (bvsle (bvsrem bv_1 #xfb4232fd ) (bvshl bv_3 #xfa046eef )) (bvugt (bvnor bv_0 #x44928028 ) (bvmul bv_3 #xfa92adf9 ))))
(assert (not (bvule (bvor #xa26da160  #x4c8617a6 ) (bvnand bv_4 bv_2))))
(assert (bvsgt (bvxnor (bvsub #x7a686220  #x85848b0b ) (bvsdiv #x561d3c2c  #xdddbe900 )) (bvand (bvsub bv_3 #x76e378b2 ) (bvor bv_4 bv_1))))
(check-sat)
(exit)
