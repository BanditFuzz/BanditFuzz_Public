;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03352546691894531, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05143332481384277}
;  score   = 0.03352546691894531
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains (str.at var1 var4) (str.at "VA%wia[ROC" 6)))(assert (not (not (not var7))))(assert (> var4 var4))(assert (< (str.indexof var1 var0 var4) (str.indexof (str.at var1 var4) (str.at var2 7) (str.indexof var1 var1 var4))))(check-sat)