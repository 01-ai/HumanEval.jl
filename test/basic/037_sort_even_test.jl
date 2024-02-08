@testitem "037_sort_even.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "037_sort_even.jl"))

    @test sort_even([1, 2, 3]) == [1, 2, 3]
    @test sort_even([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [5, 0, -5, 1, -3, 2, 9, 3, 123, 3, -10]
    @test sort_even([5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [5, -10, -12, 2, 23, 4, 3, 8, 12, 11]
end