;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.0348663330078125, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.0436701774597168}
;  score   = 0.0348663330078125
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (< var4 var3))(assert (str.suffixof (str.substr "-XT<>'Qh*m" var3 var5) (str.replace var2 var0 "I(`tF##[sx")))(assert (str.prefixof (str.at var1 2) (str.at (str.replace var1 var1 var1) (str.indexof var2 var0 var5))))(assert (< var3 var3))(check-sat)