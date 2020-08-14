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
(assert (xor (bvsgt (bvmul bv_0 #xffd26c6b ) (bvor bv_2 #xb2f5c446 )) (not (bvule #x76c5e47c  #x0fc24493 ))))
(assert (bvsgt (bvor (bvnand bv_0 bv_2) (bvxor bv_1 bv_3)) (bvor (bvudiv #x2c34a252  #xd040d81a ) (bvsmod #xe2370123  #x91be99be ))))
(assert (or (bvsle (bvashr bv_3 #xe39e110f ) (bvudiv bv_1 bv_4)) (bvsgt (bvor bv_0 #x1a5685bf ) (bvlshr #x79718989  #x4194bb3e ))))
(assert (xor (bvuge (bvnor bv_0 bv_0) (bvudiv bv_3 bv_3)) (bvuge (bvadd bv_3 #x1805c949 ) (bvxor #xc87ec67c  bv_2))))
(assert (bvsgt (bvxnor (bvsdiv bv_1 bv_3) (bvsrem #xa540c239  bv_4)) (bvxor (bvor bv_1 bv_3) (bvxnor #xbffcfb75  bv_1))))
(check-sat)
(exit)
