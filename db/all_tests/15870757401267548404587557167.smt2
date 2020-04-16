;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.1576542854309082, '../SMT_Solvers/QF_S/z3str3/run.sh': 10}
;  score   = 0.1576542854309082
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (>= (str.len var1) (str.len var1)))(assert (not (> var4 var4)))(assert (str.in.re (str.substr var0 (str.indexof var1 var0 var5) (str.indexof var1 var0 var5)) (re.+ (re.++ re.allchar re.allchar))))(assert (<= (str.indexof var1 var1 var3) (str.indexof (str.at var1 var3) (str.substr var0 var4 var4) (str.indexof var1 var0 var5))))(check-sat)