@testitem "072_will_it_fly.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "072_will_it_fly.jl"))

    # Check some simple cases
    @test will_it_fly([3, 2, 3], 9) == true
    @test will_it_fly([1, 2], 5) == false
    @test will_it_fly([3], 5) == true
    @test will_it_fly([3, 2, 3], 1) == false


    # Check some edge cases that are easy to work out by hand.
    @test will_it_fly([1, 2, 3], 6) == false
    @test will_it_fly([5], 5) == true
end