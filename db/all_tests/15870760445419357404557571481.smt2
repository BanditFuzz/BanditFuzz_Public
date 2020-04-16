;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04503345489501953, '../SMT_Solvers/QF_S/z3str3/run.sh': 10}
;  score   = 0.04503345489501953
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (< (str.indexof (str.replace var2 "rdiIm[)?W$" var1) (str.replace var2 var1 var0) (str.indexof "mWiFA=z{,y" var2 4)) (str.indexof var1 var2 var5)))(assert (>= var4 var5))(assert (str.prefixof (str.replace var1 var0 var0) (str.at var2 var3)))(assert (str.contains (str.replace var0 var2 var0) (str.at var1 var5)))(check-sat)