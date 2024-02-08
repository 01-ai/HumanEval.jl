@testitem "163_generate_integers.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "163_generate_integers.jl"))

    # Check some simple cases
    @test generate_integers(2, 10) == [2, 4, 6, 8]
    @test generate_integers(10, 2) == [2, 4, 6, 8]
    @test generate_integers(132, 2) == [2, 4, 6, 8]
    @test generate_integers(17,89) == []
end