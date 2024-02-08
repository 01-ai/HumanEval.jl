@testitem "152_compare.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "152_compare.jl"))

    # Check some simple cases
    @test compare([1,2,3,4,5,1],[1,2,3,4,2,-2])==[0,0,0,0,3,3]
    @test compare([0,0,0,0,0,0],[0,0,0,0,0,0])==[0,0,0,0,0,0]
    @test compare([1,2,3],[-1,-2,-3])==[2,4,6]
    @test compare([1,2,3,5],[-1,2,3,4])==[2,0,0,1]
end