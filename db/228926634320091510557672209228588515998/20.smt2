(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.04571723937988281
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.04978013038635254
; 	answer => err
(set-logic QF_NIA)
(declare-const bool_0 Bool)
(declare-const bool_1 Bool)
(declare-const bool_2 Bool)
(declare-const bool_3 Bool)
(declare-const bool_4 Bool)
(declare-const int_0 Int)
(declare-const int_1 Int)
(declare-const int_2 Int)
(declare-const int_3 Int)
(declare-const int_4 Int)
(assert (and (and (not bool_1) (> int_1 (- 332257142))) (<= (- (- 28886922) (- 938947290)) (mod int_0 int_0))))
(assert (<= (- (/ int_3 (- 58212523)) (mod int_1 int_1)) (- (/ (- 908632280) int_2))))
(assert (< (+ (+ 155796328 int_2) (- (- 231193829) (- 402136124))) (* (- int_3) (- 584733144 int_0))))
(assert (not (>= (- int_2) (* int_4 229930433))))
(assert (<= (- (- int_2 int_3)) (* (+ int_2 (- 457909724)) (* int_1 153790225))))
(check-sat)
(exit)