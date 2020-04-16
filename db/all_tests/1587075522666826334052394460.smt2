;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03313422203063965, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04319453239440918}
;  score   = 0.03313422203063965
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (> var4 var5))(assert (str.contains var1 var0))(assert (> (str.len var1) (str.indexof var1 var2 var3)))(assert (< (str.len var2) (str.len var2)))(check-sat)