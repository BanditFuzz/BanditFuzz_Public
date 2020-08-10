(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 2.1312255859375
; 	answer => sat
; solvers/bitwuzla
; 	time => 0.33690762519836426
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
(assert (and (bvslt (bvnor #x344b15ff  bv_2) (bvxor #x6a17eb0e  #x9480e7e5 )) (bvslt (bvashr bv_3 bv_0) (bvxor #x060d3892  #xf32e0670 ))))
(assert (bvsgt (bvnand (bvmul #x89b4ea3d  #xe6981533 ) (bvnand bv_1 #xdbb18d4d )) (bvurem (bvxor bv_4 bv_3) (bvsdiv #xe0cebeb3  bv_0))))
(assert (bvuge (bvand (bvnor #x5bfb151b  #x5d34da2e ) (bvnand bv_0 bv_2)) (bvlshr (bvnor bv_3 #xf2944b84 ) (bvlshr bv_3 #xda3107d0 ))))
(assert (and (bvsge (bvsmod #x84a500c4  #x14af6a3c ) (bvnand bv_0 bv_4)) (bvult (bvmul bv_0 bv_4) (bvxor #x333f1981  bv_1))))
(assert (bvsge (bvlshr (bvmul #x967f3d06  #x0839ebb3 ) (bvor bv_3 bv_1)) (bvshl (bvlshr bv_3 bv_3) (bvudiv #xd26a7eda  bv_3))))
(check-sat)
(exit)