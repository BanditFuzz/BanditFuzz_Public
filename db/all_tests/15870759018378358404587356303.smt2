;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04404449462890625, '../SMT_Solvers/QF_S/z3str3/run.sh': 2.617675304412842}
;  score   = 0.04404449462890625
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains (str.at var0 var5) (str.replace (str.replace var1 var1 var2) (str.replace var0 var2 var1) (str.replace var2 var2 var2))))(assert (<= (str.indexof (str.replace var2 var2 var0) (str.at var2 var5) (str.indexof var0 var0 0)) (str.len (str.substr var1 var3 var4))))(assert (str.suffixof var0 var1))(assert (str.suffixof (str.substr var2 var4 var5) (str.substr (str.at var2 var5) (str.indexof var1 var2 var4) (str.len var1))))(check-sat)