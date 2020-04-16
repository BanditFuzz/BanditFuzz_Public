;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03724956512451172, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04808616638183594}
;  score   = 0.03724956512451172
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (<= (str.len (str.at var0 var5)) (str.indexof (str.at var2 var4) (str.replace var2 var1 var2) (str.len var2))))(assert (str.suffixof var0 var1))(assert (not (str.contains var0 var0)))(assert (> (str.indexof (str.substr var0 var4 var5) (str.at var0 var5) (str.indexof var0 var2 var4)) (str.len var1)))(check-sat)