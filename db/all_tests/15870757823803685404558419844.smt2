;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04225587844848633, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.0662236213684082}
;  score   = 0.04225587844848633
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.in.re var1 re.allchar))(assert (str.contains (str.at var0 8) (str.at var1 var3)))(assert (str.suffixof (str.at var2 var3) (str.substr var0 var4 var5)))(assert (str.contains var1 var1))(check-sat)