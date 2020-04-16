;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.042157649993896484, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04834342002868652}
;  score   = 0.042157649993896484
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains (str.at "z""q!NjWuIp" var3) (str.substr var2 var4 var3)))(assert (< (str.len (str.replace var0 var0 var1)) (str.len var1)))(assert (str.prefixof (str.replace (str.replace var1 var2 var1) (str.at var0 var3) (str.replace "=9We88]Wr}" var0 var0)) (str.replace (str.replace var2 var2 var2) (str.replace var1 var1 var1) (str.at var0 var5))))(assert (not (> (str.len var1) (str.indexof var0 var1 var5))))(check-sat)