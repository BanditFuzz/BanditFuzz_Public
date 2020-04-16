;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03680825233459473, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.046712636947631836}
;  score   = 0.03680825233459473
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (>= var3 var4))(assert (>= var5 var5))(assert (str.in.re (str.replace var2 var2 var2) (re.* re.allchar)))(assert (>= var5 10))(check-sat)