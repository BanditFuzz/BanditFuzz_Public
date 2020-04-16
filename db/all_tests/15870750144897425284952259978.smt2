;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04219698905944824, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.10025453567504883}
;  score   = 0.04219698905944824
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (<= (str.indexof var0 var0 var4) (str.len var0)))(assert (>= (str.len (str.replace var1 var1 var2)) (str.len (str.substr var0 var5 var3))))(assert (str.contains (str.at var0 var5) (str.at (str.replace var2 ";,rz&QfYq""" var1) (str.indexof var0 var2 var5))))(assert (< var4 var5))(check-sat)