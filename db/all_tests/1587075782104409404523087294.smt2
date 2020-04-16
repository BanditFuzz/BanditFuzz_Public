;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04323172569274902, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.07093453407287598}
;  score   = 0.04323172569274902
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (<= var3 var3))(assert (< var4 var3))(assert (<= (str.len var1) (str.len var1)))(assert (str.contains (str.at (str.at var2 var3) (str.indexof var1 var0 var3)) (str.replace var0 "ab9:NHI-W2" var2)))(check-sat)