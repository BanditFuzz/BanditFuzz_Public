;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.09381961822509766, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.06345677375793457}
;  score   = 0.09381961822509766
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (> (str.indexof var1 var0 var4) (str.len var2)))(assert (< (str.indexof (str.replace var1 var1 var2) (str.replace var0 "k@*w-]O!hU" "%*\\^})M`J[") (str.len var0)) (str.indexof var2 var1 10)))(assert (> (str.len "vn.[itlaJ2") (str.indexof var1 var2 var4)))(assert (< var3 var5))(check-sat)