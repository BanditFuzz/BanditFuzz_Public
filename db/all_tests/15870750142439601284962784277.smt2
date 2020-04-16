;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03321361541748047, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.043830156326293945}
;  score   = 0.03321361541748047
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (< var3 var3))(assert (> var4 1))(assert (str.suffixof var0 var2))(assert (str.suffixof (str.substr (str.substr var2 var4 0) (str.len var0) (str.len var2)) (str.substr (str.substr var2 var4 var4) (str.len var2) (str.indexof var1 var2 var3))))(check-sat)