(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.35810160636901855
; 	answer => sat
; solvers/bitwuzla
; 	time => 0.33051276206970215
; 	answer => sat
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
(assert (bvule (bvor (bvudiv #xcedf6dfb  bv_1) (bvshl bv_3 bv_2)) (bvadd (bvudiv #xc447e188  #xa0a7088a ) (bvand bv_3 #xce33197c ))))
(assert (bvsgt (bvlshr (bvudiv #x77c19d34  bv_1) (bvadd #x53ef7e9a  #xbbe4694b )) (bvor (bvashr #xa8bb8e87  bv_4) (bvmul bv_2 #xb0b79e2a ))))
(assert (not (bvsgt (bvlshr #x7c7c8ed1  bv_4) (bvshl #x9954b6b5  bv_4))))
(assert (=> (or (bvsge #xa3d79b34  #x0c9d0e78 ) (bvsge #x8c271290  bv_2)) (bvult (bvshl #xf49677df  #xbcdee0d2 ) (bvashr #xd5ffa14a  #x3b6ed311 ))))
(assert (=> (bvult (bvsmod bv_1 #xe190d360 ) (bvshl bv_4 #x8a35623d )) (bvslt (bvadd bv_2 bv_2) (bvand bv_0 bv_3))))
(check-sat)
(exit)