using HumanEval
using HumanEval.HumanEvalTasks
using JSON3
using GZip

function taskid2entrypoint()
    mapping = Dict()
    TASK_DIR = joinpath(@__DIR__, "..", "src", "tasks")
    for f in readdir(TASK_DIR)
        if !endswith(f, "_test.jl")
            i, p = split(splitext(f)[1], '_', limit=2)
            mapping[i] = p
        end
    end
    mapping
end

const TASK_ID_TO_ENTRY_POINT = taskid2entrypoint()

myconvert(t, x) = convert(t, x)
myconvert(::Type{String}, x) = String(x)
myconvert(::Type{Vector{String}}, x::String) = String[x]
myconvert(::Type{Dict{String}}, x::JSON3.Object) =
    Dict(String(k) => v for (k, v) in pairs(convert(Dict{Symbol,Any}, x)))

function _gen_extra_tests(src)
    src_id = replace(splitext(splitext(basename(src))[1])[1], '-' => '_', '.' => '_')
    GZip.open(src) do io
        for line in eachline(io)
            r = JSON3.read(line)
            i = lpad(split(r.task_id, '/')[2], 3, '0')
            p = TASK_ID_TO_ENTRY_POINT[i] |> Symbol
            f = getproperty(HumanEvalTasks, p)
            m = methods(f)[begin]
            arg_types = m.sig.parameters[2:end]

            println(i)

            if i in ["055", "063"]
                # Large numbers will result to timeout while testing
                # Personally I'm not very interested in calcluating Fibonacci numbers ;(
                continue
            end

            open(joinpath(@__DIR__, "evalplus", "$(i)_$(p)_$(src_id)_test.jl"), "w") do io
                println(io, "@testitem \"$(i)_$(p)_$(src_id)_test.jl\" tags=[:$(src_id)] begin")
                println(io, "    include(joinpath(ENV[\"GENERATION_DIR\"], \"$(i)_$(p).jl\"))")
                for args in r.plus_input
                    @assert length(args) == length(arg_types) "args: $args ; arg_types: $arg_types"

                    try
                        if i == "022"
                            any(x -> x isa JSON3.Object || x isa JSON3.Array, args[1]) &&
                                continue
                        elseif i == "160"
                            args = (replace(args[1], "**" => "^", "//" => "÷"), args[2])
                        end
                        args_converted =
                            Tuple(myconvert(t, a) for (a, t) in zip(args, arg_types))

                        if r.atol == 0
                            s = "    @test $p($(join(map(repr,args_converted), ','))) == $(repr(f(args_converted...)))"
                        else
                            println("ATOL of $i is: $(r.atol)")
                            s = "    @test isapprox($p($(join(map(repr,args_converted), ','))), $(repr(f(args_converted...))), atol=$(r.atol))"
                        end
                        if length(s) > 1024
                            continue
                        end
                        println(io, s)
                    catch ex
                        if ex isa MethodError || ex isa InexactError || ex isa OverflowError || ex isa DivideError
                            println()
                            println(ex)
                            println()
                        else
                            rethrow()
                        end
                    end
                end
                println(io, "end")
            end
        end
    end
end

function gen_extra_tests(is_mini=false, version="v0.1.9")
    extra = is_mini ? "-Mini" : ""
    link = "https://github.com/ganler/release/releases/download/humanevalplus/HumanEvalPlus$(extra)-$(version).jsonl.gz"
    src = download(
        link,
        joinpath(@__DIR__, "HumanEvalPlus$(extra)-$(version).jsonl.gz"),
    )
    _gen_extra_tests(src)
end
