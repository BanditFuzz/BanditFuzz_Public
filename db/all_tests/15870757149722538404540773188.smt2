;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.035898447036743164, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.2869117259979248}
;  score   = 0.035898447036743164
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.prefixof (str.substr ",S${aCZrIh" var4 0) (str.substr var0 var4 var4)))(assert (str.contains var1 var0))(assert (< (str.indexof var1 "LMC_al/%9D" var3) (str.len "EJAi.iXSW8")))(assert (str.contains var0 var2))(check-sat)