;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.040875911712646484, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04921126365661621}
;  score   = 0.040875911712646484
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains var1 var0))(assert (< var4 var3))(assert (str.contains var0 var0))(assert (> (str.len "s1=whS,B$^") (str.len var1)))(check-sat)