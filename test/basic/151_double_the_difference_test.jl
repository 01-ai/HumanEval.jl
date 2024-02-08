@testitem "151_double_the_difference.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "151_double_the_difference.jl"))

    # Check some simple cases
    @test double_the_difference([]) == 0
    @test double_the_difference([5, 4]) == 25
    @test double_the_difference([0.1, 0.2, 0.3]) == 0 
    @test double_the_difference([-10, -20, -30]) == 0 


    # Check some edge cases that are easy to work out by hand.
    @test double_the_difference([-1, -2, 8]) == 0
    @test double_the_difference(Any[0.2, 3, 5]) == 34
    @test double_the_difference(collect(-99:2:100)) == 166650

end