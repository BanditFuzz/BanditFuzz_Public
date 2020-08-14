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
(assert (=> (bvule (bvsmod #x3dbd2444  #x81f5338b ) (bvnand #xc8e9fcfc  bv_1)) (xor (bvult bv_1 bv_0) (=> bool_4 bool_4))))
(assert (bvugt (bvsrem (bvnand bv_2 bv_4) (bvudiv #xc928bee0  #xe25602a4 )) (bvshl (bvor bv_3 bv_0) (bvsdiv #x1d26a1ab  #x4d4e7ddc ))))
(assert (bvult (bvxnor (bvnor bv_0 #x90ef7e76 ) (bvashr #xa2584d8a  #x1f8ee258 )) (bvshl (bvor bv_2 bv_1) (bvmul bv_1 #xb2372104 ))))
(assert (bvugt (bvmul (bvashr bv_1 #x298855f6 ) (bvsdiv #xba681636  #xdc4fda89 )) (bvudiv (bvadd #x96caeae9  #x424857bf ) (bvsdiv bv_1 bv_0))))
(assert (xor (bvsle (bvadd bv_3 #xaf243491 ) (bvlshr #x12917ff6  #x6b84e505 )) (bvsgt (bvashr bv_3 bv_4) (bvsdiv #x19a514d3  #xed8aff50 ))))
(check-sat)
(exit)
