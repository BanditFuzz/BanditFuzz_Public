(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 2.3309926986694336
; 	answer => sat
; solvers/bitwuzla.sh
; 	time => 0.23513245582580566
; 	answer => sat
; solvers/cvc4.sh
; 	time => 0.09325289726257324
; 	answer => err
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
(assert (bvuge (bvashr (bvnor #xfcd2b0cc  bv_1) (bvor #xcd74d2d8  bv_4)) (bvudiv (bvlshr #xa433d0d1  #xf2c0a804 ) (bvmul #xf6bbfed5  bv_1))))
(assert (bvugt (bvxor (bvsub #x66d146cd  bv_0) (bvurem bv_1 bv_0)) (bvsrem (bvxor #x4879085e  bv_3) (bvsmod #x47d14d53  bv_2))))
(assert (or (bvsle (bvsdiv bv_2 bv_2) (bvudiv #x0c0b4f7c  #x6f947df9 )) (bvsge (bvmul bv_3 #xbfd2b79a ) (bvxnor #x86c12664  bv_4))))
(assert (bvsgt (bvnand (bvadd bv_3 bv_3) (bvashr bv_4 bv_1)) (bvxor (bvmul #xf749645e  #x235e581c ) (bvnand bv_4 bv_2))))
(assert (bvslt (bvand (bvurem #x94b4c7b0  #x8c552ee1 ) (bvsub #x0af5942d  #x06757a47 )) (bvlshr (bvxor bv_2 bv_1) (bvshl #x668f1f4d  bv_3))))
(check-sat)
(exit)