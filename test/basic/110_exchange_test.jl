@testitem "110_exchange.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "110_exchange.jl"))

    # Check some simple cases
    @test exchange([1, 2, 3, 4], [1, 2, 3, 4]) == "YES"
    @test exchange([1, 2, 3, 4], [1, 5, 3, 4]) == "NO"
    @test exchange([1, 2, 3, 4], [2, 1, 4, 3]) == "YES" 
    @test exchange([5, 7, 3], [2, 6, 4]) == "YES"
    @test exchange([5, 7, 3], [2, 6, 3]) == "NO" 
    @test exchange([3, 2, 6, 1, 8, 9], [3, 5, 5, 1, 1, 1]) == "NO"

    # Check some edge cases that are easy to work out by hand.
    @test exchange([100, 200], [200, 200]) == "YES"
end