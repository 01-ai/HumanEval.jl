@testitem "038_decode_cyclic.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "038_decode_cyclic.jl"))

    for _ in 1:100
        s = join((rand('a':'z') for _ in 1:rand(10:20)))
        @test decode_cyclic(encode_cyclic(s)) == s
    end
end