;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.034104347229003906, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04325556755065918}
;  score   = 0.034104347229003906
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains (str.replace (str.at var2 var3) (str.substr var1 var4 var3) (str.replace var2 var1 var1)) (str.substr (str.replace var2 var1 var2) (str.len var0) (str.len var0))))(assert (not (>= 9 var4)))(assert (str.suffixof (str.at var2 var5) (str.replace "Y#Vd`U2*k`" var1 var1)))(assert (not (str.suffixof var0 var0)))(check-sat)