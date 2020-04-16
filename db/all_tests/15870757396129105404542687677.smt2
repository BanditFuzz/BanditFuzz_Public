;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04997873306274414, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.12929081916809082}
;  score   = 0.04997873306274414
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.in.re var0 re.allchar))(assert (str.in.re var0 re.allchar))(assert (str.contains (str.at "XG!yD)pe(7" var4) (str.substr var0 var5 var4)))(assert (str.suffixof (str.substr (str.substr var1 var4 var4) (str.indexof var0 var1 var3) (str.len var1)) (str.at var2 var4)))(check-sat)