@testitem "126_is_sorted.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "126_is_sorted.jl"))

    # Check some simple cases
    @test is_sorted([5]) == true
    @test is_sorted([1, 2, 3, 4, 5]) == true
    @test is_sorted([1, 3, 2, 4, 5]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6]) == true
    @test is_sorted([1, 2, 3, 4, 5, 6, 7]) == true
    @test is_sorted([1, 3, 2, 4, 5, 6, 7]) == false
    @test is_sorted(Int[]) == true
    @test is_sorted([1]) == true
    @test is_sorted([3, 2, 1]) == false
    
    # Check some edge cases that are easy to work out by hand.
    @test is_sorted([1, 2, 2, 2, 3, 4]) == false
    @test is_sorted([1, 2, 3, 3, 3, 4]) == false
    @test is_sorted([1, 2, 2, 3, 3, 4]) == false
    @test is_sorted([1, 2, 3, 4]) == true
end