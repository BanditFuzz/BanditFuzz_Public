;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 5
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.05209636688232422, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04946541786193848}
;  score   = 0.002630949020385742
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)
(declare-fun var0 () String)
(declare-fun var1 () String)
(declare-fun var2 () String)
(declare-fun var3 () Int)
(declare-fun var4 () Int)
(declare-fun var5 () Int)
(declare-fun var6 () Bool)
(declare-fun var7 () Bool)
(declare-fun var8 () Bool)
(assert (str.prefixof (str.substr var2 var5 var3) (str.replace var2 var0 var2)))
(assert (str.suffixof "r2>4)}?vnr" var0))
(assert (str.suffixof var2 var2))
(assert (str.contains (str.substr (str.replace var0 var0 var2) (str.indexof "v2GmINAI<x" var0 var3) (str.indexof var2 var1 var5)) (str.replace var0 var0 var0)))
(check-sat)