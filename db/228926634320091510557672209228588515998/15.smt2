(set-info :Origin "This instance was generated by: BanditFuzz-- an RL fuzzer for SMT solvers" )
(set-info :Author "Joe Scott, Fed Mora, Vijay Ganesh" )
(set-info :Contact "Joe Scott, joseph.scott@uwaterloo.ca")
; solvers/z3.sh
; 	time => 0.05232071876525879
; 	answer => err
; solvers/cvc4.sh
; 	time => 0.057633399963378906
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
(assert (=> (>= (+ int_2 int_4) (+ int_0 int_4)) (not (and true true))))
(assert (> (- (mod (- 264024728) (- 243964208))) (* (- 103968977 (- 754157311)) (mod int_2 int_1))))
(assert (and (or (and bool_4 false) (=> bool_3 true)) (not (< 392585537 int_2))))
(assert (<= (/ (- 160041380) (- int_1 536711939)) (* (- int_2) (* int_0 (- 719139873)))))
(assert (> (* (- int_4) (- int_3 (- 164160672))) (- (- (- 247162588)))))
(check-sat)
(exit)