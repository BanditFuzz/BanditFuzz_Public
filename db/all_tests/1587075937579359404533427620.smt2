;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.035141944885253906, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04594254493713379}
;  score   = 0.035141944885253906
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.in.re (str.replace (str.replace "fYXrh(p#w]" var2 var0) (str.replace var2 var0 var0) (str.at var0 var4)) (re.* re.allchar)))(assert (< (str.len var0) (str.len "2=<r6h\\XFu")))(assert (not (>= var5 var3)))(assert (str.suffixof var0 var1))(check-sat)