;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.035723209381103516, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05247688293457031}
;  score   = 0.035723209381103516
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.suffixof var0 var1))(assert (str.contains (str.replace var0 var2 var2) (str.at "4ISv0N)Bje" var3)))(assert (> var5 var5))(assert (not (str.suffixof var0 "Wn(HdP='<F")))(check-sat)