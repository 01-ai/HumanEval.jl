@testitem "047_median.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "047_median.jl"))

    @test median([3, 1, 2, 4, 5]) == 3
    @test median([-10, 4, 6, 1000, 10, 20]) == 8.0
    @test median([5]) == 5
    @test median([6, 5]) == 5.5
    @test median([8, 1, 3, 9, 9, 2, 7]) == 7 
end