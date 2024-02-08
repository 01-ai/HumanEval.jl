@testitem "040_triples_sum_to_zero.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "040_triples_sum_to_zero.jl"))

    @test triples_sum_to_zero([1, 3, 5, 0]) == false
    @test triples_sum_to_zero([1, 3, 5, -1]) == false
    @test triples_sum_to_zero([1, 3, -2, 1]) == true
    @test triples_sum_to_zero([1, 2, 3, 7]) == false
    @test triples_sum_to_zero([1, 2, 5, 7]) == false
    @test triples_sum_to_zero([2, 4, -5, 3, 9, 7]) == true
    @test triples_sum_to_zero([1]) == false
    @test triples_sum_to_zero([1, 3, 5, -100]) == false
    @test triples_sum_to_zero([100, 3, 5, -100]) == false
end