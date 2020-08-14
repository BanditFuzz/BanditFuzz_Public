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
(assert (xor (bvugt (bvsub bv_1 #xa72cdcc7 ) (bvlshr bv_0 bv_3)) (bvugt (bvlshr #x276649d0  #x97327d5e ) (bvadd #xcd8b439f  bv_3))))
(assert (bvule (bvsrem (bvnand #x0add6fbd  bv_1) (bvashr #x209aca85  #xffb53616 )) (bvshl (bvsdiv #x84e2c00c  #xb3cf2625 ) (bvmul #x592b2cfe  bv_0))))
(assert (not (and (not true) (not bool_0))))
(assert (and (xor (and false true) (bvuge #x3d1e711e  #x1f126645 )) (bvule (bvshl #x51805d20  bv_0) (bvudiv bv_1 #x1507abc1 ))))
(assert (bvule (bvor (bvashr bv_0 bv_2) (bvadd #xc8ac372d  #x87d519d2 )) (bvnand (bvxor bv_4 #x1a57a894 ) (bvsrem bv_1 #x9862cb49 ))))
(check-sat)
(exit)
