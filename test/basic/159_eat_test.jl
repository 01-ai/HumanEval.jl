@testitem "159_eat.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "159_eat.jl"))

    # Check some simple cases
    @test eat(5, 6, 10) == [11, 4]
    @test eat(4, 8, 9) == [12, 1]
    @test eat(1, 10, 10) == [11, 0]
    @test eat(2, 11, 5) == [7, 0]

    # Check some edge cases that are easy to work out by hand.
    @test eat(4, 5, 7) == [9, 2]
    @test eat(4, 5, 1) == [5, 0]
end