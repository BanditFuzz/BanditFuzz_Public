;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.044269561767578125, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.05630993843078613}
;  score   = 0.044269561767578125
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.in.re (str.at var2 var3) (re.* (re.+ re.allchar))))(assert (not (str.in.re "J/TbmvhcO[" re.allchar)))(assert (<= 10 var3))(assert (str.prefixof (str.at var1 var5) (str.replace var0 var0 var1)))(check-sat)