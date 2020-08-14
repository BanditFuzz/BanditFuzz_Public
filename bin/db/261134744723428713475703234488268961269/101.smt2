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
(assert (=> (bvuge (bvmul #x3e63edd7  bv_1) (bvashr bv_2 #x36d662aa )) (and (xor bool_4 bool_2) (or false true))))
(assert (bvugt (bvshl (bvlshr bv_2 #x715ad773 ) (bvxor bv_2 bv_3)) (bvadd (bvashr bv_2 bv_0) (bvmul bv_2 #x6f602414 ))))
(assert (bvsge (bvshl (bvashr #x654bc738  bv_1) (bvand bv_2 bv_3)) (bvlshr (bvsub bv_3 #xcca5488e ) (bvashr #x5a7fe1ca  #x4598101b ))))
(assert (and (bvuge (bvsdiv bv_2 #x0ad750ce ) (bvadd #x7836d776  bv_1)) (bvslt (bvnand bv_1 #x8de7045f ) (bvnand bv_4 bv_3))))
(assert (bvslt (bvsmod (bvlshr #x68ef2b50  #xec177a4e ) (bvsub #x33f59a73  #xe602273d )) (bvnand (bvnor #x816cadf8  bv_0) (bvsrem #xe20b645c  #x2eed725d ))))
(check-sat)
(exit)
