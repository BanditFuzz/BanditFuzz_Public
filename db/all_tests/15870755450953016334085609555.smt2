;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.056357622146606445, '../SMT_Solvers/QF_S/z3str3/run.sh': 10}
;  score   = 0.056357622146606445
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.suffixof (str.substr var0 var5 var5) (str.substr (str.at var0 var5) (str.indexof var1 var2 var4) (str.len var0))))(assert (str.contains (str.at var2 var3) (str.at var0 var5)))(assert (not var7))(assert (str.contains (str.substr (str.replace var0 var1 var0) (str.indexof var2 "[&j|FQuy""R" var5) (str.len "l22xZ^rRBa")) (str.substr (str.substr var2 var5 var4) (str.len var0) (str.indexof var0 var1 var5))))(check-sat)