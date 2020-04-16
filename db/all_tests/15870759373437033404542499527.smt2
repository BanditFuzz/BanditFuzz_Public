;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03332233428955078, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04282999038696289}
;  score   = 0.03332233428955078
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (> (str.len var2) (str.len var2)))(assert (str.in.re (str.at var2 var3) (re.+ re.allchar)))(assert (> var4 var5))(assert (str.contains (str.at var1 10) (str.replace var2 "{|5:e7#XVY" var0)))(check-sat)