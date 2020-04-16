;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04505562782287598, '../SMT_Solvers/QF_S/z3str3/run.sh': 10}
;  score   = 0.04505562782287598
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (>= (str.len var2) (str.len var2)))(assert (str.in.re (str.substr var1 var4 var3) (re.+ (re.* re.allchar))))(assert (< (str.indexof var1 var2 var5) (str.indexof var1 var0 var4)))(assert (str.contains (str.at var0 var5) (str.replace var2 var2 var2)))(check-sat)