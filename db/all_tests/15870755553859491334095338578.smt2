;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03849673271179199, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05109763145446777}
;  score   = 0.03849673271179199
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.in.re var1 re.allchar))(assert (str.prefixof (str.substr var2 10 var5) (str.at var0 var3)))(assert (>= (str.indexof var0 var0 var5) (str.len var2)))(assert (<= var3 var3))(check-sat)