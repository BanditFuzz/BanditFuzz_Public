;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04802393913269043, '../SMT_Solvers/QF_S/z3str3/run.sh': 10}
;  score   = 0.04802393913269043
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (>= (str.indexof var0 var0 var5) (str.len (str.replace var2 var2 var0))))(assert (str.suffixof (str.substr (str.replace var1 var0 var1) (str.indexof var2 var2 var5) (str.len var2)) (str.substr (str.at var0 var3) (str.len var1) (str.len var2))))(assert (str.contains (str.substr var0 var5 var3) (str.at "*5\\6L?m~pR" var3)))(assert (<= (str.indexof (str.at var1 8) (str.replace var1 var0 var1) (str.indexof var1 var0 4)) (str.indexof (str.substr var0 2 var3) (str.replace var2 var1 var1) (str.len var2))))(check-sat)