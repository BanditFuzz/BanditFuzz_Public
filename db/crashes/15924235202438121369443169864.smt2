;  depth   = 3
;  nconst  = 3
;  assertions = 4
;  timeout = 5
;  time    = {'../SMT_Solvers/QF_S/cvc4/run.sh': 0.11737847328186035, '../SMT_Solvers/QF_S/z3str3/run.sh': 0.47495031356811523}
;  output   = {'../SMT_Solvers/QF_S/z3str3/run.sh': '../SMT_Solvers/QF_S/z3str3/run.sh: line 5: 13721 Segmentation fault      (core dumped) $DIR/z3 smt.string_solver=z3str3 $1'}
;  score   = 0.0
;  result  = {'../SMT_Solvers/QF_S/cvc4/run.sh': 'unsat', '../SMT_Solvers/QF_S/z3str3/run.sh': 'err'}
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
(assert (str.in.re (str.at (str.substr var1 var4 var5) (str.indexof var0 var1 var4)) (re.inter (str.to.re "'""k[/gcW9Z") (str.to.re "7GZ>TZKc!I"))))
(assert (str.in.re var0 (str.to.re "{t3LP/F@r.")))
(assert (str.suffixof (str.at "@m=&'%0RXe" var5) (str.at var0 var5)))
(assert (str.prefixof (str.at var0 var4) (str.substr var1 var5 var5)))
(check-sat)