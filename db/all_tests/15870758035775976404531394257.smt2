;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03397798538208008, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04290175437927246}
;  score   = 0.03397798538208008
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (> var5 var5))(assert (str.prefixof (str.replace (str.at var2 var4) (str.replace var1 var2 var1) (str.replace "S1JZN^R44D" "~j37R+yP*/" var2)) (str.substr var1 5 var4)))(assert (> (str.indexof "dvHVmSQxx+" var1 var4) (str.len var0)))(assert (str.contains (str.substr var0 var3 var3) (str.at var2 var3)))(check-sat)