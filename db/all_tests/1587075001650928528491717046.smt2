;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.05174732208251953, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.07984066009521484}
;  score   = 0.05174732208251953
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'sat'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (> (str.len var1) (str.indexof var1 var0 var3)))(assert (str.suffixof (str.at (str.substr var2 var3 var3) (str.indexof "!'AZ30TlzS" var2 var4)) (str.replace (str.substr var2 var4 var3) (str.replace var1 "|y>g28mcGB" var0) (str.at var2 var4))))(assert (> var4 9))(assert (not (str.in.re var1 re.allchar)))(check-sat)