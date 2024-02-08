@testitem "050_decode_shift.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "050_decode_shift.jl"))

    for _ in 1:100
        s = join((rand('a':'z') for n in 1:rand(10:20)))
        encoded_s = encode_shift(s)
        @test decode_shift(encoded_s) == s
    end
end