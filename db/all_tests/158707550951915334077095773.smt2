;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04118943214416504, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04722237586975098}
;  score   = 0.04118943214416504
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.prefixof var1 var1))(assert (> (str.len "7B@v7-iQxP") (str.indexof var2 var0 var4)))(assert (> (str.indexof var1 var1 var4) (str.indexof var1 var1 var5)))(assert (not var6))(check-sat)