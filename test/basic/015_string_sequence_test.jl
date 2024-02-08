@testitem "015_string_sequence.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "015_string_sequence.jl"))

    @test string_sequence(0) == "0"
    @test string_sequence(3) == "0 1 2 3"
    @test string_sequence(10) == "0 1 2 3 4 5 6 7 8 9 10"
end