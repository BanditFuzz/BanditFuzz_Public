;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04396772384643555, '../SMT_Solvers/QF_S/z3str3/run.sh': 10}
;  score   = 0.04396772384643555
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (not (str.prefixof var1 var0)))(assert (> var3 10))(assert (str.contains (str.replace var0 var2 var0) (str.substr "mD_MK}s<zr" var3 var4)))(assert (<= (str.indexof var2 var2 var4) (str.indexof (str.replace var0 var2 var2) (str.replace var0 var2 var0) (str.len ">7>ajwT$e,"))))(check-sat)