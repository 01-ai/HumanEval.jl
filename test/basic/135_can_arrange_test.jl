@testitem "135_can_arrange.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "135_can_arrange.jl"))

    # Check some simple cases
    @test can_arrange([1,2,4,3,5])==4
    @test can_arrange([1,2,4,5])==-1
    @test can_arrange([1,4,2,5,6,7,8,9,10])==3
    @test can_arrange([4,8,5,7,3])==5

    # Check some edge cases that are easy to work out by hand.
    @test can_arrange(Int[])==-1
end