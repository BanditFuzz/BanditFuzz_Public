(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.28206801414489746
; 	answer => sat
; solvers/bitwuzla.sh
; 	time => 0.45062923431396484
; 	answer => sat
; solvers/cvc4.sh
; 	time => 0.09468388557434082
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
(assert (bvugt (bvor (bvnand #x0a89a2e0  #x4a35b09f ) (bvand bv_1 #xec8ba9af )) (bvnand (bvadd bv_1 bv_3) (bvnor bv_0 #x65793d1f ))))
(assert (xor (bvuge (bvnor #x67ae308c  #x1c8dfe83 ) (bvudiv #x2cd9454f  bv_2)) (xor (xor false bool_0) (bvsge bv_0 #x72ebd71b ))))
(assert (bvsle (bvsdiv (bvmul bv_3 bv_0) (bvudiv bv_3 #x996fbc81 )) (bvlshr (bvlshr bv_4 #x4c32238a ) (bvsrem bv_3 bv_4))))
(assert (bvule (bvnor (bvurem bv_0 bv_1) (bvsub bv_1 #xd0706fa0 )) (bvnor (bvsrem #x38feecba  bv_2) (bvurem #x2fa7d18f  #xfd7833d8 ))))
(assert (bvsgt (bvshl (bvurem #x979d4765  #x0f88730b ) (bvxor #x4cd54cf6  bv_1)) (bvashr (bvurem #x2b98f456  bv_1) (bvor #x502ac707  #xeb004390 ))))
(check-sat)
(exit)
