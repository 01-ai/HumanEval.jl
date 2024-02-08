@testitem "146_specialFilter.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "146_specialFilter.jl"))

    # Check some simple cases
    @test specialFilter([5, -2, 1, -5]) == 0  
    @test specialFilter([15, -73, 14, -15]) == 1
    @test specialFilter([33, -2, -3, 45, 21, 109]) == 2
    @test specialFilter([43, -12, 93, 125, 121, 109]) == 4
    @test specialFilter([71, -2, -33, 75, 21, 19]) == 3


    # Check some edge cases that are easy to work out by hand.
    @test specialFilter([1]) == 0              
    @test specialFilter(Int[]) == 0                   

end