;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.059082746505737305, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05456686019897461}
;  score   = 0.059082746505737305
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (> (str.indexof var2 var1 var3) (str.indexof var2 var2 var5)))(assert (> (str.indexof var1 var1 var3) (str.indexof var0 var1 var5)))(assert (< (str.len var2) (str.indexof var0 var2 var4)))(assert (> (str.len var1) (str.len var0)))(check-sat)