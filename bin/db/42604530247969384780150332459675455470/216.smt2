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
(assert (bvult (bvsdiv (bvmul #xee7ae4ea  #x42716516 ) (bvsrem #x638343af  #x10fd6219 )) (bvor (bvsmod #xab467f08  #xb355cecd ) (bvsrem bv_3 bv_4))))
(assert (bvult (bvudiv (bvnand bv_3 #x8b1e0987 ) (bvnor bv_1 bv_1)) (bvmul (bvashr bv_1 #x44543475 ) (bvudiv bv_3 #xfeb488b0 ))))
(assert (bvsgt (bvor (bvadd bv_1 #x2034c924 ) (bvashr bv_4 bv_4)) (bvmul (bvnor #x1a06977f  bv_4) (bvshl #xe9a85d73  bv_0))))
(assert (bvsle (bvashr (bvadd bv_4 bv_3) (bvnand bv_0 bv_1)) (bvnor (bvudiv #xdab639b3  bv_1) (bvashr #xe161ec11  #x0ed43e81 ))))
(assert (bvugt (bvxor (bvsrem #xbab8d93d  bv_4) (bvlshr bv_1 #xbe499151 )) (bvxor (bvudiv bv_3 #xd17ea308 ) (bvxor bv_4 #xc75ddaca ))))
(check-sat)
(exit)
