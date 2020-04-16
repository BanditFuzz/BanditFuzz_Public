;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.036864519119262695, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04818987846374512}
;  score   = 0.036864519119262695
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains (str.at var1 var4) (str.replace (str.at var2 var5) (str.substr "jc~vH#}^^\\" var5 var5) (str.substr "5;$$(aWr5{" var5 var3))))(assert (< var4 var4))(assert (>= (str.len var1) (str.indexof "xgLOQ7&>'x" "O)<}>2/\\aE" var4)))(assert (str.suffixof (str.substr var2 var4 var5) (str.replace var2 var0 var2)))(check-sat)