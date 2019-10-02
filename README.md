# BanditFuzz

BanditFuzz runs in a virtualenv.

To install BanditFuzz, navigate to its root and run: `venv_install.sh` . This script will create a directory in the BanditFuzz root directory called `venv`.

To run Banditfuzz:
```
source venv/bin/activate

banditfuzz /Absolute/Path/To/Solver1/Directory /Absolute/Path/To/Solver2/Directory ... --ModelFile file --OutputDirectory db -str -rt

```

When done: `deactivate`

In each solver directory, BanditFuzz presuposes the existance of a `run.sh` script, that takes one command line argument, the name of the smt2 input to be solved. 

The `-rt` flag switches from bug fuzzing to runtime fuzzing. BanditFuzz will try to maximize the runtime of the first input solver. If there are multiple BanditFuzz will try to find inputs with the largest margin between the first solver and the remaining. 
