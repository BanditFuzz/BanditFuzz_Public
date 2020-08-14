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
(assert (bvsgt (bvxnor (bvudiv bv_1 bv_0) (bvurem #x6d252796  #x4626b262 )) (bvsdiv (bvsdiv bv_1 bv_3) (bvnor bv_3 #x9909822d ))))
(assert (bvsle (bvshl (bvnand bv_3 #x104cf951 ) (bvxor #xf50ba2eb  #x29162b74 )) (bvadd (bvlshr #x75ebe9a5  #x9cc9d5a1 ) (bvlshr #x84d7a4c7  #x9eb38a3b ))))
(assert (bvuge (bvsdiv (bvudiv #xba8e1250  #xdef34c46 ) (bvsub bv_4 bv_4)) (bvsdiv (bvor bv_1 bv_3) (bvxor bv_3 bv_1))))
(assert (bvuge (bvsrem (bvsub #x5531093f  #xb2a4f7f6 ) (bvudiv #x7723a50c  bv_3)) (bvadd (bvmul bv_1 bv_2) (bvashr #xdebbe828  #x0382fb80 ))))
(assert (bvsge (bvxnor (bvsrem bv_1 #xe0b439a3 ) (bvurem #xaaf05ff4  bv_1)) (bvsrem (bvsrem #x6715830e  #x98133492 ) (bvshl #x5e6b534e  bv_4))))
(check-sat)
(exit)
