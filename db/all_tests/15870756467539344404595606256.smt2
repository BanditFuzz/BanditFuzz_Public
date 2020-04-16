;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04584074020385742, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04851651191711426}
;  score   = 0.04584074020385742
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (not (str.contains (str.substr "]x+joLAa/5" var3 var5) (str.at var1 var4))))(assert (<= (str.indexof var1 var1 7) (str.indexof var2 var2 var3)))(assert (str.contains (str.replace var1 var2 var2) (str.substr var1 var4 var3)))(assert (not var6))(check-sat)