;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04684329032897949, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05926036834716797}
;  score   = 0.04684329032897949
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (< (str.indexof var2 var2 var5) (str.len var0)))(assert (> var4 var5))(assert (not var6))(assert (>= (str.indexof var2 var2 var3) (str.indexof var2 var0 var5)))(check-sat)