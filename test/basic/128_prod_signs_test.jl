@testitem "128_prod_signs.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "128_prod_signs.jl"))

    # Check some simple cases
    @test prod_signs([1, 2, 2, -4]) == -9
    @test prod_signs([0, 1]) == 0
    @test prod_signs([1, 1, 1, 2, 3, -1, 1]) == -10
    @test prod_signs(Int[]) === nothing
    @test prod_signs([2, 4,1, 2, -1, -1, 9]) == 20
    @test prod_signs([-1, 1, -1, 1]) == 4
    @test prod_signs([-1, 1, 1, 1]) == -4
    @test prod_signs([-1, 1, 1, 0]) == 0
end