;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 5
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 10.0, '../SMT_Solvers/QF_S/z3str3/run.sh': 3.9415252208709717}
;  output   = {'../SMT_Solvers/QF_S/z3str3/run.sh': 'unknown'}
;  score   = 0.0
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'timeout', '../SMT_Solvers/QF_S/z3str3/run.sh': 'err'}
(set-logic QF_S)
(declare-fun var0 () String)
(declare-fun var1 () String)
(declare-fun var2 () String)
(declare-fun var3 () Int)
(declare-fun var4 () Int)
(declare-fun var5 () Int)
(declare-fun var6 () Bool)
(declare-fun var7 () Bool)
(declare-fun var8 () Bool)
(assert (str.suffixof (str.at (str.at var1 var3) (str.len var2)) (str.replace (str.at var2 var4) (str.substr var2 var5 9) (str.substr var0 var4 var5))))
(assert (str.prefixof (str.replace (str.replace var1 var1 "*w#b@pP-#@") (str.at var2 var3) (str.substr var0 var4 var3)) (str.replace (str.replace var0 var2 var2) (str.substr var2 7 var3) (str.at var0 var4))))
(assert (str.contains (str.at (str.replace var1 var1 "+FCeXz|'0Q") (str.indexof var1 var1 var5)) (str.at var2 var4)))
(assert (str.in.re var0 (str.to.re "69^088/ASd")))
(check-sat)