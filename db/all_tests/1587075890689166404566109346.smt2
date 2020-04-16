;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.034415483474731445, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.045464277267456055}
;  score   = 0.034415483474731445
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.in.re (str.substr var1 var5 var3) (re.* (re.* re.allchar))))(assert (< (str.indexof var1 var2 var5) (str.indexof var1 var2 2)))(assert (>= (str.len var0) (str.len var0)))(assert (not (not false)))(check-sat)