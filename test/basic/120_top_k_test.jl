@testitem "120_top_k.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "120_top_k.jl"))

    # Check some simple cases
    @test top_k([-3, -4, 5], 3) == [5, -3, -4]
    @test top_k([4, -4, 4], 2) == [4, 4]
    @test top_k([-3, 2, 1, 2, -1, -2, 1], 1) == [2]
    @test top_k([123, -123, 20, 0 , 1, 2, -3], 3) == [123, 20, 2]
    @test top_k([-123, 20, 0 , 1, 2, -3], 4) == [20, 2, 1, 0]
    @test top_k([5, 15, 0, 3, -13, -8, 0], 7) == [15, 5, 3, 0, 0, -8, -13]
    @test top_k([-1, 0, 2, 5, 3, -10], 2) == [5, 3]
    @test top_k([1, 0, 5, -7], 1) == [5]
    @test top_k([4, -4], 2) == [4, -4]
    @test top_k([-10, 10], 2) == [10, -10]

    # Check some edge cases that are easy to work out by hand.
    @test top_k([1, 2, 3, -23, 243, -400, 0], 0) == []
end