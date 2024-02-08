@testitem "060_sum_to_n.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "060_sum_to_n.jl"))

    @test sum_to_n(1) == 1
    @test sum_to_n(6) == 21
    @test sum_to_n(11) == 66
    @test sum_to_n(30) == 465
    @test sum_to_n(100) == 5050
end