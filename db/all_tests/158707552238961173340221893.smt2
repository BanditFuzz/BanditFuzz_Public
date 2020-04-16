;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.05337023735046387, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.06316852569580078}
;  score   = 0.05337023735046387
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (>= var5 var3))(assert (not (str.prefixof (str.substr var0 var4 var4) (str.substr var1 4 var5))))(assert (<= (str.indexof var0 var2 5) (str.indexof var1 var1 var5)))(assert (not (< 2 var3)))(check-sat)