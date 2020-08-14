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
(assert (bvslt (bvand (bvlshr bv_4 #x29e0fd7f ) (bvshl #x80da8ac9  bv_4)) (bvashr (bvadd #xf18db93d  bv_0) (bvmul bv_0 #xcf6d3f12 ))))
(assert (bvult (bvxor (bvsrem bv_0 bv_0) (bvand #xe918056d  #xd6ac0de9 )) (bvsrem (bvsmod #xf476591e  #xe3920382 ) (bvmul #x0a956397  #x5de6ab99 ))))
(assert (or (bvuge (bvor bv_2 bv_1) (bvudiv #x05280b61  #xd830523d )) (bvuge (bvsub #x615ced40  bv_4) (bvsdiv bv_2 bv_1))))
(assert (bvsge (bvsmod (bvxor bv_2 bv_3) (bvshl #x0200aeb4  #x76f582f8 )) (bvshl (bvsmod #x5304d98b  #xabd211a3 ) (bvxor #xe3575222  bv_3))))
(assert (xor (or (bvult bv_3 bv_2) (bvslt #xa7d2a3b0  #x7995f3f8 )) (bvslt (bvnor #x91701957  #x2b2c07e1 ) (bvurem bv_2 #x08e97a31 ))))
(check-sat)
(exit)
