;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 5
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 10.0, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.06438350677490234}
;  score   = 9.935616493225098
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'timeout', '../SMT_Solvers/QF_S/z3str3/run.sh': 'unsat'}
(set-logic QF_S)(declare-fun var0 () String)
(declare-fun var1 () String)
(declare-fun var2 () String)
(declare-fun var3 () Int)
(declare-fun var4 () Int)
(declare-fun var5 () Int)
(declare-fun var6 () Bool)
(declare-fun var7 () Bool)
(declare-fun var8 () Bool)
(assert (<= (str.len (str.at var1 (str.indexof (str.at var0 var5) (str.substr var1 var3 var4) (str.len var0)))) (str.len (str.replace "..0SJfM##d" var2 var1))))
(assert (> (str.indexof var1 "xD'`F@6'f3" var4) (str.indexof var2 var0 var3)))
(assert (< (str.len (str.replace var2 var1 var2)) (str.indexof (str.substr var1 var4 3) (str.replace var1 var2 var0) (str.indexof var0 var1 var3))))
(assert (str.in.re (str.replace (str.++ var1 "|la98QT#c6") (str.++ var1 "|la98QT#c6") (str.++ var1 "|la98QT#c6")) (re.+ (str.to.re (str.substr (str.replace var1 var1 var1) (str.len var0) (str.indexof var2 var0 var4))))))
(check-sat)