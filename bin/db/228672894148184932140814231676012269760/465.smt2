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
(assert (bvuge (bvnand (bvsub bv_3 bv_0) (bvlshr #xae4cfc47  bv_1)) (bvsub (bvsmod #x5e06ef9e  bv_3) (bvsdiv bv_0 #xea37150d ))))
(assert (bvsgt (bvsrem (bvand #xc98c38b4  bv_1) (bvnor #x1eb03ad3  #x8cc88158 )) (bvxor (bvxnor bv_3 #xb9a1b178 ) (bvnor bv_0 #x859eab7b ))))
(assert (=> (bvslt (bvmul #x41efb930  #xbcb56551 ) (bvsrem bv_3 bv_4)) (bvult (bvmul bv_1 bv_4) (bvxor #x28fc97bf  #x7cb4aec4 ))))
(assert (bvsle (bvxor (bvadd #x3273b56e  #x075eee07 ) (bvadd #x85aefc1a  bv_4)) (bvnand (bvadd #x2b1de0f9  bv_0) (bvmul bv_1 #xf834de12 ))))
(assert (bvult (bvshl (bvurem bv_3 #xc06c538e ) (bvmul bv_2 #x537c649d )) (bvnor (bvudiv bv_1 bv_3) (bvudiv #x4039b5e4  #x8d7ab0f6 ))))
(check-sat)
(exit)
