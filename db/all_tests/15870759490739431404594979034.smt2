;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04771924018859863, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.07776141166687012}
;  score   = 0.04771924018859863
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.suffixof (str.replace var0 var0 var2) (str.replace var2 "_lbLxE|6gD" var0)))(assert (< (str.indexof var2 var1 var5) (str.len "9tlNl7\\0uH")))(assert (> (str.indexof var2 var2 var4) (str.len var1)))(assert (str.suffixof (str.replace var1 var1 var2) (str.substr var1 var4 var4)))(check-sat)