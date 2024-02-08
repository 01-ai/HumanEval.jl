@testitem "100_make_a_pile.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "100_make_a_pile.jl"))

    # Check some simple cases
    @test make_a_pile(3) == [3, 5, 7]
    @test make_a_pile(4) == [4,6,8,10]
    @test make_a_pile(5) == [5, 7, 9, 11, 13]
    @test make_a_pile(6) == [6, 8, 10, 12, 14, 16]
    @test make_a_pile(8) == [8, 10, 12, 14, 16, 18, 20, 22]
end