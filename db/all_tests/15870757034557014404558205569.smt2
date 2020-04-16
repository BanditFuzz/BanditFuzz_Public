;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03964090347290039, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05728507041931152}
;  score   = 0.03964090347290039
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (> (str.indexof var2 var0 var3) (str.len var2)))(assert (str.prefixof (str.at var1 var4) (str.replace var1 var2 var2)))(assert (str.prefixof (str.at var0 var3) (str.replace var1 var1 var0)))(assert (> (str.indexof var1 var2 var3) (str.indexof (str.at var1 var5) (str.at var1 var4) (str.len var0))))(check-sat)