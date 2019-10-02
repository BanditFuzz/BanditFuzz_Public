from banditfuzz.interface.smtlib.script import SExpr

QF_FP_ALIAS = {
    'Float5'  : SExpr("_", "FloatingPoint", 2, 3),
    'Float16' : SExpr("_", "FloatingPoint", 5, 11),
    'Float32' : SExpr("_", "FloatingPoint", 8, 24),
    'Float64' : SExpr("_", "FloatingPoint", 11, 53),
    'Float128': SExpr("_", "FloatingPoint", 15, 113)
}

QF_FP_SORTS = {
    'Mode'          :  [],
    'FloatingPoint' :  ["Num", "Num"],
}

QF_FP_FUNCS = {
    'fp.abs' 			 : ['FloatingPoint', 'FloatingPoint'],
    'fp.neg' 			 : ['FloatingPoint', 'FloatingPoint'],
    'fp.add' 			 : ['Mode', 'FloatingPoint', 'FloatingPoint', 'FloatingPoint'],
    'fp.sub' 			 : ['Mode', 'FloatingPoint', 'FloatingPoint', 'FloatingPoint'],
    'fp.mul' 			 : ['Mode', 'FloatingPoint', 'FloatingPoint', 'FloatingPoint'],
    'fp.div'			 : ['Mode', 'FloatingPoint', 'FloatingPoint', 'FloatingPoint'],
    'fp.fma' 			 : ['Mode', 'FloatingPoint', 'FloatingPoint', 'FloatingPoint', 'FloatingPoint'],
    'fp.rem'			 : ['FloatingPoint', 'FloatingPoint', 'FloatingPoint'],
    'fp.sqrt'			 : ['Mode', 'FloatingPoint', 'FloatingPoint'],
    'fp.roundToIntegral' : ['Mode', 'FloatingPoint', 'FloatingPoint'],
    'fp.min'			 : ['FloatingPoint', 'FloatingPoint', 'FloatingPoint'],
    'fp.max'			 : ['FloatingPoint', 'FloatingPoint', 'FloatingPoint'],
    'fp.leq'			 : ['FloatingPoint', 'FloatingPoint', 'Bool'],
    'fp.lt'	             : ['FloatingPoint', 'FloatingPoint', 'Bool'],
    'fp.geq'			 : ['FloatingPoint', 'FloatingPoint', 'Bool'],
    'fp.gt'	             : ['FloatingPoint', 'FloatingPoint', 'Bool'],
    'fp.eq'	             : ['FloatingPoint', 'FloatingPoint', 'Bool'],
    'fp.isNormal'		 : ['FloatingPoint', 'Bool'],
    'fp.isSubnormal'	 : ['FloatingPoint', 'Bool'],
    'fp.isZero'			 : ['FloatingPoint', 'Bool'],
    'fp.isInfinite'		 : ['FloatingPoint', 'Bool'],
    'fp.isNaN'			 : ['FloatingPoint', 'Bool'],
    'fp.isNegative'		 : ['FloatingPoint', 'Bool'],
    'fp.isPositive'		 : ['FloatingPoint', 'Bool'],
    'fp'                 : ['Str', 'Str', 'Str', 'FloatingPoint']
}

def mk_literal(sign, exp, mant):
    return SExpr("fp", "#b%s"%sign, "#b%s"%exp, "#b%s"%mant)

def mk_fp_abs(fp):
    return SExpr("fp.abs", fp)

def mk_fp_neg(fp):
    return SExpr("fp.neg", fp)

def mk_fp_add(mode, fp1, fp2):
    return SExpr("fp.add", mode, fp1, fp2)

def mk_fp_sub(mode, fp1, fp2):
    return SExpr("fp.sub", mode, fp1, fp2)

def mk_fp_mul(mode, fp1, fp2):
    return SExpr("fp.mul", mode, fp1, fp2)

def mk_fp_div(mode, fp1, fp2):
    return SExpr("fp.div", mode, fp1, fp2)

def mk_fp_fma(mode, fp1, fp2, fp3):
    return SExpr("fp.fma", mode, fp1, fp2, fp3)

def mk_fp_rem(fp1, fp2):
    return SExpr("fp.rem", fp1, fp2)

def mk_fp_sqrt(mode, fp):
    return SExpr("fp.sqrt", mode, fp)

def mk_fp_roundToIntegral(mode, fp):
    return SExpr("fp.roundToIntegral", mode, fp)

def mk_fp_min(fp1, fp2):
    return SExpr("fp.min", fp1, fp2)

def mk_fp_max(fp1, fp2):
    return SExpr("fp.max", fp1, fp2)

def mk_fp_leq(fp1, fp2):
    return SExpr("fp.leq", fp1, fp2)

def mk_fp_lt(fp1, fp2):
    return SExpr("fp.lt", fp1, fp2)

def mk_fp_geq(fp1, fp2):
    return SExpr("fp.geq", fp1, fp2)

def mk_fp_gt(fp1, fp2):
    return SExpr("fp.gt", fp1, fp2)

def mk_fp_eq(fp1, fp2):
    return SExpr("fp.eq", fp1, fp2)

def mk_fp_isNormal(fp):
    return SExpr("fp.isNormal", fp)

def mk_fp_isSubnormal(fp):
    return SExpr("fp.isSubnormal", fp)

def mk_fp_isZero(fp):
    return SExpr("fp.isZero", fp)

def mk_fp_isInfinite(fp):
    return SExpr("fp.isInfinite", fp)

def mk_fp_isNaN(fp):
    return SExpr("fp.isNaN", fp)

def mk_fp_isNegative(fp):
    return SExpr("fp.isNegative", fp)

def mk_fp_isPositive(fp):
    return SExpr("fp.isPositive", fp)

QF_FP_MKS = {
    'fp.abs' 			 : mk_fp_abs,
    'fp.neg' 			 : mk_fp_neg,
    'fp.add' 			 : mk_fp_add,
    'fp.sub' 			 : mk_fp_sub,
    'fp.mul' 			 : mk_fp_mul,
    'fp.div'			 : mk_fp_div,
    'fp.fma' 			 : mk_fp_fma,
    'fp.rem'			 : mk_fp_rem,
    'fp.sqrt'			 : mk_fp_sqrt,
    'fp.roundToIntegral' : mk_fp_roundToIntegral,
    'fp.min'			 : mk_fp_min,
    'fp.max'			 : mk_fp_max,
    'fp.leq'			 : mk_fp_leq,
    'fp.lt'	             : mk_fp_lt,
    'fp.geq'			 : mk_fp_geq,
    'fp.gt'	             : mk_fp_gt,
    'fp.eq'	             : mk_fp_eq,
    'fp.isNormal'		 : mk_fp_isNormal,
    'fp.isSubnormal'	 : mk_fp_isSubnormal,
    'fp.isZero'			 : mk_fp_isZero,
    'fp.isInfinite'		 : mk_fp_isInfinite,
    'fp.isNaN'			 : mk_fp_isNaN,
    'fp.isNegative'		 : mk_fp_isNegative,
    'fp.isPositive'		 : mk_fp_isPositive
}