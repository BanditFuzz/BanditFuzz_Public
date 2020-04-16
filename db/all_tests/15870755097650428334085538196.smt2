;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.042394161224365234, '../SMT_Solvers/QF_S/z3str3/run.sh': 10}
;  score   = 0.042394161224365234
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (>= var5 var4))(assert (not (> (str.len var2) (str.len var0))))(assert (str.in.re (str.substr "6RXUv3HN0}" 6 var5) (re.+ (re.* re.allchar))))(assert (str.prefixof (str.replace (str.replace var0 var2 var0) (str.substr var2 var4 var3) (str.substr var0 5 var5)) (str.at (str.replace "P>KyNQ'W50" var2 var0) (str.len var0))))(check-sat)