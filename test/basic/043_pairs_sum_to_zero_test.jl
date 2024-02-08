@testitem "043_pairs_sum_to_zero.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "043_pairs_sum_to_zero.jl"))

    @test pairs_sum_to_zero([1, 3, 5, 0]) == false
    @test pairs_sum_to_zero([1, 3, -2, 1]) == false
    @test pairs_sum_to_zero([1, 2, 3, 7]) == false
    @test pairs_sum_to_zero([2, 4, -5, 3, 5, 7]) == true
    @test pairs_sum_to_zero([1]) == false

    @test pairs_sum_to_zero([-3, 9, -1, 3, 2, 30]) == true
    @test pairs_sum_to_zero([-3, 9, -1, 3, 2, 31]) == true
    @test pairs_sum_to_zero([-3, 9, -1, 4, 2, 30]) == false
    @test pairs_sum_to_zero([-3, 9, -1, 4, 2, 31]) == false
end