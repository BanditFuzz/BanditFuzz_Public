import argparse,multiprocessing

parser = argparse.ArgumentParser()

parser.add_argument("-t", "--target-solvers",
                metavar="target_solvers[,target_solvers...]",
                action="store",
                dest="target_solvers",
                default=None,
                nargs='+',
                help="The target SMT Solvers in the banditfuzz loop."
)

parser.add_argument("-r", "--reference-solvers",
                metavar="reference_solvers[,reference_solvers...]",
                action="store",
                dest="reference_solvers",
                default=None,
                nargs='+',
                help="The reference SMT Solvers in the banditfuzz loop."
)

parser.add_argument("-db", "--output-database",
            metavar="db",
            action="store",
            dest="db",
            default="db",
            type=str,
            help="The output database of inputs"
)

parser.add_argument("-rng",
            metavar="rng",
            action="store",
            dest="rng",
            default=42,
            type=int,
            help="Library directory, save state of the database of machsmt"
)

parser.add_argument("-n", "--num-asserts",
            metavar="nassert",
            action="store",
            dest="nassert",
            default=5,
            type=int,
            help="number of asserting ASTs"
)

parser.add_argument("-d", "-depth",
            metavar="depth",
            action="store",
            dest="depth",
            default=5,
            type=int,
            help="depth of each asserting AST"
)

parser.add_argument("-v", "-vars",
            metavar="vars",
            action="store",
            dest="vars",
            default=5,
            type=int,
            help="number of variables per sort"
)

parser.add_argument("-debug",
            metavar="debug",
            action="store",
            dest="debug",
            default=True,
            type=bool,
            help="Run in debug mode"
)

parser.add_argument("-wall",
            metavar="wall",
            action="store",
            dest="wall",
            default=False,
            type=bool,
            help="Exit on warning"
)

parser.add_argument("-wt", "--timeout", "--wallclock-timeout",
            metavar="timeout",
            action="store",
            dest="timeout",
            default=2400,
            type=int,
            help="Timeout of a solver/benchmark query"
)

parser.add_argument("--max-chaining",
            metavar="timeout",
            action="store",
            dest="timeout",
            default=10,
            type=int,
            help="Timeout of a solver/benchmark query"
)

parser.add_argument('-q', '--quantifiers', "--quantified",
                    action='store_true',
                    dest="quantified",
                    help="Generate quantified benchmarks"
)

parser.add_argument('-a', '--arrays', 
                    action='store_true',
                    dest="arrays",
                    help="Generate benchmarks with arrays"
)

parser.add_argument('-uf', '--uninterpreted-functions', 
                    action='store_true',
                    dest="uf",
                    help="Generate benchmarks with uninterpreted functions"
)

parser.add_argument('-s', '--strings', 
                    action='store_true',
                    dest="strings",
                    help="Generate benchmarks with strings functions"
)

parser.add_argument('-fp', '--floating-point', 
                    action='store_true',
                    dest="fp",
                    help="Generate benchmarks with floating point"
)

parser.add_argument('-bv', '--bit-vectors', 
                    action='store_true',
                    dest="bv",
                    help="Generate benchmarks with bit vectors"
)

parser.add_argument('-df', '-diff', '--difference-logic', 
                    action='store_true',
                    dest="diff",
                    help="Generate benchmarks with differential constraints"
)

parser.add_argument('-l', '-linear', 
                    action='store_true',
                    dest="linear",
                    help="Generate benchmarks with linear constraints"
)

parser.add_argument('-nl', '-non-linear', 
                    action='store_true',
                    dest="nonlinear",
                    help="Generate benchmarks without linear constraints (default)"
)

parser.add_argument('-int', '--integer', 
                    action='store_true',
                    dest="integer",
                    help="Generate benchmarks with integers"
)


parser.add_argument('-real', '--real', 
                    action='store_true',
                    dest="real",
                    help="Generate benchmarks with reals"
)



args = parser.parse_args()