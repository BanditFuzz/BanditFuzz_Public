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
(assert (xor (bvsgt (bvsub bv_4 #x6ff19fc2 ) (bvsub #x354cba1a  bv_1)) (not (bvuge #xcb133617  #xdb536d13 ))))
(assert (bvsle (bvsrem (bvnand bv_4 #xa7645239 ) (bvmul bv_0 bv_0)) (bvsdiv (bvudiv #xb642cda4  bv_4) (bvsub bv_0 #x3045e088 ))))
(assert (bvsge (bvsrem (bvsub bv_1 #x5f33bfba ) (bvurem bv_3 #x39baeaf6 )) (bvnor (bvlshr #xeb5655c5  bv_4) (bvadd #xf467821e  bv_2))))
(assert (bvsgt (bvand (bvlshr bv_1 bv_1) (bvnor #x69de841a  bv_0)) (bvashr (bvurem #x95bc506b  bv_4) (bvxor bv_2 #xe809f247 ))))
(assert (bvuge (bvor (bvurem #xe476be4a  bv_4) (bvxnor bv_4 #x8c824948 )) (bvsrem (bvnand #x4fb3611d  bv_3) (bvand bv_2 #xd830f782 ))))
(check-sat)
(exit)
