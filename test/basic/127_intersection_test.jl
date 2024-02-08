@testitem "127_intersection.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "127_intersection.jl"))

    # Check some simple cases
    @test intersection([1, 2], [2, 3]) == "NO"
    @test intersection([-1, 1], [0, 4]) == "NO"
    @test intersection([-3, -1], [-5, 5]) == "YES"
    @test intersection([-2, 2], [-4, 0]) == "YES"

    # Check some edge cases that are easy to work out by hand.
    @test intersection([-11, 2], [-1, -1]) == "NO"
    @test intersection([1, 2], [3, 5]) == "NO"
    @test intersection([1, 2], [1, 2]) == "NO"
    @test intersection([-2, -2], [-3, -2]) == "NO"
end