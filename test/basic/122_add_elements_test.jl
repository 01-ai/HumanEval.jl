@testitem "122_add_elements.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "122_add_elements.jl"))

    # Check some simple cases
    @test add_elements([1,-2,-3,41,57,76,87,88,99], 3) == -4
    @test add_elements([111,121,3,4000,5,6], 2) == 0
    @test add_elements([11,21,3,90,5,6,7,8,9], 4) == 125
    @test add_elements([111,21,3,4000,5,6,7,8,9], 4) == 24

    # Check some edge cases that are easy to work out by hand.
    @test add_elements([1], 1) == 1
end