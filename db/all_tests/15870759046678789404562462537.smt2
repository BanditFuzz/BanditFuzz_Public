;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.05237889289855957, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.054439544677734375}
;  score   = 0.05237889289855957
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (< var3 var5))(assert (>= (str.indexof "E4_I(eB9!7" var1 var4) (str.len var2)))(assert (<= (str.len var2) (str.indexof var2 ">@j[.<Pdsp" var3)))(assert (not (> var3 var4)))(check-sat)