@testitem "009_rolling_max.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "009_rolling_max.jl"))

    @test rolling_max(Int[]) == []
    @test rolling_max([1, 2, 3, 4]) == [1, 2, 3, 4]
    @test rolling_max([4, 3, 2, 1]) == [4, 4, 4, 4]
    @test rolling_max([3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100]
end