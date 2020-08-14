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
(assert (or (bvult (bvor #xc767a68d  bv_1) (bvsub bv_1 #x331d5eca )) (and (bvuge bv_2 bv_2) (bvsle #x95935dc7  #x40cb9062 ))))
(assert (or (bvugt (bvudiv #x3990034d  bv_1) (bvxor bv_1 bv_2)) (bvugt (bvxnor #x98ec91e7  #x7959f4b4 ) (bvashr #x3b1ee7d1  bv_2))))
(assert (bvuge (bvmul (bvsub #x669137e1  #x89bd2d8f ) (bvnand bv_3 #x2a9bee01 )) (bvmul (bvxor #x11500382  bv_1) (bvashr #x09a3f217  #x1edac49a ))))
(assert (and (not (bvult bv_2 #x2f1586ac )) (and (bvsle #x97040e82  #x4c3e378e ) (bvsle #xebd182b9  bv_2))))
(assert (bvult (bvurem (bvudiv #xed492f0a  bv_1) (bvmul #xde2c6687  bv_2)) (bvxor (bvor bv_2 bv_4) (bvadd bv_3 bv_3))))
(check-sat)
(exit)
