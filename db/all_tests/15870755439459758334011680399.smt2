;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03554987907409668, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05089092254638672}
;  score   = 0.03554987907409668
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (not (str.in.re var1 re.allchar)))(assert (<= (str.indexof var1 var2 0) (str.len var0)))(assert (str.prefixof (str.substr var0 var3 9) (str.replace var2 var2 var1)))(assert (<= (str.len var0) (str.len var0)))(check-sat)