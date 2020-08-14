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
(assert (=> (xor (=> true bool_4) (bvult #xb31511dd  #x20ff0063 )) (and (bvugt bv_3 bv_1) (bvult bv_2 #x7f4dfbe5 ))))
(assert (bvult (bvor (bvxnor #xa327ac98  #xa33c0795 ) (bvand #x47e174cd  #x35d8bccf )) (bvor (bvmul #x60a98c9a  bv_3) (bvxnor #xfef1f561  bv_2))))
(assert (bvuge (bvmul (bvashr bv_0 bv_2) (bvudiv #x63f47f15  bv_2)) (bvnor (bvsrem #x14922246  bv_0) (bvnor #xdeecb054  bv_1))))
(assert (=> (xor (=> bool_3 true) (bvuge bv_4 bv_0)) (=> (bvsle bv_0 bv_2) (not bool_2))))
(assert (bvsgt (bvor (bvsrem #xf445e3fc  #xdeff0349 ) (bvudiv bv_2 #xa0abbfe7 )) (bvxnor (bvmul bv_4 bv_0) (bvudiv bv_0 #xd3fac8cc ))))
(check-sat)
(exit)
