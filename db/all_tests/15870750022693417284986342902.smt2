;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.070831298828125, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.047250986099243164}
;  score   = 0.070831298828125
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (>= var4 var3))(assert (str.prefixof (str.substr "G2aKw@WUmW" var3 var3) (str.substr (str.at "Upsl?uX#]/" var5) (str.indexof ">YP\\/'QkK?" var0 var3) (str.indexof var2 var1 var4))))(assert (> (str.indexof var1 var1 var5) (str.len "~QfuVPhp!p")))(assert (<= (str.len var1) (str.indexof (str.at var2 1) (str.at var1 var4) (str.len var1))))(check-sat)