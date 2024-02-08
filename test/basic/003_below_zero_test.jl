@testitem "003_below_zero.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "003_below_zero.jl"))

    @test below_zero(Int[]) == false
    @test below_zero([1, 2, -3, 1, 2, -3]) == false
    @test below_zero([1, 2, -4, 5, 6]) == true
    @test below_zero([1, -1, 2, -2, 5, -5, 4, -4]) == false
    @test below_zero([1, -1, 2, -2, 5, -5, 4, -5]) == true
    @test below_zero([1, -2, 2, -2, 5, -5, 4, -4]) == true
end