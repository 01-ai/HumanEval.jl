@testitem "033_sort_third.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "033_sort_third.jl"))

    @test sort_third([1, 2, 3]) == sort_third([1, 2, 3])
    @test sort_third([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == sort_third([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    @test sort_third([5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == sort_third([5, 8, -12, 4, 23, 2, 3, 11, 12, -10])
    @test sort_third([5, 6, 3, 4, 8, 9, 2]) == [5, 6, 3, 4, 8, 9, 2]
    @test sort_third([5, 8, 3, 4, 6, 9, 2]) ==  [5, 8, 3, 4, 6, 9, 2]
    @test sort_third([5, 6, 9, 4, 8, 3, 2]) == [5, 6, 3, 4, 8, 9, 2]
    @test sort_third([5, 6, 3, 4, 8, 9, 2, 1]) == [5, 6, 3, 4, 8, 9, 2, 1]
end