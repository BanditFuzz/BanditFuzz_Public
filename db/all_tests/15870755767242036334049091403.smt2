;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 10
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.04212045669555664, '../SMT_Solvers/QF_S/z3str3/run.sh': 10}
;  score   = 0.04212045669555664
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'sat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)(declare-fun var1 () String)(declare-fun var2 () String)(declare-fun var3 () Int)(declare-fun var4 () Int)(declare-fun var5 () Int)(declare-fun var6 () Bool)(declare-fun var7 () Bool)(declare-fun var8 () Bool)(assert (str.in.re var0 re.allchar))(assert (str.prefixof (str.at var1 var3) (str.replace var0 var2 "E|yY?G9[%r")))(assert (not var7))(assert (str.suffixof var1 "l;xO=%G7XL"))(check-sat)