@testitem "115_max_fill.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "115_max_fill.jl"))

    # Check some simple cases
    @test max_fill([[0,0,1,0], [0,1,0,0], [1,1,1,1]], 1) == 6
    @test max_fill([[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]], 2) == 5
    @test max_fill([[0,0,0], [0,0,0]], 5) == 0

    # Check some edge cases that are easy to work out by hand.
    @test max_fill([[1,1,1,1], [1,1,1,1]], 2) == 4
    @test max_fill([[1,1,1,1], [1,1,1,1]], 9) == 2
end