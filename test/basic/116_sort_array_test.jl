@testitem "116_sort_array.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "116_sort_array.jl"))

    # Check some simple cases
    @test sort_array([1,5,2,3,4]) == [1, 2, 4, 3, 5]
    @test sort_array([1,0,2,3,4]) == [0, 1, 2, 4, 3]
    @test sort_array(Int[]) == []
    @test sort_array([2,5,77,4,5,3,5,7,2,3,4]) == [2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77]
    @test sort_array([3,6,44,12,32,5]) == [32, 3, 5, 6, 12, 44]
    @test sort_array([2,4,8,16,32]) == [2, 4, 8, 16, 32]
    @test sort_array([2,4,8,16,32]) == [2, 4, 8, 16, 32]
end