;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 5
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.056662559509277344, '../SMT_Solvers/QF_S/z3str3/run.sh': 10.0}
;  output   = {'../SMT_Solvers/QF_S/cvc4/run.sh': '(error "Parse Error: /tmp/tmpi1gkux91:13.72: Symbol \'str.from.int\' not declared as a variable\n\n  ...replace var1 "WD^tl:a9XV" var2) (str.from.int var4)))\n                                      ^\n")'}
;  score   = 0.0
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'err', '../SMT_Solvers/QF_S/z3str3/run.sh': 'timeout'}
(set-logic QF_S)(declare-fun var0 () String)
(declare-fun var1 () String)
(declare-fun var2 () String)
(declare-fun var3 () Int)
(declare-fun var4 () Int)
(declare-fun var5 () Int)
(declare-fun var6 () Bool)
(declare-fun var7 () Bool)
(declare-fun var8 () Bool)
(assert (str.contains (str.substr var0 var5 2) (str.substr (str.substr var0 var4 var4) (str.len var2) (str.len var2))))
(assert (str.prefixof (str.replace var2 var2 var2) (str.replace var2 var0 "N;""#IINt7#")))
(assert (str.suffixof (str.substr var1 var5 var5) (str.replace "vZ'ZMj(t:f" var0 var1)))
(assert (str.prefixof (str.replace var1 "WD^tl:a9XV" var2) (str.from.int var4)))
(check-sat)