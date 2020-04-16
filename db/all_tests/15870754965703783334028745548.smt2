;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.034006595611572266, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.04421710968017578}
;  score   = 0.034006595611572266
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (> var4 var4))(assert (str.in.re (str.at var2 var5) (re.* re.allchar)))(assert (str.prefixof var1 var0))(assert (str.suffixof (str.replace "/:.j88/?8M" var0 var2) (str.substr var1 var4 var5)))(check-sat)