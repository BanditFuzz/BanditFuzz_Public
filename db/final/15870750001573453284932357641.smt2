;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.05505013465881348, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05147862434387207}
;  score   = 0.05505013465881348
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (not var6))(assert (str.contains var0 var0))(assert (str.prefixof (str.substr "vqt0q9%\\Ni" var4 0) (str.substr var2 var5 var5)))(assert (>= var5 var3))(check-sat)