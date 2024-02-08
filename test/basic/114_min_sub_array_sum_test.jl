@testitem "114_min_sub_array_sum.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "114_min_sub_array_sum.jl"))

    # Check some simple cases
    @test min_sub_array_sum([2, 3, 4, 1, 2, 4]) == 1
    @test min_sub_array_sum([-1, -2, -3]) == -6
    @test min_sub_array_sum([-1, -2, -3, 2, -10]) == -14
    @test min_sub_array_sum([-9999999999999999]) == -9999999999999999
    @test min_sub_array_sum([0, 10, 20, 1000000]) == 0
    @test min_sub_array_sum([-1, -2, -3, 10, -5]) == -6
    @test min_sub_array_sum([100, -1, -2, -3, 10, -5]) == -6
    @test min_sub_array_sum([10, 11, 13, 8, 3, 4]) == 3
    @test min_sub_array_sum([100, -33, 32, -1, 0, -2]) == -33

    # Check some edge cases that are easy to work out by hand.
    @test min_sub_array_sum([-10]) == -10
    @test min_sub_array_sum([7]) == 7
    @test min_sub_array_sum([1, -1]) == -1
end