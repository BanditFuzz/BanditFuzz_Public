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
(assert (=> (bvuge (bvnand bv_3 #x4fa418ba ) (bvsmod bv_3 bv_1)) (and (bvuge bv_0 bv_2) (and true true))))
(assert (xor (bvult (bvurem #xc2bb39b7  bv_1) (bvudiv bv_0 bv_3)) (bvsle (bvurem bv_3 #xd4455d97 ) (bvsdiv #x0b2ed767  bv_0))))
(assert (bvult (bvxnor (bvadd #xa329df52  bv_0) (bvor #xad2292ba  #xf9647292 )) (bvudiv (bvsmod bv_2 #x40aa930b ) (bvsmod #xd25f6c10  bv_3))))
(assert (or (not (=> true false)) (bvuge (bvadd bv_4 bv_0) (bvsmod bv_4 #xaad527e6 ))))
(assert (bvuge (bvshl (bvsmod #xcf731a0e  #xff18e273 ) (bvsub bv_2 bv_2)) (bvmul (bvurem #xc46edcdb  bv_3) (bvlshr #x3c10b5d6  #xca91393e ))))
(check-sat)
(exit)
