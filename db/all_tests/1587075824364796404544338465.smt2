;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03403282165527344, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04401993751525879}
;  score   = 0.03403282165527344
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (< var4 var4))(assert (str.suffixof "|]?_$hf1,F" "k,7{+D5lx("))(assert (str.prefixof (str.substr (str.replace var2 "\\3@&\\Jt*$H" var0) (str.len var2) (str.len var1)) (str.replace (str.replace var0 var1 var2) (str.replace var1 var2 var2) (str.substr var1 var5 var4))))(assert (not (< var4 var3)))(check-sat)