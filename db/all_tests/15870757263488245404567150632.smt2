;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.050089359283447266, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05433368682861328}
;  score   = 0.050089359283447266
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.suffixof (str.substr var2 var5 var5) (str.substr var2 var4 var5)))(assert (not (< var4 10)))(assert (str.suffixof (str.substr var0 var4 var4) (str.substr "JCI>%XR]Ws" var4 var4)))(assert (str.in.re (str.replace var2 var1 var1) (re.+ re.allchar)))(check-sat)