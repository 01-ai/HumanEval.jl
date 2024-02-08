@testitem "121_sum_odd_at_odd.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "121_sum_odd_at_odd.jl"))

    # Check some simple cases
    @test sum_odd_at_odd([5, 8, 7, 1])    == 12
    @test sum_odd_at_odd([3, 3, 3, 3, 3]) == 9
    @test sum_odd_at_odd([30, 13, 24, 321]) == 0
    @test sum_odd_at_odd([5, 9]) == 5
    @test sum_odd_at_odd([2, 4, 8]) == 0
    @test sum_odd_at_odd([30, 13, 23, 32]) == 23
    @test sum_odd_at_odd([3, 13, 2, 9]) == 3
end