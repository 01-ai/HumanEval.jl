@testitem "052_below_threshold.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "052_below_threshold.jl"))

    @test below_threshold([1, 2, 4, 10], 100)
    @test below_threshold([1, 20, 4, 10], 5) == false
    @test below_threshold([1, 20, 4, 10], 21)
    @test below_threshold([1, 20, 4, 10], 22)
    @test below_threshold([1, 8, 4, 10], 11)
    @test below_threshold([1, 8, 4, 10], 10) == false
end