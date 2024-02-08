@testitem "008_sum_product.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "008_sum_product.jl"))

    @test sum_product(Int[]) == (0, 1)
    @test sum_product([1, 1, 1]) == (3, 1)
    @test sum_product([100, 0]) == (100, 0)
    @test sum_product([3, 5, 7]) == (3 + 5 + 7, 3 * 5 * 7)
    @test sum_product([10]) == (10, 10)
end