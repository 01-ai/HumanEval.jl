@testitem "130_tri.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "130_tri.jl"))

    @test tri(3) == [1, 2, 6]
    @test tri(4) == [1, 2, 6, 3]
    @test tri(5) == [1, 2, 6, 3, 13]
    @test tri(6) == [1, 2, 6, 3, 13, 4]
    @test tri(7) == [1, 2, 6, 3, 13, 4, 22]
    @test tri(8) == [1, 2, 6, 3, 13, 4, 22, 5]
    @test tri(9) == [1, 2, 6, 3, 13, 4, 22, 5, 33]
    @test tri(20) == [1, 2, 6, 3, 13, 4, 22, 5, 33, 6, 46, 7, 61, 8, 78, 9, 97, 10, 118, 11]

    # Check some edge cases that are easy to work out by hand.
    @test tri(0) == []
    @test tri(1) == [1]
end