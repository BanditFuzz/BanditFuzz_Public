;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04032301902770996, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05934619903564453}
;  score   = 0.04032301902770996
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (<= var5 var4))(assert (>= (str.indexof var0 var2 var4) (str.len var2)))(assert (<= var5 var3))(assert (> var3 var5))(check-sat)