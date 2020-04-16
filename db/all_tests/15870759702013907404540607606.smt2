;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.1192927360534668, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.06083846092224121}
;  score   = 0.1192927360534668
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (> (str.len var0) (str.len var1)))(assert (str.contains (str.at var2 var4) (str.at var0 var5)))(assert (str.prefixof (str.replace var0 var1 var2) (str.at var1 var3)))(assert (> (str.indexof (str.substr var2 var4 var3) (str.at var1 8) (str.indexof var0 var1 var5)) (str.len var2)))(check-sat)