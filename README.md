# BanditFuzz

BanditFuzz runs in a virtualenv.

To install BanditFuzz, navigate to its root and run: `venv_install.sh` . This script will create a directory in the BanditFuzz root directory called `venv`.

To run Banditfuzz:
```
source venv/bin/activate

banditfuzz /Absolute/Path/To/Solver1/run.sh /Absolute/Path/To/Solver2/run.sh

```

When done: `deactivate`

In the above example, the `run.sh` script, takes one command line argument, the name of the smt2 input to be solved, and runs the solver on that input, and prints the result to stdout. 

`QF_S,QF_FP` are supported.
