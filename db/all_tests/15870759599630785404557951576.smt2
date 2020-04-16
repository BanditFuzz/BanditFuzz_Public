;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.047788143157958984, '../SMT_Solvers/QF_S/z3str3/run.sh': 10}
;  score   = 0.047788143157958984
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.prefixof (str.at var1 var3) (str.substr var2 var3 var5)))(assert (>= (str.indexof var0 var1 4) (str.len var0)))(assert (str.contains (str.at var2 var5) (str.replace (str.substr var1 var3 var3) (str.substr var0 var3 var3) (str.at var1 var4))))(assert (>= var3 var3))(check-sat)