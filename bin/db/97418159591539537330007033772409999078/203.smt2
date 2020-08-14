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
(assert (and (bvslt (bvurem #x9767b2d3  #x55092969 ) (bvshl bv_1 #xd8ec0f87 )) (and (bvsle bv_3 #xe4848e0e ) (bvugt bv_2 #x3c8fb1ea ))))
(assert (not (not (and bool_3 bool_1))))
(assert (bvult (bvxor (bvadd #x48bd0fd0  bv_1) (bvlshr #x391a7ef2  #xc8a6ca8e )) (bvlshr (bvudiv #xc6dad30a  bv_4) (bvsub bv_1 #x6c7fb2bd ))))
(assert (bvule (bvsmod (bvor #xa74fab5c  bv_1) (bvudiv bv_0 #x2d9ad02f )) (bvurem (bvudiv bv_3 bv_3) (bvnor bv_4 #x56298419 ))))
(assert (bvuge (bvnand (bvashr #xe41a07e4  bv_3) (bvashr #x42a41979  #x067ce443 )) (bvor (bvshl bv_1 #x546e9872 ) (bvlshr #x964effed  bv_0))))
(check-sat)
(exit)
