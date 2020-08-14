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
(assert (bvsgt (bvsdiv (bvmul bv_1 bv_3) (bvor bv_4 #xc681f842 )) (bvsub (bvurem #xff42583b  bv_4) (bvnor bv_4 #x55fe32a1 ))))
(assert (not (or (and bool_4 false) (not bool_3))))
(assert (bvsgt (bvsdiv (bvsub #x64e67b03  #x325ad246 ) (bvudiv bv_4 bv_2)) (bvsmod (bvurem #xb2483a1b  bv_4) (bvudiv #x14604e8f  bv_0))))
(assert (bvsge (bvsrem (bvnand #xbb2f90ff  bv_1) (bvmul #x29fb0930  #xd8cc963e )) (bvurem (bvmul #x485b82f5  #x249e3cbe ) (bvnor bv_0 #x95a1cf98 ))))
(assert (xor (bvsgt (bvsub bv_2 #xde0715e7 ) (bvurem #x15cb9ece  #x0adb48ed )) (bvule (bvurem #x10d4c94a  #x2d9a1ef4 ) (bvurem #xd14ff3de  bv_3))))
(check-sat)
(exit)
