;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 10, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.06255531311035156}
;  score   = 10.0
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'timeout', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.in.re (str.replace var0 var2 var2) (re.+ re.allchar)))(assert (str.in.re (str.replace (str.at var1 var4) (str.replace var2 var0 var2) (str.replace var0 var2 var2)) (re.* (re.+ re.allchar))))(assert (str.contains var0 var1))(assert (str.contains var0 var0))(check-sat)