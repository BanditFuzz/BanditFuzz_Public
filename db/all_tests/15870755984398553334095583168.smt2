;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.043886423110961914, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.08185505867004395}
;  score   = 0.043886423110961914
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (<= (str.len "_$0i%p8w:""") (str.len var0)))(assert (str.contains (str.replace var2 var2 "@pf)ojLE""2") (str.at (str.replace var0 var0 var2) (str.len var1))))(assert (str.in.re (str.substr var0 var4 var3) (re.+ re.allchar)))(assert (< var4 var5))(check-sat)