@testitem "090_next_smallest.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "090_next_smallest.jl"))

    # Check some simple cases
    @test next_smallest([1, 2, 3, 4, 5]) == 2
    @test next_smallest([5, 1, 4, 3, 2]) == 2
    @test next_smallest(Int[]) === nothing
    @test next_smallest([1, 1]) === nothing
    @test next_smallest([1,1,1,1,0]) == 1
    @test next_smallest([1, 1]) === nothing
    @test next_smallest([-35, 34, 12, -45]) == -35
end