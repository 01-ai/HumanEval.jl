@testitem "088_sort_array_based_on_head_tail.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "088_sort_array_based_on_head_tail.jl"))

    # Check some simple cases
    @test sort_array_based_on_head_tail(Int[]) == []
    @test sort_array_based_on_head_tail([5]) == [5]
    @test sort_array_based_on_head_tail([2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5]
    @test sort_array_based_on_head_tail([2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0]

    # Check some edge cases that are easy to work out by hand.
    @test sort_array_based_on_head_tail([2, 1]) == [1, 2]
    @test sort_array_based_on_head_tail([15, 42, 87, 32 ,11, 0]) == [0, 11, 15, 32, 42, 87]
    @test sort_array_based_on_head_tail([21, 14, 23, 11]) == [23, 21, 14, 11]
end