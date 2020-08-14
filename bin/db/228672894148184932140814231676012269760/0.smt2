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
(assert (or (xor (bvult #x57c5e964  #x1a2460a0 ) (or false false)) (bvult (bvsub #xd0cb3e91  bv_0) (bvudiv #x14bacdce  #x920ca3fe ))))
(assert (bvsgt (bvxnor (bvshl #xb55c160d  bv_3) (bvor bv_1 #x28e3cd49 )) (bvand (bvsmod bv_2 #xfd175e06 ) (bvmul #xaa3504ea  #x6f9229d7 ))))
(assert (bvugt (bvashr (bvand bv_4 #xf9cab28d ) (bvashr #xbe2d4ccb  bv_3)) (bvashr (bvudiv #x7d3b5a89  #x66f96752 ) (bvsub bv_0 bv_0))))
(assert (and (bvsge (bvsub bv_0 #xc30f9360 ) (bvshl bv_3 bv_3)) (bvugt (bvor bv_4 bv_1) (bvadd #xf74278d3  bv_4))))
(assert (or (bvugt (bvurem bv_1 #x51fac4fc ) (bvashr bv_4 #x6ca8001d )) (bvsge (bvudiv #x468d83de  bv_3) (bvlshr #x9e2cbd96  bv_4))))
(check-sat)
(exit)
