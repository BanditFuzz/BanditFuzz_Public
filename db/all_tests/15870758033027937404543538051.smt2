;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.05484151840209961, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.06020808219909668}
;  score   = 0.05484151840209961
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (not false))(assert (str.in.re var0 re.allchar))(assert (>= (str.len var2) (str.indexof (str.substr "#Dzm]D1tb-" var5 var4) (str.at var1 var5) (str.indexof var1 var0 var5))))(assert (not var6))(check-sat)