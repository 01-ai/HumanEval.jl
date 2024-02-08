@testitem "123_get_odd_collatz.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "123_get_odd_collatz.jl"))

    # Check some simple cases
    @test get_odd_collatz(14) == [1, 5, 7, 11, 13, 17]
    @test get_odd_collatz(5) == [1, 5]
    @test get_odd_collatz(12) == [1, 3, 5]

    # Check some edge cases that are easy to work out by hand.
    @test get_odd_collatz(1) == [1]
end