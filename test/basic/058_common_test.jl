@testitem "058_common.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "058_common.jl"))

    @test common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]) == [1, 5, 653]
    @test common([5, 3, 2, 8], [3, 2]) == [2, 3]
    @test common([4, 3, 2, 8], [3, 2, 4]) == [2, 3, 4]
    @test common([4, 3, 2, 8], []) == []
end