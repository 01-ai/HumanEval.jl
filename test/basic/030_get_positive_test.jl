@testitem "030_get_positive.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "030_get_positive.jl"))

    @test get_positive([-1, -2, 4, 5, 6]) == [4, 5, 6]
    @test get_positive([5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]) == [5, 3, 2, 3, 3, 9, 123, 1]
    @test get_positive([-1, -2]) == []
    @test get_positive(Int[]) == []
end