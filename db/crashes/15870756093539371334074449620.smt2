;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 10}
;  score   = 0.0
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'err'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.suffixof (str.replace (str.substr var1 var5 var5) (str.at var0 var4) (str.at var1 var5)) (str.at var0 var3)))(assert (str.contains var1 var0))(assert (str.in.re (str.substr var0 var4 var3) (re.range (str.replace var1 var0 var0) (str.at var1 var3))))(assert (str.contains (str.at (str.substr var2 var5 var4) (str.to.int var1)) (str.at (str.substr var0 var5 var3) (str.to.int var0))))(check-sat)