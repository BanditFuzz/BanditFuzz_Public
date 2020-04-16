;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04469585418701172, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.22568130493164062}
;  score   = 0.04469585418701172
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains var0 var1))(assert (str.prefixof (str.replace var0 var1 var2) (str.at (str.substr var2 var4 var3) (str.indexof var0 var1 var4))))(assert (> (str.len var1) (str.indexof var2 var0 1)))(assert (str.suffixof (str.replace var2 var1 var2) (str.at "+##B?Q$,zD" var4)))(check-sat)