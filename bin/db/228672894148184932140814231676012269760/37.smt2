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
(assert (bvsgt (bvxnor (bvudiv #x1c6a1517  bv_2) (bvand #xfc1afaed  bv_0)) (bvmul (bvudiv #xdbcd8a20  #x259d2ed6 ) (bvlshr #xd670b038  bv_0))))
(assert (and (bvsle (bvashr bv_4 bv_3) (bvxnor #x82bf9292  #xff00db5e )) (or (xor bool_0 bool_0) (bvsge #xeea645cc  bv_4))))
(assert (bvsge (bvor (bvmul #x2a671ab6  bv_0) (bvsmod #x5ac6c171  #x016b2e23 )) (bvxor (bvmul #xb613e006  #x6a0a194a ) (bvashr bv_3 bv_0))))
(assert (bvsge (bvashr (bvnor #x72cd95c0  bv_0) (bvsub #x4247ce5e  #x0e5ece12 )) (bvudiv (bvor #x0392988e  bv_4) (bvsub bv_2 bv_1))))
(assert (bvule (bvsrem (bvsub #xb5865400  #x928c6ae3 ) (bvadd bv_0 #xe70e79d3 )) (bvudiv (bvxnor #x661c77df  bv_1) (bvnor bv_3 #xb98dcfe9 ))))
(check-sat)
(exit)
