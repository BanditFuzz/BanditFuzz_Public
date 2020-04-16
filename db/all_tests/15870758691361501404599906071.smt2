;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.07649111747741699, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.12142467498779297}
;  score   = 0.07649111747741699
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains (str.substr var1 2 var3) (str.replace var0 var1 ")iuuu8gnF9")))(assert (str.prefixof (str.replace var2 var1 var0) (str.at var1 10)))(assert (< (str.indexof var1 var2 0) (str.len var1)))(assert (> (str.indexof var0 var0 var3) (str.indexof var0 var1 var4)))(check-sat)