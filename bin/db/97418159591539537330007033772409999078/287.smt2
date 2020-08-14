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
(assert (not (bvuge (bvor bv_2 bv_0) (bvxor #x45bd8dbd  bv_3))))
(assert (bvule (bvsmod (bvxor #xef6f045f  #x481d8bd3 ) (bvnor bv_3 #x2c98636e )) (bvmul (bvshl bv_1 #x130b6583 ) (bvmul bv_4 bv_0))))
(assert (bvsle (bvadd (bvlshr #x56963fb1  #xbf9cd2bc ) (bvsmod bv_1 #xae9deda3 )) (bvxnor (bvlshr #x72fb3e1f  bv_1) (bvlshr #x1f5a1a16  #x79ef6efd ))))
(assert (bvsgt (bvlshr (bvurem bv_2 bv_3) (bvmul #x2497d22e  #x3905b9c2 )) (bvnand (bvnor #xc2b8769b  bv_4) (bvadd #xf30d6a02  bv_2))))
(assert (xor (bvsle (bvxnor bv_0 bv_2) (bvnand #x1b2b0332  bv_2)) (bvult (bvnand bv_2 bv_3) (bvashr bv_0 #x60750350 ))))
(check-sat)
(exit)
