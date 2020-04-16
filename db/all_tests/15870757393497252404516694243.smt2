;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.037647247314453125, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.068145751953125}
;  score   = 0.037647247314453125
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.suffixof (str.at var0 var5) (str.substr var1 var4 var3)))(assert (str.prefixof var1 var1))(assert (< var5 7))(assert (str.prefixof (str.substr (str.at var1 var5) (str.len var2) (str.len var2)) (str.substr var1 10 5)))(check-sat)