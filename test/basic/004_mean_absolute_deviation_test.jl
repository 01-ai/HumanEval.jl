@testitem "004_mean_absolute_deviation.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "004_mean_absolute_deviation.jl"))

    @test abs(mean_absolute_deviation([1.0, 2.0, 3.0]) - 2.0/3.0) < 1e-6
    @test abs(mean_absolute_deviation([1.0, 2.0, 3.0, 4.0]) - 1.0) < 1e-6
    @test abs(mean_absolute_deviation([1.0, 2.0, 3.0, 4.0, 5.0]) - 6.0/5.0) < 1e-6
end
