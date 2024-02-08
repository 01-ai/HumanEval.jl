@testitem "138_is_equal_to_sum_even.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "138_is_equal_to_sum_even.jl"))

    @test is_equal_to_sum_even(4) == false
    @test is_equal_to_sum_even(6) == false
    @test is_equal_to_sum_even(8) == true
    @test is_equal_to_sum_even(10) == true
    @test is_equal_to_sum_even(11) == false
    @test is_equal_to_sum_even(12) == true
    @test is_equal_to_sum_even(13) == false
    @test is_equal_to_sum_even(16) == true
end