# HumanEval.jl

[![Run tests](https://github.com/01-ai/HumanEval.jl/actions/workflows/ci.yml/badge.svg)](https://github.com/01-ai/HumanEval.jl/actions/workflows/ci.yml)
[![](https://img.shields.io/badge/Chat%20on%20Slack-%23generative--ai-ff69b4?logo=slack)](https://julialang.org/slack/)

This project is a julia version of [HumanEval](https://github.com/openai/human-eval). Our goal is to gain a better understanding of latest LLMs' performance with the Julia programming language.

|                        model | evalplus *| basic **|
|---------------------------------|----------|---------|
|              gpt-4-0125-preview |    0.774 |   0.823 |
|                     gpt-4-turbo |    0.756 |   0.823 |
|     mistral-large-instruct-2407 |    0.744 |   0.823 |
|                          gpt-4o |    0.738 |   0.817 |
|      claude-3-5-sonnet-20240620 |     0.72 |   0.823 |
|              gpt-4-1106-preview |     0.72 |   0.805 |
|      DeepSeek-Coder-V2-Instruct |    0.695 |   0.774 |
|                DeepSeek-V2-Chat |    0.689 |   0.756 |
|         Llama-3.1-405B-Instruct |    0.628 |   0.744 |
|          claude-3-opus-20240229 |     0.61 |   0.689 |
|              Qwen2-72B-Instruct |    0.598 |   0.665 |
|          Phind-CodeLlama-34B-v2 |    0.591 |   0.659 |
|              gpt-3.5-turbo-0125 |    0.591 |   0.652 |
|            mistral-large-latest |    0.573 |   0.659 |
|              gpt-3.5-turbo-0613 |    0.567 |    0.64 |
|              gpt-3.5-turbo-1106 |    0.555 |   0.628 |
|     DeepSeek-Coder-33B-instruct |    0.543 |   0.598 |
|             Magicoder-S-DS-6.7B |    0.543 |   0.616 |
|            WizardCoder-33B-V1.1 |    0.543 |   0.604 |
|               Qwen1.5-110B-Chat |     0.53 |   0.598 |
|                        yi-large |    0.524 |   0.652 |
|    deepseek-coder-6.7b-instruct |    0.488 |   0.549 |
|       CodeLlama-70b-Instruct-hf |    0.457 |   0.561 |
|             code-millenials-34b |    0.439 |     0.5 |
|               Magicoder-S-CL-7B |    0.402 |   0.463 |
|       CodeLlama-34b-Instruct-hf |    0.311 |   0.366 |
|            Starling-LM-7B-alpha |    0.299 |   0.354 |
|                     Yi-34B-Chat |    0.232 |   0.317 |

<sub>
<strong>* evalplus:</strong> scores are calculated based on test cases from both <a href="https://github.com/openai/human-eval">HumanEval</a> and <a href="https://github.com/evalplus/evalplus">evalplus</a>.<br>
<strong>** basic:</strong> scores are calculated based on test cases from <a href="https://github.com/openai/human-eval">HumanEval</a> only. <br>
By default, all results are calculated by <code>pass@1</code> using greedy decoding. Models are deployed with <a href="https://github.com/vllm-project/vllm">vllm</a> which uses a predefined chat template stored in the tokenizer. Feel free to <a href="https://github.com/01-ai/HumanEval.jl/issues">create an issue</a> if you'd like to evaluate some other models. <br>
</sub>

## Getting Started

First, deploy the model you'd like to evaluate with a OpenAI compatible endpoint, like [vLLM](https://docs.vllm.ai/en/latest/getting_started/quickstart.html#openai-compatible-server) or [Ollama](https://ollama.com/blog/openai-compatibility). We'll need the `OPENAI_API_KEY` and `OPENAI_BASE_URL` in the next step.

To test models from Anthropic, you should set `ANTHROPIC_API_KEY` and `ANTHROPIC_BASE_URL` instead.

### Evaluate with docker

```bash
docker run -it --rm \
  -v /PATH/TO/SAVE/RESULTS/generations:/workspace/HumanEval.jl/generations \
  -e OPENAI_API_KEY=YOUR_SECRET \
  -e OPENAI_BASE_URL=http://localhost:8000/v1 \
  -e RETESTITEMS_NWORKERS=16 \
  -e RETESTITEMS_TESTITEM_TIMEOUT=15 \
  -e MODEL=gpt-3.5-turbo-0613 \
  ghcr.io/01-ai/humaneval.jl:latest
```

- `/PATH/TO/SAVE/RESULTS/generations`, this folder will contain raw responses from the model, extracted julia code snippets, and unit test results.
- `YOUR_SECRET`, it should be the same with the one you provided when deploying the server.
- `RETESTITEMS_NWORKERS`, adjust it to the number of cores with your test environment. It specifies how many workers we use to run tests.
- `RETESTITEMS_TESTITEM_TIMEOUT`, the default `15` seconds should be enough to pass all the test cases.
- `MODEL`, the model name you specified when deploying models. If you use `vLLM`, it should be the same with the value of ` --served-model-name`

### Evaluate with local development environment

1. Make sure you have the latest [Julia](https://julialang.org/downloads/) installed.
2. Clone and enter the root of this project.
3. Start the Julia REPL with the following command

```bash
OPENAI_API_KEY=debug OPENAI_BASE_URL=http://localhost:8000/v1 RETESTITEMS_NWORKERS=16 RETESTITEMS_TESTITEM_TIMEOUT=15 MODEL=gpt-3.5-turbo-0613 julia --project
```

The meaning of the environment variables are the same with above.

4. Execute following commands in the Julia REPL.

```jl
julia> import Pkg; Pkg.instantiate();

julia> include("src/evaluation.jl")

julia> evaluate("YOUR_MODEL_NAME")
```

Once finished, the results will be displayed. You may find more details under the `generations` directory.

## Related Work

- [nuprl/MultiPL-E](https://github.com/nuprl/MultiPL-E/blob/main/prompts/humaneval-jl-transform.jsonl) contains Julia version prompts transformed from the original Python version [HumanEval](https://github.com/openai/human-eval). However, based on my limited Julia programming experience, the prompts are not that accurate and conventional.
- [Julia-LLM-Leaderboard](https://github.com/svilupp/Julia-LLM-Leaderboard), which focuses on practicality and simplicity.
- [EvalPlus Leaderboard](https://evalplus.github.io/leaderboard.html)

## Future Work

- Explore advanced techniques to improve LLM's performance with code in general. Especially how to iteratively refine code.
- Julia specific LLM training/finetuning. We want to know the minimum requirement to train a code LLM.
- Improve Yi series models' performance with code.

We're hiring! If you're interested in working on code LLM at [01.ai](https://01.ai/), please contact [yi@01.ai](mailto:yi@01.ai).


## FAQ

- [What are the differences compared to the original Python version?](https://github.com/01-ai/HumanEval.jl/discussions/1)
- [What are the limitations of this project?](https://github.com/01-ai/HumanEval.jl/discussions/2)
- [How do LLMs perform compared to human?](https://github.com/01-ai/HumanEval.jl/discussions/3)
- [How difficult is each problem?](https://github.com/01-ai/HumanEval.jl/discussions/4)
- [Is GPT4 good enough?](https://github.com/01-ai/HumanEval.jl/discussions/5)
- [How to make this evaluation higher quality?](https://github.com/01-ai/HumanEval.jl/discussions/6)
- [How should we measure hallucinations?](https://github.com/01-ai/HumanEval.jl/discussions/7)
- [Are there any other metrics we should care beyond pass@k?](https://github.com/01-ai/HumanEval.jl/discussions/8)
- [Why does Yi-34B-Chat perform so poor?](https://github.com/01-ai/HumanEval.jl/discussions/9)

## Acknowledgement

- This project heavily relies on many features provided by [ReTestItems.jl](https://github.com/JuliaTesting/ReTestItems.jl). Great thanks to [Nick Robinson](https://github.com/nickrobinson251)'s help during the development.