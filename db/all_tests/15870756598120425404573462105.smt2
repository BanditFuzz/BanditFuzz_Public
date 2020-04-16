;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04705333709716797, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.06857943534851074}
;  score   = 0.04705333709716797
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains (str.at "^K5C'`^@bn" var4) (str.replace "~x""Mr_C@&m" var2 var0)))(assert (str.suffixof var0 var1))(assert (str.in.re (str.substr var2 var3 var3) (re.* re.allchar)))(assert (str.in.re (str.replace (str.replace var2 var1 var0) (str.at var0 var4) (str.at var0 var4)) (re.* re.allchar)))(check-sat)