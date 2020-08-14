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
(assert (bvsgt (bvudiv (bvashr #x2f9de2de  bv_3) (bvor #x76104f3a  #x6e0dfb8e )) (bvnand (bvxor bv_3 bv_2) (bvurem #x7e63e072  bv_4))))
(assert (bvugt (bvand (bvlshr #x285838b4  bv_3) (bvashr bv_3 #x23a167fc )) (bvxor (bvadd #x2b99c8a9  bv_4) (bvmul #x53b64954  bv_0))))
(assert (or (bvsgt (bvsrem #x8eaf8e84  #xfc3930e2 ) (bvmul bv_2 #x869f515e )) (bvsge (bvudiv #x89b323ca  #x8be86f1e ) (bvshl bv_4 bv_2))))
(assert (bvsgt (bvand (bvashr #xd96b90d5  bv_2) (bvsrem bv_3 #xd496c715 )) (bvmul (bvurem bv_4 #x9436f3aa ) (bvudiv bv_3 #x050a3e90 ))))
(assert (bvult (bvsdiv (bvand #xda48e390  bv_3) (bvlshr #xe6c47207  #xab0a29b8 )) (bvurem (bvsrem #xd155a9a5  bv_1) (bvsrem #x98ccc843  bv_0))))
(check-sat)
(exit)
