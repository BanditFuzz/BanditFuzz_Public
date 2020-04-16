;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04213070869445801, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.08707356452941895}
;  score   = 0.04213070869445801
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains (str.at var0 var5) (str.substr var1 6 var3)))(assert (< (str.indexof var1 "k{rrSYmD|s" var5) (str.len var2)))(assert (<= (str.len (str.substr "=z|pY^B9Ky" var5 var5)) (str.len (str.replace var2 var1 var0))))(assert (not (str.in.re (str.at var2 var3) (re.+ re.allchar))))(check-sat)