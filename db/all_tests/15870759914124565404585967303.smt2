;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.0713803768157959, '../SMT_Solvers/QF_S/z3str3/run.sh': 10}
;  score   = 0.0713803768157959
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (< var3 4))(assert (< (str.indexof (str.substr "n`.)@QaVKN" 0 var3) (str.substr var1 var4 var5) (str.len var1)) (str.indexof var0 var0 var5)))(assert (<= (str.len "7y^OCM+rj0") (str.indexof var0 "~<s`+80>mq" var5)))(assert (<= var4 var3))(check-sat)