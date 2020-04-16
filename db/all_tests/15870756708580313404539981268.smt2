;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04216122627258301, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.06639266014099121}
;  score   = 0.04216122627258301
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (<= (str.len var1) (str.len (str.at var1 var3))))(assert (< (str.indexof var0 "~Ex1&_v>73" var4) (str.len var0)))(assert (<= (str.len var1) (str.indexof var2 var1 var3)))(assert (not var6))(check-sat)