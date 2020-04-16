;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.038077592849731445, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04970192909240723}
;  score   = 0.038077592849731445
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.in.re (str.replace var2 var1 var0) (re.* (re.+ re.allchar))))(assert (> var5 var5))(assert (<= (str.len (str.replace var1 var0 var0)) (str.len (str.replace var2 var0 "dbYEN|Q[p`"))))(assert (not (>= var3 var5)))(check-sat)