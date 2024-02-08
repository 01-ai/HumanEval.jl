@testitem "011_string_xor.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "011_string_xor.jl"))

    @test string_xor("111000", "101010") == "010010"
    @test string_xor("1", "1") == "0"
    @test string_xor("0101", "0000") == "0101"
end