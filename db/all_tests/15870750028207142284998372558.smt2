;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.03529691696166992, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.09020757675170898}
;  score   = 0.03529691696166992
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.in.re (str.substr var1 var3 var3) (re.* re.allchar)))(assert (< var5 6))(assert (> (str.indexof "pi~nWjp$;x" var0 7) (str.len var2)))(assert (str.suffixof (str.at var2 var5) (str.replace var0 var1 var1)))(check-sat)