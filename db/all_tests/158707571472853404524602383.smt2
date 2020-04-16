;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03736591339111328, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.047171831130981445}
;  score   = 0.03736591339111328
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (>= (str.indexof var2 var1 var4) (str.len var2)))(assert (str.in.re var0 re.allchar))(assert (< var4 0))(assert (<= (str.indexof var0 var0 var4) (str.indexof "p#3[x#><?X" var1 var3)))(check-sat)