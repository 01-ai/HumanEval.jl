FROM julia:1

COPY . /workspace/HumanEval.jl
WORKDIR /workspace/HumanEval.jl

RUN julia --project -e "import Pkg; Pkg.instantiate(); using HumanEval"

ENTRYPOINT ["julia", "--project", "-e", "include(\"src/evaluation.jl\");evaluate();"]