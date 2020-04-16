;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04082536697387695, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.06638169288635254}
;  score   = 0.04082536697387695
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (not (<= var4 0)))(assert (str.contains (str.substr var1 var5 var5) (str.replace var2 var1 var1)))(assert (str.suffixof (str.at var0 var3) (str.substr "<x-#$3ODC8" var4 var3)))(assert (str.prefixof var0 var1))(check-sat)