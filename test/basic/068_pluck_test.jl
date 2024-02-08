@testitem "068_pluck.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "068_pluck.jl"))

    # Check some simple cases
    @test pluck([4,2,3]) == [2, 2]
    @test pluck([1,2,3]) == [2, 2]
    @test pluck(Int[]) == []
    @test pluck([5, 0, 3, 0, 4, 2]) == [0, 2]

    # Checpluckge cases that are easy to work out by hand.
    @test pluck([1, 2, 3, 0, 5, 3]) == [0, 4]
    @test pluck([5, 4, 8, 4 ,8]) == [4, 2]
    @test pluck([7, 6, 7, 1]) == [6, 2]
    @test pluck([7, 9, 7, 1]) == []
end