;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04344296455383301, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.056061744689941406}
;  score   = 0.04344296455383301
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.contains var0 var0))(assert (str.in.re (str.substr var0 var3 var3) (re.+ (re.+ re.allchar))))(assert (str.contains (str.replace var1 var1 var1) (str.replace var2 var0 var2)))(assert (< (str.indexof var0 var0 var3) (str.len var1)))(check-sat)