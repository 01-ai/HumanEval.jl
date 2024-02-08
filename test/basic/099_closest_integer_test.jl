@testitem "099_closest_integer.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "099_closest_integer.jl"))

    # Check some simple cases
    @test closest_integer("10") == 10
    @test closest_integer("14.5") == 15
    @test closest_integer("-15.5") == -16
    @test closest_integer("15.3") == 15

    # Check some edge cases that are easy to work out by hand.
    @test closest_integer("0") == 0
end