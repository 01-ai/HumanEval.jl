@testitem "126_is_sorted_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "126_is_sorted.jl"))
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8]) == true
    @test is_sorted([8, 7, 6, 5, 4, 3, 2, 1]) == false
    @test is_sorted([1, 2, 2, 2, 2, 3, 4]) == false
    @test is_sorted([1, 1, 2, 2, 3, 3, 4]) == false
    @test is_sorted([1, 2, 3, 3, 3, 3, 3]) == false
    @test is_sorted([3, 3, 3, 3, 2, 2, 2, 2, 1, 1]) == false
    @test is_sorted([1, 1, 2, 3, 4]) == false
    @test is_sorted([4, 3, 2, 1]) == false
    @test is_sorted([1, 2, 2, 3, 4, 4, 5]) == false
    @test is_sorted([1, 0, 2, 3, 4]) == false
    @test is_sorted([1, 1, 2, 3, 5]) == false
    @test is_sorted([4, 3, 2]) == false
    @test is_sorted([4, 1, 3, 2]) == false
    @test is_sorted([1, 0, 2, 3]) == false
    @test is_sorted([1, 1, 2, 3, 4, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 4, 8, 8]) == false
    @test is_sorted([8, 7, 6, 5, 4, 1, 3, 2]) == false
    @test is_sorted([8, 6, 5, 4, 3, 2, 1]) == false
    @test is_sorted([1, 1, 2, 2, 3, 3, 5, 4]) == false
    @test is_sorted([8, 6, 4, 3, 2, 1, 6]) == false
    @test is_sorted([5, 3, 2]) == false
    @test is_sorted([1, 2, 3, 6, 4, 5, 6, 7, 4, 8, 8]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 4, 8]) == false
    @test is_sorted([8, 7, 6, 5, 4, 3, 2, 1, 5]) == false
    @test is_sorted([1, 2, 3, 3, 3, 3, 3, 3]) == false
    @test is_sorted([8, 8, 6, 5, 4, 3, 2, 1]) == false
    @test is_sorted([8, 8, 6, 5, 7, 6, 2, 1]) == false
    @test is_sorted([8, 7, 6, 5, 4, 3, 2, 6, 5]) == false
    @test is_sorted([8, 8, 6, 5, 4, 2, 2, 1, 8, 4]) == false
    @test is_sorted([8, 6, 8, 6, 5, 4, 3, 2, 1]) == false
    @test is_sorted([8, 8, 6, 5, 4, 2, 2, 1, 8, 4, 5, 4]) == false
    @test is_sorted([1, 1, 2, 2, 2, 3, 4]) == false
    @test is_sorted([8, 1, 6, 8, 6, 5, 4, 3, 2, 1]) == false
    @test is_sorted([8, 7, 4, 3, 2, 6, 5]) == false
    @test is_sorted([1, 0, 2, 4, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 4, 8, 8, 2]) == false
    @test is_sorted([1, 2, 1, 2, 2, 3, 3, 5, 4]) == false
    @test is_sorted([3, 1, 3, 2]) == false
    @test is_sorted([1, 1, 2, 2, 2, 3, 4, 3]) == false
    @test is_sorted([4, 3, 2, 4, 3]) == false
    @test is_sorted([8, 8, 6, 5, 4, 3, 2, 1, 6]) == false
    @test is_sorted([1, 2, 2, 3, 7, 4, 5]) == false
    @test is_sorted([8, 6, 8, 6, 5, 4, 3, 2, 8, 1]) == false
    @test is_sorted([1, 2, 2, 2, 3, 3, 5, 4]) == false
    @test is_sorted([8, 7, 4, 3, 2, 6, 5, 6]) == false
    @test is_sorted([7, 4, 3, 2, 6, 5, 6]) == false
    @test is_sorted([0, 3, 2]) == false
    @test is_sorted([8, 1, 6, 2, 8, 6, 5, 4, 3, 2, 1]) == false
    @test is_sorted([1, 5, 5, 2, 3, 4, 5, 6, 7, 8]) == false
    @test is_sorted([8, 8, 6, 5, 4, 5, 1]) == false
    @test is_sorted([8, 8, 5, 4, 2, 2, 1, 8, 4, 5, 4]) == false
    @test is_sorted([4, 1, 2, 3, 4, 5, 6, 7, 8]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 4, 5]) == false
    @test is_sorted([1, 2, 1, 5, 2, 6, 3, 8, 5, 4]) == false
    @test is_sorted([8, 8, 6, 5, 4, 2, 2, 1, 8, 4, 5, 4, 5]) == false
    @test is_sorted([1, 8, 6, 5, 4, 3, 2, 1]) == false
    @test is_sorted([1, 2, 2, 3, 5, 4, 5]) == false
    @test is_sorted([0, 2, 3, 4]) == true
    @test is_sorted([1, 2, 2, 3, 7, 4, 5, 2]) == false
    @test is_sorted([8, 6, 6, 5, 4, 3, 2, 8, 1, 4]) == false
    @test is_sorted([1, 8, 6, 5, 4, 2, 1]) == false
    @test is_sorted([8, 6, 8, 6, 5, 8, 4, 3, 2, 8, 1, 4]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 5]) == false
    @test is_sorted([8, 8, 6, 5, 4, 3, 1]) == false
    @test is_sorted([0, 3]) == true
    @test is_sorted([2]) == true
    @test is_sorted([8, 7, 6, 5, 4, 3, 2, 6, 5, 2]) == false
    @test is_sorted([1, 0, 2, 4, 3]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 4, 8, 8, 1, 6]) == false
    @test is_sorted([5, 5, 5, 2, 3, 4, 5, 6, 8]) == false
    @test is_sorted([1, 8, 6, 5, 8, 3, 2, 1]) == false
    @test is_sorted([8, 7, 6, 5, 4, 3, 2, 1, 5, 1]) == false
    @test is_sorted([1, 2, 3, 4]) == true
    @test is_sorted([1, 2, 2, 2, 3, 3, 5, 4, 1]) == false
    @test is_sorted([8, 8, 6, 5, 4, 3, 2, 1, 4]) == false
    @test is_sorted([8, 7, 6, 5, 4, 3, 3, 1, 5]) == false
    @test is_sorted([8, 8, 6, 5, 4, 2, 2, 1, 8, 4, 5, 4, 6]) == false
    @test is_sorted([1, 2, 4, 3, 3, 3, 3, 7]) == false
    @test is_sorted([1, 2, 4, 3, 3, 3, 2, 3, 7]) == false
    @test is_sorted([5, 5, 5, 2, 3, 4, 6, 6, 8]) == false
    @test is_sorted([6, 3, 2, 4, 3]) == false
    @test is_sorted([8, 8, 5, 4, 2, 2, 1, 8, 4, 5, 4, 5]) == false
    @test is_sorted([8, 6, 8, 5, 4, 2, 1]) == false
    @test is_sorted([1, 2, 3, 3, 3, 3, 3, 1]) == false
    @test is_sorted([8, 8, 6, 5, 4, 3, 2, 1, 7]) == false
    @test is_sorted([1, 2, 2, 2, 3, 3, 5, 4, 1, 2]) == false
    @test is_sorted([0, 2, 2, 3, 4, 4, 5]) == false
    @test is_sorted([8, 8, 5, 4, 2, 2, 1, 8, 4, 5, 1, 5, 1]) == false
    @test is_sorted([5, 8, 7, 6, 4, 3, 2, 1, 5, 1]) == false
    @test is_sorted([1, 2, 2, 3, 5, 5]) == false
    @test is_sorted([5, 0, 2, 3, 0, 5, 6, 0, 8]) == false
    @test is_sorted([8, 4, 3, 2, 1, 6, 1]) == false
    @test is_sorted([8, 6, 5, 4, 2, 2, 1, 8, 4, 5, 4]) == false
    @test is_sorted([5, 8, 6, 4, 4, 2, 1, 5, 1, 6]) == false
    @test is_sorted([5, 4, 3, 2, 1]) == false
    @test is_sorted([1, 2, 1, 2, 2, 3, 3, 5, 1, 4]) == false
    @test is_sorted([8, 6, 5, 8, 3, 2, 1]) == false
    @test is_sorted([5, 0, 2, 3, 0, 5, 6, 0, 8, 0]) == false
    @test is_sorted([1, 1, 1, 2, 3, 4, 4]) == false
    @test is_sorted([5, 5, 5, 2, 3, 4, 6, 8]) == false
    @test is_sorted([0, 0, 2, 2, 4, 4, 4]) == false
    @test is_sorted([1, 1, 1, 2, 2, 2, 3, 3, 3]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 2, 3]) == false
    @test is_sorted([1, 2, 2, 2, 3, 3, 3, 3, 3]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10]) == false
    @test is_sorted([1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 1, 1, 1, 1]) == false
    @test is_sorted([7, 3, 10, 8, 2]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 5, 6]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 4, 1, 1, 1, 1]) == false
    @test is_sorted([0, 0, 2, 4, 4, 4]) == false
    @test is_sorted([12, 1, 1, 3, 5, 4, 6, 7, 8, 9, 10, 11]) == false
    @test is_sorted([7, 3, 5, 10, 8, 2, 2]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 1, 2, 3]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 4, 5, 6]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 11]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 1, 1, 9, 1]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 2, 1]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 3, 7, 8, 9, 11]) == false
    @test is_sorted([1, 2, 3, 5, 4, 5, 6, 7, 8, 9, 10, 10]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 1, 2, 3, 2, 2]) == false
    @test is_sorted([7, 7, 10, 8, 2, 2]) == false
    @test is_sorted([1, 1, 1, 2, 2, 2, 3, 3, 2]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 5, 5, 6]) == false
    @test is_sorted([7, 7, 10, 8, 2, 2, 11, 7]) == false
    @test is_sorted([1, 1, 2, 1, 8, 1, 1, 0, 9, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 2, 2, 3, 3, 3, 3, 3, 1]) == false
    @test is_sorted([1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 8, 3, 5, 4, 5, 6, 7, 8, 9, 10, 10]) == false
    @test is_sorted([1, 2, 3, 5, 4, 5, 10, 6, 10, 7, 8, 9, 10, 10]) == false
    @test is_sorted([1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 8, 3, 5, 4, 5, 6, 7, 8, 9, 10, 10, 7]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 1, 2, 3, 2]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 8, 4, 5, 4]) == false
    @test is_sorted([7, 3, 8, 2]) == false
    @test is_sorted([1, 1, 1, 2, 2, 2, 3, 3, 1]) == false
    @test is_sorted([1, 2, 2, 2, 2, 11, 2, 2, 1, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 5, 6, 7, 8, 9, 10, 10, 4]) == false
    @test is_sorted([1, 2, 2, 2, 2, 11, 10, 2, 1, 2, 2]) == false
    @test is_sorted([7, 3, 10, 0, 2]) == false
    @test is_sorted([1, 1, 4, 1, 1, 1, 1, 1]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 6, 2]) == false
    @test is_sorted([1, 12, 2, 3, 3, 3, 3, 3]) == false
    @test is_sorted([1, 1, 4, 1, 1, 1, 0]) == false
    @test is_sorted([1, 1, 2, 1, 2, 2, 2, 3, 3, 1]) == false
    @test is_sorted([2, 3, 8, 2]) == false
    @test is_sorted([7, 7, 10, 8, 2, 3, 11, 7]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([2, 3, 7, 4, 4, 4, 4, 4, 4, 8, 4, 5, 4]) == false
    @test is_sorted([1, 2, 2, 3, 3, 3, 3, 3, 1]) == false
    @test is_sorted([1, 2, 2, 2, 11, 10, 2, 1, 2, 2, 2, 2]) == false
    @test is_sorted([12, 1, 3, 5, 4, 6, 7, 8, 9, 10, 11]) == false
    @test is_sorted([1, 2, 8, 4, 5, 4, 5, 6, 7, 8, 9, 10, 10]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2, 2, 0]) == false
    @test is_sorted([1, 2, 2, 2, 6, 2, 1, 3, 2, 2]) == false
    @test is_sorted([1, 1, 4, 1, 1, 1, 1, 5, 1]) == false
    @test is_sorted([0, 0, 2, 4, 4]) == false
    @test is_sorted([1, 2, 8, 4, 5, 4, 5, 6, 7, 8, 3, 10, 10, 5]) == false
    @test is_sorted([1, 1, 1, 2, 2, 3, 3, 1]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 11, 1]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 2, 8, 9, 10, 11]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 2, 8, 9, 10, 10, 11]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1]) == false
    @test is_sorted([1, 1, 4, 1, 2, 1, 1]) == false
    @test is_sorted([1, 1, 4, 1, 1, 1]) == false
    @test is_sorted([1, 4, 1, 1, 1, 1, 1]) == false
    @test is_sorted([1, 1, 3, 5, 4, 6, 7, 2, 8, 9, 10, 11]) == false
    @test is_sorted([1, 1, 4, 2, 1, 1, 1]) == false
    @test is_sorted([0, 2, 4, 4]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 4]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 7, 11, 1]) == false
    @test is_sorted([9, 1, 2, 2, 2, 3, 3, 3, 3, 12]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2, 2, 0, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 1, 8, 9, 10, 11, 8, 7]) == false
    @test is_sorted([1, 1, 1, 1, 1, 2, 2, 2, 11, 2, 2]) == false
    @test is_sorted([1, 1, 1, 1, 2, 2, 2, 3, 1]) == false
    @test is_sorted([1, 1, 2, 1, 2, 2, 2, 3, 3, 2]) == false
    @test is_sorted([1, 2, 12, 3, 5, 4, 5, 6, 7, 8, 9, 10, 10]) == false
    @test is_sorted([1, 6, 4, 4]) == false
    @test is_sorted([1, 2, 10, 5, 4, 6, 7, 3, 9, 11, 1]) == false
    @test is_sorted([9, 1, 2, 2, 2, 3, 3, 3, 3, 12, 12, 12]) == false
    @test is_sorted([2, 4, 4, 4, 4, 4, 4, 4, 5]) == false
    @test is_sorted([1, 1, 4, 1, 2, 2, 1, 1]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 3, 7, 8, 9, 11, 2, 2]) == false
    @test is_sorted([1, 1, 1, 1, 2, 2, 2, 3, 3, 2]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2, 2, 0, 2, 1, 1]) == false
    @test is_sorted([5, 12, 2, 3, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 4]) == false
    @test is_sorted([2, 3, 4, 3, 4, 4, 4, 4, 4, 5]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0, 2, 1, 1]) == false
    @test is_sorted([2, 7, 4, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 1]) == false
    @test is_sorted([2, 3, 7, 4, 4, 4, 4, 4, 4, 8, 4, 5, 4, 4, 7]) == false
    @test is_sorted([1, 2, 5, 4, 6, 7, 1, 9, 3, 11, 8, 7]) == false
    @test is_sorted([1, 1, 2, 1, 3, 1, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0, 2, 1, 1]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 4, 1, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 4, 6, 7, 1, 7, 11, 8, 7]) == false
    @test is_sorted([3, 4, 4, 4, 4, 4, 8, 4, 5, 4]) == false
    @test is_sorted([1, 1, 1, 2, 2, 1, 3, 3, 3]) == false
    @test is_sorted([1, 2, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2, 2, 0, 2]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4]) == false
    @test is_sorted([1, 1, 1, 1, 2, 2, 3, 3, 2]) == false
    @test is_sorted([1, 1, 1, 1, 9]) == false
    @test is_sorted([2, 2, 2, 2, 2, 2, 1, 2, 3, 2]) == false
    @test is_sorted([3, 4, 4, 4, 4, 8, 4, 5, 4]) == false
    @test is_sorted([1, 1, 2, 1, 2, 2, 2, 3, 1, 3, 1]) == false
    @test is_sorted([8, 1, 2, 10, 5, 4, 6, 7, 3, 9, 11, 1, 7]) == false
    @test is_sorted([2, 3, 7, 4, 4, 4, 4, 4, 4, 8, 4, 5, 4, 4, 7, 5]) == false
    @test is_sorted([2, 2, 2, 2, 2, 2, 1, 2, 4, 2]) == false
    @test is_sorted([1, 1, 2, 1, 2, 2, 2, 3, 1, 3, 1, 2]) == false
    @test is_sorted([1, 0, 1, 1, 2, 2, 2, 3, 3, 3]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2, 2, 2]) == false
    @test is_sorted([3, 2, 2, 2, 2, 2, 1, 2, 3, 2]) == false
    @test is_sorted([1, 1, 1, 2, 2, 2, 3, 1]) == false
    @test is_sorted([2, 2, 2, 11, 10, 2, 1, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 1, 1, 1, 2, 2, 2, 11, 2, 2, 1]) == false
    @test is_sorted([1, 2, 4, 4, 5, 6, 7, 8, 3, 10, 10, 5]) == false
    @test is_sorted([2, 3, 2, 4, 4, 4, 4, 4, 4, 0, 5, 6]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 3]) == false
    @test is_sorted([1, 1, 1, 1, 4]) == false
    @test is_sorted([7, 7, 10, 8, 10, 2, 11, 7, 7]) == false
    @test is_sorted([1, 1, 0, 4, 1, 1, 1]) == false
    @test is_sorted([1, 2, 4, 4, 5, 6, 7, 8, 3, 10, 10, 5, 4]) == false
    @test is_sorted([9, 2, 2, 2, 2, 3, 3, 3, 3, 12]) == false
    @test is_sorted([3, 1, 3, 4, 4]) == false
    @test is_sorted([1, 2, 3, 5, 4, 5, 6, 7, 8, 10, 10, 4]) == false
    @test is_sorted([1, 1, 1, 1, 1, 10, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([12, 1, 3, 5, 0, 6, 7, 8, 9, 10, 11]) == false
    @test is_sorted([4, 0, 0, 2, 4, 4, 4]) == false
    @test is_sorted([1, 1, 1, 1, 1, 10, 1, 2, 2, 2, 2, 2, 2, 1]) == false
    @test is_sorted([1, 2, 5, 6, 7, 1, 9, 3, 11, 8, 7]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 1, 2, 2, 2, 11, 2, 2, 6, 2]) == false
    @test is_sorted([1, 1, 0, 4, 1, 1, 0, 1]) == false
    @test is_sorted([2, 2, 2, 2, 2, 2, 1, 2]) == false
    @test is_sorted([1, 1, 4, 1, 2, 1, 1, 1]) == false
    @test is_sorted([1, 1, 11, 2, 1, 2, 2, 2, 3, 1, 3, 1]) == false
    @test is_sorted([1, 2, 2, 2, 2, 1, 1, 3]) == false
    @test is_sorted([1, 1, 1, 1, 8, 2, 2, 3, 3, 2]) == false
    @test is_sorted([1, 1, 8, 1, 1, 1, 1, 1]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 3, 2, 0, 2, 2, 1, 2, 0, 2]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 3, 2, 0, 2, 2, 1, 2, 0, 2, 2]) == false
    @test is_sorted([0, 0, 2, 4, 4, 2]) == false
    @test is_sorted([7, 7, 10, 8, 2, 2, 11, 7, 2]) == false
    @test is_sorted([1, 8, 4, 1, 1, 7, 1, 1, 1]) == false
    @test is_sorted([1, 1, 4, 1, 1, 2, 1, 1]) == false
    @test is_sorted([1, 1, 1, 2, 1, 7, 1, 1, 2, 2, 2, 11, 2, 2, 6, 2]) == false
    @test is_sorted([1, 2, 2, 2, 3, 3, 3, 9, 1]) == false
    @test is_sorted([2, 3, 7, 4, 4, 4, 4, 4, 4, 8, 2, 5, 4, 7]) == false
    @test is_sorted([1, 1, 1, 2, 2, 2, 3, 3, 2, 2]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 4]) == false
    @test is_sorted([1, 1, 1, 2, 2, 2, 3, 3, 3, 2, 2]) == false
    @test is_sorted([2, 2, 2, 1, 2, 2, 1, 2, 3, 2, 2]) == false
    @test is_sorted([11, 1, 1, 4, 1, 1, 0, 1, 0]) == false
    @test is_sorted([7, 7, 8, 2, 2, 11, 7]) == false
    @test is_sorted([1, 1, 2, 1, 1, 3, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0, 2, 1, 1]) == false
    @test is_sorted([1, 2, 2, 3, 2, 6, 2, 1, 3, 2, 2]) == false
    @test is_sorted([3, 4, 4, 4, 4, 4, 8, 5, 10]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 5]) == false
    @test is_sorted([9, 1, 2, 3, 4, 6, 7, 8, 9, 11]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0, 1]) == false
    @test is_sorted([7, 7, 10, 8, 2, 1]) == false
    @test is_sorted([6, 1, 2, 3, 5, 4, 6, 7, 1, 8, 9, 2, 10, 10, 11, 5]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 8, 4, 6, 4]) == false
    @test is_sorted([1, 2, 2, 3, 3, 3, 3, 3]) == false
    @test is_sorted([2, 2, 3, 2, 2, 1, 2]) == false
    @test is_sorted([1, 6, 4, 4, 1]) == false
    @test is_sorted([2, 3, 2, 4, 4, 4, 4, 4, 0, 5, 6]) == false
    @test is_sorted([1, 2, 2, 3, 3, 3, 3, 1]) == false
    @test is_sorted([3, 1, 3, 4, 4, 3]) == false
    @test is_sorted([1, 2, 2, 2, 11, 10, 2, 1, 2, 2, 2, 2, 2]) == false
    @test is_sorted([7, 7, 10, 8, 2, 3, 9, 7]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 9, 7, 8, 9, 11, 1]) == false
    @test is_sorted([1, 1, 2, 2, 2, 3, 3, 2, 2, 2]) == false
    @test is_sorted([3, 1, 3, 7, 5]) == false
    @test is_sorted([1, 8, 4, 1, 1, 6, 1, 1, 1]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2, 2, 8, 2]) == false
    @test is_sorted([1, 2, 8, 4, 5, 4, 5, 8, 9, 10, 10]) == false
    @test is_sorted([7, 7, 10, 8, 2, 2, 11, 4, 7, 7]) == false
    @test is_sorted([1, 1, 2, 6, 1, 3, 1, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0, 2, 1, 1]) == false
    @test is_sorted([2, 2, 2, 1, 2, 1, 2, 3, 2, 2]) == false
    @test is_sorted([5, 6, 4, 4, 1]) == false
    @test is_sorted([1, 2, 2, 3, 3, 3, 5, 3, 1]) == false
    @test is_sorted([1, 2, 5, 4, 6, 7, 1, 8, 9, 10, 11, 8, 7]) == false
    @test is_sorted([5, 6, 5, 0, 4, 4, 1]) == false
    @test is_sorted([1, 1, 1, 9]) == false
    @test is_sorted([1, 2, 3, 5, 6, 7, 8, 9, 7, 7, 11, 1]) == false
    @test is_sorted([1, 8, 4, 1, 0, 7, 1, 1]) == false
    @test is_sorted([1, 2, 1, 2, 2, 2, 3, 3, 1]) == false
    @test is_sorted([5, 6, 4, 4, 1, 1, 1]) == false
    @test is_sorted([0, 0, 3, 2, 4, 4, 2]) == false
    @test is_sorted([1, 1, 11, 4, 1, 1, 1, 1]) == false
    @test is_sorted([1, 2, 13, 3, 5, 4, 5, 6, 7, 8, 9, 10, 10, 9]) == false
    @test is_sorted([1, 12, 2, 3, 3, 2, 3, 3]) == false
    @test is_sorted([1, 1, 4, 1, 1, 1, 1, 1, 1]) == false
    @test is_sorted([1, 9]) == true
    @test is_sorted([1, 2, 8, 5, 5, 4, 5, 6, 7, 8, 3, 10, 10, 5]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 2, 1, 8, 0, 4, 5, 4, 4]) == false
    @test is_sorted([1, 1, 4, 1, 13, 1, 1, 0]) == false
    @test is_sorted([3, 3, 4, 4, 4, 4, 8, 4, 5, 4, 4, 8]) == false
    @test is_sorted([1, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 0, 2, 2, 2, 2, 0, 2, 2]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2, 2, 1]) == false
    @test is_sorted([1, 1, 2, 1, 1, 2, 2, 3, 9, 8, 3, 1]) == false
    @test is_sorted([2, 3, 7, 4, 4, 4, 4, 4, 8, 4, 5, 4, 7, 5]) == false
    @test is_sorted([2, 1, 6, 1, 1, 1, 1]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 2, 1, 8, 0, 4, 9, 5, 4, 4]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 2, 2, 3]) == false
    @test is_sorted([1, 13, 1, 1, 2, 1, 1, 1, 4, 1, 1, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 3, 2, 5, 6, 7, 8, 10, 4]) == false
    @test is_sorted([1, 7, 4, 0, 1, 1, 1, 4]) == false
    @test is_sorted([1, 1, 2, 2, 2, 3, 3, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 0, 4, 1, 1]) == false
    @test is_sorted([2, 2, 2, 2, 2, 1, 2, 4, 2]) == false
    @test is_sorted([3, 1, 3, 11, 4, 4, 3]) == false
    @test is_sorted([8, 1, 2, 10, 5, 4, 6, 9, 3, 11, 1, 7]) == false
    @test is_sorted([1, 3, 2, 2, 2, 1, 3]) == false
    @test is_sorted([5, 1, 1, 1, 1, 1, 1]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 2, 2, 3, 1]) == false
    @test is_sorted([1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 3]) == false
    @test is_sorted([7, 7, 10, 8, 2, 2, 7]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 4, 3, 5, 6]) == false
    @test is_sorted([1, 2, 3, 5, 6, 7, 4, 8, 9, 7, 7, 11, 1, 5, 7, 7]) == false
    @test is_sorted([5, 6, 3, 4, 1]) == false
    @test is_sorted([8, 1, 2, 10, 5, 4, 6, 9, 9, 3, 11, 1, 7]) == false
    @test is_sorted([2, 8, 7, 4, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 1, 5, 4]) == false
    @test is_sorted([1, 2, 3, 2, 5, 6, 7, 8, 10, 4, 2, 3]) == false
    @test is_sorted([1, 2, 2, 3, 3, 3, 3, 3, 3]) == false
    @test is_sorted([1, 1, 1, 5, 1, 2, 2, 2, 11, 2, 2, 1]) == false
    @test is_sorted([1, 3, 3, 4, 5, 6, 7, 8, 10, 10]) == false
    @test is_sorted([1, 7, 0, 1, 1, 1, 4]) == false
    @test is_sorted([1, 2, 4, 7, 4, 5, 6, 7, 8, 3, 10, 10, 5]) == false
    @test is_sorted([5, 2, 3, 4, 4, 4, 4, 4, 4, 8, 4, 6, 4]) == false
    @test is_sorted([2, 3, 4, 6, 4, 4, 4, 4, 1, 8, 4, 5, 4]) == false
    @test is_sorted([1, 2, 11, 3, 5, 4, 6, 7, 8, 9, 2]) == false
    @test is_sorted([1, 2, 2, 2, 3, 3, 3, 3, 3, 1, 3, 3]) == false
    @test is_sorted([9, 1, 2, 2, 2, 3, 3, 3, 3, 12, 9, 12, 12, 12]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 11, 1]) == false
    @test is_sorted([5, 10, 1, 1, 1, 1, 1, 1]) == false
    @test is_sorted([1, 1, 1, 2, 3, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 5, 6, 7, 8, 9, 10, 10, 4, 9]) == false
    @test is_sorted([1, 2, 11, 2, 2, 2, 2, 1, 2, 3]) == false
    @test is_sorted([1, 2, 3, 5, 4, 5, 10, 6, 10, 7, 8, 9, 2, 10, 10]) == false
    @test is_sorted([1, 1, 1, 10, 2, 5, 1, 3, 3, 3]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 2, 1, 4, 8, 0, 4, 9, 5, 4, 4]) == false
    @test is_sorted([7, 6, 7, 2, 10, 8, 2, 2]) == false
    @test is_sorted([3, 1, 7, 5]) == false
    @test is_sorted([1, 1, 1, 0, 2, 2, 2, 3, 3, 2]) == false
    @test is_sorted([1, 1, 1, 2, 2, 1, 3, 3, 3, 2]) == false
    @test is_sorted([1, 2, 8, 5, 5, 4, 5, 6, 7, 8, 3, 10, 5, 5]) == false
    @test is_sorted([1, 6, 1, 1, 1, 1]) == false
    @test is_sorted([3, 0, 3, 7, 5, 3, 0]) == false
    @test is_sorted([1, 6, 4]) == false
    @test is_sorted([8, 1, 2, 13, 5, 4, 6, 7, 9, 11, 7, 4]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 4, 4]) == false
    @test is_sorted([9, 1, 2, 2, 2, 3, 3, 3, 3, 12, 9, 2, 12, 12, 12]) == false
    @test is_sorted([1, 2, 3, 5, 4, 5, 6, 8, 10, 10, 4, 8]) == false
    @test is_sorted([3, 3, 4, 4, 4, 4, 8, 4, 5, 4, 3, 4, 8]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 11, 1, 3]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 8, 4, 6, 4, 4]) == false
    @test is_sorted([1, 1, 4, 10, 1, 2, 1, 1]) == false
    @test is_sorted([1, 1, 4, 1, 1, 2, 1, 1, 2]) == false
    @test is_sorted([9, 1, 2, 2, 2, 3, 3, 3, 3, 12, 9, 12, 12, 1, 12]) == false
    @test is_sorted([1, 1, 2, 2, 3, 3, 3, 3, 3, 1, 3]) == false
    @test is_sorted([1, 4, 4]) == false
    @test is_sorted([1, 2, 4, 4, 5, 6, 8, 8, 3, 10, 10, 5]) == false
    @test is_sorted([9, 1, 2, 2, 2, 3, 3, 3, 3, 12, 9, 12, 12, 1, 12, 3]) == false
    @test is_sorted([1, 1, 2, 1, 8, 1, 1, 0, 9, 1, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 4, 1, 1, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([2, 4, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 1, 4]) == false
    @test is_sorted([0, 0, 2, 4, 4, 4, 4]) == false
    @test is_sorted([1, 1, 1, 5, 1, 0, 2, 2, 2, 11, 2, 2, 1]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 9]) == false
    @test is_sorted([1, 7, 7, 10, 8, 2, 3, 11, 7]) == false
    @test is_sorted([1, 2, 8, 3, 5, 4, 5, 6, 8, 9, 10, 10, 7, 9]) == false
    @test is_sorted([1, 2, 3, 5, 6, 7, 8, 9, 7, 7, 11, 1, 2]) == false
    @test is_sorted([7, 7, 2, 10, 8, 2, 2]) == false
    @test is_sorted([1, 2, 3, 3, 5, 6, 7, 8, 9, 7, 7, 11, 1, 1]) == false
    @test is_sorted([2, 2, 2, 2, 2, 11, 2, 2, 1, 2]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 0, 2, 2, 2, 2, 0, 2, 1, 1]) == false
    @test is_sorted([1, 1, 1, 2, 2, 13, 3, 3, 1]) == false
    @test is_sorted([1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 11, 2, 2, 6, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 4, 6, 7, 8, 11]) == false
    @test is_sorted([1, 8, 4, 1, 1, 7, 1, 1, 1, 1]) == false
    @test is_sorted([1, 1, 1, 3, 2, 2, 3, 1, 2]) == false
    @test is_sorted([9, 1, 2, 2, 2, 3, 3, 3, 3, 12, 9, 12, 12, 12, 12]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 6, 2, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 5, 6, 7, 8, 10, 10, 10]) == false
    @test is_sorted([1, 3, 1, 2, 2, 2, 3, 3, 2, 2, 2, 3]) == false
    @test is_sorted([1, 1, 4, 1, 1, 2, 1, 1, 13, 2, 1]) == false
    @test is_sorted([1, 2, 3, 2, 3, 3, 3, 3, 3, 1, 3]) == false
    @test is_sorted([1, 1, 1, 1, 1, 10, 1, 2, 2, 2, 2, 2, 1]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 3, 2, 0, 2, 2, 1, 0, 2, 2]) == false
    @test is_sorted([1, 2, 11, 3, 5, 4, 6, 7, 9, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 11, 1]) == false
    @test is_sorted([1, 2, 8, 5, 5, 4, 5, 3, 7, 3, 10, 10, 5]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 4, 7, 8, 8, 9, 10, 11]) == false
    @test is_sorted([1, 1, 8, 1, 1, 1, 1, 1, 1]) == false
    @test is_sorted([9, 2, 2, 2, 2, 3, 3, 3, 3]) == false
    @test is_sorted([1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 1]) == false
    @test is_sorted([1, 2, 2, 1, 1, 1, 1, 2, 1, 2, 2, 0, 2, 2, 2, 2, 0, 2]) == false
    @test is_sorted([2, 2, 2, 2, 2, 1, 2]) == false
    @test is_sorted([1, 13, 1, 1, 2, 1, 1, 1, 4, 1, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 1, 2, 3, 2, 2, 2, 1, 1, 2]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0, 2, 1, 2, 1]) == false
    @test is_sorted([1, 1, 9]) == false
    @test is_sorted([2, 2, 4, 4, 4, 4, 4, 4, 4, 3, 5, 6]) == false
    @test is_sorted([3, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 4, 4]) == false
    @test is_sorted([1, 2, 4, 4, 5, 12, 6, 7, 8, 3, 10, 10, 5, 4, 4, 8]) == false
    @test is_sorted([1, 2, 5, 4, 6, 7, 2, 1, 9, 3, 11, 8, 7]) == false
    @test is_sorted([1, 12, 2, 3, 3, 2, 3, 3, 9]) == false
    @test is_sorted([1, 2, 3, 5, 6, 7, 8, 9, 7, 11, 1, 2]) == false
    @test is_sorted([2, 2, 2, 3, 11, 10, 2, 1, 8, 7, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 1, 10, 2, 5, 1, 3, 3, 3, 1]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 12, 4, 1, 2, 1, 1]) == false
    @test is_sorted([1, 2, 3, 5, 6, 7, 8, 5, 9, 7, 11, 1, 2]) == false
    @test is_sorted([9, 1, 2, 2, 2, 3, 3, 3, 3, 12, 2]) == false
    @test is_sorted([1, 2, 12, 3, 5, 4, 5, 6, 7, 8, 9, 10, 10, 10, 4]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 4, 1, 1, 2, 2, 2, 1, 2, 3, 2]) == false
    @test is_sorted([1, 11, 5, 2, 2, 2, 1, 2, 3]) == false
    @test is_sorted([1, 4, 2, 1, 2, 2, 2, 2, 3, 1, 3, 1]) == false
    @test is_sorted([1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 11, 2, 2, 6, 2]) == false
    @test is_sorted([7, 10, 8, 2, 3, 9, 7]) == false
    @test is_sorted([1, 2, 8, 1, 1, 1]) == false
    @test is_sorted([0, 0, 2, 4, 4, 4, 0]) == false
    @test is_sorted([1, 1, 2, 1, 2, 2, 2, 2, 3, 3, 1]) == false
    @test is_sorted([1, 2, 2, 3, 3, 3, 3, 3, 3, 3]) == false
    @test is_sorted([1, 2, 2, 2, 6, 2, 4, 1, 3, 2, 2]) == false
    @test is_sorted([1, 1, 0, 13, 4, 1, 1, 1]) == false
    @test is_sorted([1, 1, 2, 12, 1, 1, 1, 4, 1, 1, 2, 2, 2, 1, 2, 3, 2]) == false
    @test is_sorted([0, 0, 0, 2, 4, 4, 4]) == false
    @test is_sorted([2, 4, 4, 4, 8, 4, 4, 1, 4, 5, 4, 1, 4]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 6, 2, 1]) == false
    @test is_sorted([7, 7, 2, 10, 8, 2, 2, 2]) == false
    @test is_sorted([7, 10, 9, 2, 3, 9, 7]) == false
    @test is_sorted([1, 1, 2, 9]) == false
    @test is_sorted([1, 1, 1, 9, 1]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 3, 2, 0, 2, 2, 1, 0, 2]) == false
    @test is_sorted([1, 2, 5, 3, 5, 4, 5, 6, 7, 8, 9, 10, 10, 4, 9, 4]) == false
    @test is_sorted([12, 1, 3, 5, 0, 6, 7, 8, 9, 11]) == false
    @test is_sorted([1, 1, 11, 1, 9, 1]) == false
    @test is_sorted([1, 1, 2, 1, 3, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0, 2, 1, 1]) == false
    @test is_sorted([1, 7, 5]) == false
    @test is_sorted([1, 2, 4, 5, 10, 7, 1, 7, 10, 8, 7]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 3, 0, 0, 2, 2, 1, 0, 2, 2]) == false
    @test is_sorted([1, 4, 1, 2, 2, 1, 1, 1]) == false
    @test is_sorted([1, 1, 1, 1, 1, 2, 2, 2, 3, 1]) == false
    @test is_sorted([0, 2, 2, 3, 11, 3, 3, 3, 1]) == false
    @test is_sorted([1, 1, 1, 2, 2, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 1, 2, 3, 2, 2, 3, 1, 2, 2]) == false
    @test is_sorted([12, 1, 3, 5, 6, 7, 8, 9, 10, 11, 9]) == false
    @test is_sorted([1, 2, 13, 3, 9, 5, 4, 5, 6, 7, 8, 9, 10, 10, 9]) == false
    @test is_sorted([1, 1, 1, 2, 3, 2, 2, 3, 1, 5, 2]) == false
    @test is_sorted([1, 1, 2, 2, 3, 3, 3, 3, 1, 3]) == false
    @test is_sorted([11, 2, 3, 5, 4, 6, 7, 8, 9, 10, 10, 4, 9]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1, 2]) == false
    @test is_sorted([2, 2, 2, 1, 2, 2, 3, 2, 2]) == false
    @test is_sorted([9, 1, 4, 2, 2, 2, 3, 3, 3, 3, 12, 9, 12, 12, 12, 3]) == false
    @test is_sorted([2, 3, 4, 8, 4, 4, 4, 4, 4, 1, 8, 4, 0, 5, 4]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 2, 1, 8, 0, 4, 5, 4, 4]) == false
    @test is_sorted([12, 1, 7, 3, 5, 4, 0, 6, 7, 8, 9, 10, 11]) == false
    @test is_sorted([7, 13, 7, 10, 8, 2, 2, 11, 7]) == false
    @test is_sorted([8, 4, 4, 4, 4, 4, 8, 4, 5, 4]) == false
    @test is_sorted([2, 4, 4, 5, 4, 4, 4, 4, 4, 5]) == false
    @test is_sorted([1, 2, 3, 5, 4, 4, 6, 7, 1, 8, 9, 10, 11, 8, 7]) == false
    @test is_sorted([1, 1, 1, 2, 2, 12, 3, 1]) == false
    @test is_sorted([1, 1, 1, 5, 1, 1, 10, 1, 2, 2, 2, 2, 2, 1, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 4, 7, 8, 8, 9, 10, 11, 8]) == false
    @test is_sorted([1, 13, 1, 1, 2, 1, 1, 4, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 1]) == false
    @test is_sorted([1, 1, 2, 2, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 2, 1, 8, 9, 10, 10, 11]) == false
    @test is_sorted([1, 1, 1, 1, 2, 2, 2, 3, 1, 2, 5, 1]) == false
    @test is_sorted([7, 7, 10, 8, 1, 2, 11, 7, 2, 7]) == false
    @test is_sorted([1, 2, 4, 4, 5, 5, 12, 6, 10, 6, 8, 3, 10, 10, 5, 4, 4, 8]) == false
    @test is_sorted([7, 3, 5, 10, 13, 2, 2]) == false
    @test is_sorted([1, 8]) == true
    @test is_sorted([0, 9, 2, 4, 4]) == false
    @test is_sorted([1, 2, 8, 5, 5, 4, 5, 6, 7, 8, 3, 10, 10, 5, 7]) == false
    @test is_sorted([5, 12, 2, 3, 4, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 4]) == false
    @test is_sorted([1, 1, 1, 2, 3, 2, 0, 2, 3, 1, 2, 2]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 1, 8, 4, 5, 4, 4, 4, 4]) == false
    @test is_sorted([3, 1, 2, 9]) == false
    @test is_sorted([1, 1, 1, 2, 1, 12, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 0, 7, 1, 10, 2, 5, 1, 3, 3, 3, 1]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 1, 2, 3, 2, 2, 2, 1, 1, 2, 2]) == false
    @test is_sorted([0, 2, 4]) == true
    @test is_sorted([2, 1, 0, 1, 1]) == false
    @test is_sorted([2, 3, 7, 4, 4, 4, 4, 4, 4, 8, 2, 5, 4, 7, 3]) == false
    @test is_sorted([2, 4, 4, 4, 4, 4, 4, 5]) == false
    @test is_sorted([3, 0, 9, 7, 5, 3, 0]) == false
    @test is_sorted([7, 3, 10, 0, 1, 2, 10, 10]) == false
    @test is_sorted([9, 1, 2, 2, 2, 3, 3, 3, 3, 3, 12, 9, 12, 12, 12]) == false
    @test is_sorted([2, 3, 4, 8, 4, 4, 4, 4, 4, 1, 8, 4, 0, 5, 5, 4]) == false
    @test is_sorted([0, 1, 4, 4]) == false
    @test is_sorted([3, 1, 1, 1, 1, 3, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0, 2, 1, 1]) == false
    @test is_sorted([3, 4, 13, 4, 4, 4, 8, 4, 5, 4, 8]) == false
    @test is_sorted([7, 7, 10, 2, 1]) == false
    @test is_sorted([2, 4, 3, 4, 4, 4, 4, 4, 4, 8, 4, 4]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2, 2, 8, 2, 2, 1]) == false
    @test is_sorted([1, 1, 2, 1, 1, 3, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0, 2, 1, 1, 2]) == false
    @test is_sorted([1, 2, 3, 3, 3, 5, 3, 1, 3]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 8, 8]) == false
    @test is_sorted([1, 1, 1, 1, 8, 2, 2, 3, 3]) == false
    @test is_sorted([1, 1, 1, 2, 3, 2, 2, 3, 2, 2]) == false
    @test is_sorted([1, 1, 2, 2, 6, 1, 3, 1, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0, 2, 1, 1]) == false
    @test is_sorted([2, 3, 7, 4, 4, 4, 4, 4, 8, 2, 5, 4, 7, 4]) == false
    @test is_sorted([1, 1, 1, 2, 2, 10, 3, 3, 3]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 8, 4, 6]) == false
    @test is_sorted([13, 0, 7, 1, 10, 2, 5, 1, 3, 3, 3, 1]) == false
    @test is_sorted([1, 1, 12, 1, 1, 1, 4, 1, 1, 2, 2, 2, 1, 2, 3, 2]) == false
    @test is_sorted([1, 1, 2, 1, 3, 1, 4, 1, 1, 2, 2, 2, 1, 2, 3, 2]) == false
    @test is_sorted([2, 2, 2, 2, 2, 11, 2, 1, 9, 1, 2]) == false
    @test is_sorted([7, 7, 10, 8, 9, 2, 3, 11, 7]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 0]) == false
    @test is_sorted([2, 0, 0, 2, 13, 4, 4, 4]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 1, 2, 8, 9, 10, 10, 11, 1]) == false
    @test is_sorted([1, 3, 9]) == true
    @test is_sorted([2, 8, 7, 4, 4, 4, 4, 4, 4, 1, 8, 0, 5, 4, 1, 5, 4]) == false
    @test is_sorted([1, 1, 2, 12, 1, 1, 1, 4, 1, 1, 2, 2, 2, 1, 2, 3, 2, 2]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 5, 5, 2, 4, 6]) == false
    @test is_sorted([1, 2, 4, 4, 5, 5, 12, 6, 10, 4, 6, 8, 3, 10, 10, 5, 4, 4, 8]) == false
    @test is_sorted([1, 1, 4, 1, 1]) == false
    @test is_sorted([2, 2, 0, 0, 2, 13, 4, 4, 4]) == false
    @test is_sorted([1, 1, 4, 5, 1, 1, 1, 1, 1, 1, 5]) == false
    @test is_sorted([2, 2, 2, 2, 2, 2, 1, 2, 3, 2, 3]) == false
    @test is_sorted([9, 1, 2, 2, 2, 3, 0, 4, 3, 3, 3, 12, 2, 3]) == false
    @test is_sorted([2, 3, 4, 8, 4, 4, 4, 4, 1, 8, 4, 0, 5, 5, 4, 4]) == false
    @test is_sorted([5, 12, 2, 3, 4, 4, 4, 4, 4, 4, 1, 5, 8, 4, 5, 4, 4]) == false
    @test is_sorted([1, 4, 1, 1, 1, 1, 5, 1]) == false
    @test is_sorted([1, 2, 1, 2, 2, 2, 3, 3, 1, 3]) == false
    @test is_sorted([1, 1, 2, 1, 2, 1, 4, 1, 1, 2, 2, 2, 1, 2, 10, 2]) == false
    @test is_sorted([2, 2, 2, 2, 2, 11, 11, 2, 1, 9, 1, 2]) == false
    @test is_sorted([12, 1, 3, 5, 6, 7, 8, 9, 10, 11, 9, 1]) == false
    @test is_sorted([1, 1, 11, 4, 1, 1, 1, 1, 1]) == false
    @test is_sorted([1, 2, 3, 11, 4, 6, 4, 7, 8, 8, 9, 10, 11, 11]) == false
    @test is_sorted([12, 1, 3, 5, 6, 7, 8, 9, 10, 11, 9, 12]) == false
    @test is_sorted([2, 3, 7, 4, 4, 4, 4, 4, 4, 8, 5, 4, 4, 7]) == false
    @test is_sorted([1, 1, 1, 1, 5, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 1, 1, 0, 1, 1]) == false
    @test is_sorted([7, 4, 3, 5, 10, 8, 2, 2]) == false
    @test is_sorted([1, 2, 8, 3, 5, 4, 5, 6, 7, 8, 12, 9, 10, 10]) == false
    @test is_sorted([1, 2, 2, 6, 2, 1, 3, 2, 2]) == false
    @test is_sorted([1, 1, 4, 5, 1, 1, 1, 1, 1, 1, 5, 5]) == false
    @test is_sorted([1, 0, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2, 2, 8, 2]) == false
    @test is_sorted([1, 13, 1, 1, 2, 1, 1, 1, 4, 1, 1, 2, 2, 2, 2, 0, 2, 2, 2]) == false
    @test is_sorted([11, 2, 3, 4, 8, 4, 4, 4, 4, 4, 1, 8, 4, 0, 5, 5, 4]) == false
    @test is_sorted([1, 3, 1, 2, 2, 2, 3, 3, 2, 2, 2, 3, 2]) == false
    @test is_sorted([1, 2, 13, 3, 5, 4, 5, 6, 6, 8, 9, 10, 3, 10, 9, 1]) == false
    @test is_sorted([1, 2, 2, 2, 3, 3, 3, 9, 1, 2]) == false
    @test is_sorted([9, 1, 11, 4, 1, 1, 1, 1]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 4, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 1, 8, 9, 10, 11, 8, 7, 6]) == false
    @test is_sorted([3, 1, 1, 1, 1, 3, 1, 1, 1, 2, 0, 2, 2, 2, 9, 0, 2, 1, 1, 1]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 4, 5, 6, 3]) == false
    @test is_sorted([1, 2, 11, 3, 5, 10, 4, 6, 7, 8, 9, 2]) == false
    @test is_sorted([1, 8, 2, 8, 3, 5, 4, 5, 6, 7, 8, 9, 10, 10]) == false
    @test is_sorted([1, 2, 3, 5, 6, 7, 8, 9, 2, 11, 1, 2]) == false
    @test is_sorted([12, 1, 3, 6, 7, 8, 11, 11, 9, 1]) == false
    @test is_sorted([1, 2, 8, 5, 5, 4, 9, 5, 3, 7, 10, 10, 5]) == false
    @test is_sorted([1, 1, 1, 2, 1, 1, 1, 4, 1, 1, 2, 2, 2, 2, 2, 2, 2, 1]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 11, 1, 2]) == false
    @test is_sorted([1, 1, 10, 1, 1, 2, 1, 1]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 4, 7, 8, 8, 9, 10, 11, 8, 7]) == false
    @test is_sorted([12, 6, 1, 3, 5, 0, 6, 7, 8, 9, 11]) == false
    @test is_sorted([1, 2, 3, 5, 3, 3, 4, 5, 10, 6, 10, 7, 8, 9, 2, 10, 10]) == false
    @test is_sorted([3, 3, 0, 3, 7, 5, 3, 0]) == false
    @test is_sorted([2, 2, 2, 2, 1, 2, 2]) == false
    @test is_sorted([4, 9, 1, 2, 2, 2, 3, 3, 3, 3, 12, 9, 2, 12, 12]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 12, 0, 2, 2, 2, 8, 0, 1, 0]) == false
    @test is_sorted([3, 4, 3, 0, 0, 2, 4, 4, 4, 4]) == false
    @test is_sorted([1, 1, 1, 5, 2, 5, 1, 3, 3, 3, 2]) == false
    @test is_sorted([2, 3, 7, 4, 4, 4, 4, 8, 2, 5, 4, 7, 4, 4, 7]) == false
    @test is_sorted([1, 2, 3, 5, 6, 4, 6, 7, 2, 8, 9, 10, 11]) == false
    @test is_sorted([1, 1, 2, 2, 6, 1, 3, 1, 1, 1, 1, 1, 2, 0, 2, 2, 2, 2, 2, 1, 1]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 9, 11]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 11, 11, 1, 3]) == false
    @test is_sorted([1, 1, 1, 2, 2, 2, 3, 3]) == false
    @test is_sorted([8, 4, 4, 4, 4, 4, 8, 4, 5, 4, 4]) == false
    @test is_sorted([1, 1, 1, 1, 1, 2, 2, 11, 2, 2]) == false
    @test is_sorted([7, 10, 9, 3, 9, 7]) == false
    @test is_sorted([9, 1, 2, 2, 2, 2, 3, 0, 4, 3, 3, 3, 12, 2, 3]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 2, 9, 8, 9, 10, 10, 11]) == false
    @test is_sorted([1, 2, 4, 2, 2, 2, 1, 2, 3]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 0, 2, 2, 2]) == false
    @test is_sorted([1, 2, 4, 4, 6, 12, 6, 7, 8, 3, 10, 10, 5, 4, 4, 8]) == false
    @test is_sorted([1, 1, 2, 1, 1, 1, 1, 3, 2, 0, 2, 2, 1, 2, 0, 2, 2]) == false
    @test is_sorted([2, 2, 2, 1, 2, 2]) == false
    @test is_sorted([1, 2, 11, 3, 5, 1, 10, 4, 6, 7, 8, 9, 2]) == false
    @test is_sorted([7, 7, 2, 10, 8, 8, 2, 2, 2]) == false
    @test is_sorted([1, 2, 1, 2, 2, 2, 3, 3, 0, 1, 3]) == false
    @test is_sorted([1, 12, 2, 3, 3, 3, 11, 3, 3]) == false
    @test is_sorted([1, 2, 13, 3, 5, 4, 5, 6, 7, 8, 9, 10, 1, 10, 9, 8]) == false
    @test is_sorted([3, 7, 7, 10, 8, 9, 3, 11, 7, 7]) == false
    @test is_sorted([1, 13, 1, 1, 2, 1, 1, 1, 4, 1, 1, 2, 2, 2, 2, 0, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 11, 3, 5, 10, 4, 6, 7, 8, 2]) == false
    @test is_sorted([2, 3, 4, 13, 4, 4, 4, 4, 11, 1, 8, 4, 5, 4, 8]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 1, 9, 10, 11, 3, 8, 7, 6, 4]) == false
    @test is_sorted([1, 3, 1, 2, 2, 1, 3, 3, 2, 3]) == false
    @test is_sorted([9, 1, 2, 4, 2, 2, 3, 3, 3, 3, 12]) == false
    @test is_sorted([6, 1, 2, 3, 5, 4, 6, 7, 1, 8, 9, 2, 10, 10, 11, 5, 4]) == false
    @test is_sorted([13, 13, 1, 1, 2, 1, 1, 1, 4, 1, 1, 2, 2, 2, 2, 0, 2, 2, 2]) == false
    @test is_sorted([1, 2, 2, 1, 1, 1, 1, 2, 1, 2, 2, 0, 2, 2, 2, 2, 0, 1, 2]) == false
    @test is_sorted([7, 7, 10, 8, 2, 2, 6, 11, 2]) == false
    @test is_sorted([2, 2, 2, 3, 2, 1, 2]) == false
    @test is_sorted([1, 1, 1, 1]) == false
    @test is_sorted([1, 2, 3, 4, 5, 5, 5]) == false
    @test is_sorted([5, 5, 5, 1, 2, 3]) == false
    @test is_sorted([5, 5, 1, 5, 2, 5, 3, 5, 4]) == false
    @test is_sorted([1, 1]) == false
    @test is_sorted([2, 4, 6, 8, 10, 12]) == true
    @test is_sorted([1, 1, 1, 1, 1]) == false
    @test is_sorted([1, 2, 3, 1, 2]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 1]) == false
    @test is_sorted([1, 2, 3, 4, 4, 5, 6, 6, 6]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 8]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 6, 6, 9, 10, 11, 10, 10]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 8, 6]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 10]) == false
    @test is_sorted([0, 0, 2, 2, 4, 4, 11, 4]) == false
    @test is_sorted([1, 2, 4, 2, 2, 3, 3, 3, 3, 3, 3]) == false
    @test is_sorted([7, 3, 10, 8]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 9, 10, 10, 10]) == false
    @test is_sorted([1, 2, 3, 4, 10, 6, 7, 8, 8, 10, 10, 8, 6]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10, 10, 8]) == false
    @test is_sorted([1, 2, 3, 5, 5, 7, 8, 9, 10, 10]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 10, 10]) == false
    @test is_sorted([1, 2, 3, 5, 6, 7, 8, 9, 1, 10, 3]) == false
    @test is_sorted([1, 11, 2, 3, 4, 10, 6, 7, 8, 8, 10, 10, 7, 6]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10, 10, 8, 8]) == false
    @test is_sorted([4, 0, 0, 2, 2, 4, 4, 11, 4, 4]) == false
    @test is_sorted([1, 2, 3, 4, 2, 9, 5, 6, 7, 9, 10, 10, 8, 6]) == false
    @test is_sorted([1, 2, 3, 5, 7, 8, 9, 1, 10, 3, 1]) == false
    @test is_sorted([0, 0, 2, 2, 4, 4, 4, 0, 4]) == false
    @test is_sorted([7, 1, 2, 3, 4, 5, 6, 7, 8, 9, 2, 10]) == false
    @test is_sorted([1, 12, 2, 3, 4, 10, 6, 7, 8, 8, 10, 10, 7, 6, 4]) == false
    @test is_sorted([0, 0, 2, 2, 11, 4]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 8, 6]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 5, 6, 5, 4]) == false
    @test is_sorted([1, 2, 3, 4, 6, 2, 7, 8, 9, 1, 10, 10]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 2, 11]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 5, 6, 5]) == false
    @test is_sorted([1, 12, 2, 3, 4, 2, 10, 6, 7, 8, 8, 10, 10, 7, 6, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 5, 6, 6, 8, 9, 1, 10, 10]) == false
    @test is_sorted([1, 2, 4, 2, 2, 3, 3, 3, 3, 3, 3, 1, 4]) == false
    @test is_sorted([0, 0, 2, 2, 11]) == false
    @test is_sorted([1, 2, 3, 6, 2, 7, 8, 9, 1, 10, 10]) == false
    @test is_sorted([2, 3, 4, 4, 6, 4, 4, 4, 4, 5, 6, 5]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 8]) == false
    @test is_sorted([1, 2, 3, 6, 6, 7, 8, 9, 10, 10, 8, 6]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 6, 2, 8, 9, 10, 10, 8, 6, 4]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 7, 8, 9, 9, 10, 8]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 6, 6, 9, 10, 11, 10, 10, 5]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 4, 4, 5, 6]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 4, 4, 5, 6, 5]) == false
    @test is_sorted([0, 0, 2, 2, 4, 4, 0, 4]) == false
    @test is_sorted([1, 2, 3, 6, 6, 12, 8, 9, 10, 10, 8, 6]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 4, 4, 4, 5, 6, 5]) == false
    @test is_sorted([0, 0, 2, 2, 0, 4, 5, 4, 4, 0]) == false
    @test is_sorted([0, 0, 2, 2, 11, 4, 4]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 8, 11, 1, 10, 10]) == false
    @test is_sorted([7, 3, 10, 10, 8]) == false
    @test is_sorted([1, 5, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10, 10]) == false
    @test is_sorted([7, 0, 2, 3, 4, 5, 6, 7, 8, 9, 2, 10]) == false
    @test is_sorted([0, 0, 2, 2, 4, 4, 0, 4, 2]) == false
    @test is_sorted([1, 1, 1, 0, 1, 1, 2, 2, 2, 2, 2]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 7, 8, 4, 9, 10, 10, 8]) == false
    @test is_sorted([1, 2, 7, 3, 4, 5, 6, 7, 8, 9, 1, 10]) == false
    @test is_sorted([1, 12, 2, 3, 4, 10, 6, 7, 8, 8, 10, 10, 7, 6, 4, 7]) == false
    @test is_sorted([1, 2, 3, 6, 6, 12, 8, 4, 10, 10, 8, 6]) == false
    @test is_sorted([6, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 10, 10, 1, 4]) == false
    @test is_sorted([1, 12, 2, 3, 4, 2, 10, 6, 7, 6, 8, 8, 10, 10, 7, 6, 4, 6]) == false
    @test is_sorted([1, 2, 3, 4, 6, 2, 7, 8, 9, 1, 10]) == false
    @test is_sorted([1, 2, 9, 3, 5, 6, 7, 7, 8, 9, 10, 10, 8]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 6, 2, 8, 9, 10, 10, 8, 6, 4, 9]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 4, 4, 5, 6, 9, 4]) == false
    @test is_sorted([1, 2, 3, 5, 10, 4, 6, 7, 8, 9, 10, 11, 9]) == false
    @test is_sorted([1, 2, 3, 6, 6, 7, 8, 9, 10, 9, 10, 8, 6]) == false
    @test is_sorted([0, 0, 2, 11]) == false
    @test is_sorted([0, 2, 2, 0, 4, 5, 4, 4, 0]) == false
    @test is_sorted([1, 3, 4, 5, 6, 7, 8, 9, 1, 10]) == false
    @test is_sorted([1, 2, 3, 4, 2, 9, 5, 6, 7, 9, 10, 10, 8, 6, 8]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 8, 6, 10]) == false
    @test is_sorted([1, 12, 2, 4, 2, 10, 6, 7, 8, 8, 10, 10, 7, 6, 4]) == false
    @test is_sorted([0, 1, 2, 0, 4, 5, 4, 4, 0, 2]) == false
    @test is_sorted([1, 1, 1, 0, 1, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([0, 0, 2, 11, 2, 11, 4, 0]) == false
    @test is_sorted([1, 0, 2, 3, 6, 6, 8, 4, 10, 10, 8, 6, 1]) == false
    @test is_sorted([7, 0, 2, 3, 4, 5, 6, 7, 8, 9, 2, 10, 3]) == false
    @test is_sorted([4, 7, 10, 8]) == false
    @test is_sorted([0, 0, 2]) == false
    @test is_sorted([1, 2, 6, 3, 5, 5, 7, 9, 5, 10, 10]) == false
    @test is_sorted([7, 10, 8, 2]) == false
    @test is_sorted([1, 3, 2, 6, 3, 3, 3, 3]) == false
    @test is_sorted([1, 12, 2, 3, 4, 6, 7, 8, 8, 10, 10, 7, 6, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 10, 1, 4]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 2, 6, 6, 9, 10, 11, 10, 10, 5]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 7, 5, 8, 4, 9, 10, 10, 8]) == false
    @test is_sorted([1, 3, 4, 2, 9, 5, 6, 7, 9, 10, 10, 8, 6]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 4, 4, 5, 6, 9, 4, 4]) == false
    @test is_sorted([5, 2, 2, 3, 3, 4, 3, 3]) == false
    @test is_sorted([10, 0, 2, 2, 4, 4, 4]) == false
    @test is_sorted([1, 2, 3, 7, 8, 9, 1, 10, 3, 1]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 9, 7, 8, 9, 1, 10, 1, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10, 10, 8, 7]) == false
    @test is_sorted([0, 0, 2, 11, 2]) == false
    @test is_sorted([2, 3, 2, 4, 5, 4, 4, 4, 5, 6]) == false
    @test is_sorted([1, 2, 3, 4, 2, 9, 5, 6, 7, 9, 10, 10, 8, 6, 10, 6]) == false
    @test is_sorted([1, 12, 2, 3, 4, 2, 10, 6, 7, 8, 10, 10, 7, 6, 4]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 2, 11, 6]) == false
    @test is_sorted([10, 10, 8]) == false
    @test is_sorted([1, 2, 3, 7, 8, 9, 1, 10, 11, 1]) == false
    @test is_sorted([1, 10, 2, 3, 4, 5, 5, 6, 6, 8, 9, 7, 10, 10]) == false
    @test is_sorted([1, 0, 1, 1, 1, 1, 1]) == false
    @test is_sorted([1, 3, 2, 6, 3, 3, 3, 3, 6]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 5, 6, 5, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 10, 10, 1, 4, 2]) == false
    @test is_sorted([0, 0, 2, 2, 11, 11, 4, 4]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 6, 2, 8, 9, 10, 10, 5, 8, 6, 4, 9]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 2, 6, 6, 9, 10, 11, 11, 10, 10, 5]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 2, 8, 9, 10, 10, 8, 6, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 9, 7, 8, 9, 1, 10, 5, 1, 4]) == false
    @test is_sorted([2, 3, 4, 4, 6, 4, 4, 4, 4, 5, 6, 5, 3]) == false
    @test is_sorted([2, 3, 7, 4, 4, 5, 4, 4, 4, 4, 5, 6, 5, 6]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 6, 6, 9, 10, 11, 10, 10, 5, 3, 6]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 4, 4, 4, 5, 6, 5, 5]) == false
    @test is_sorted([1, 12, 2, 3, 4, 10, 6, 7, 8, 8, 10, 10, 7, 6, 4, 7, 10]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 5, 7, 5, 4]) == false
    @test is_sorted([1, 3, 2, 6, 3, 4, 3, 3, 6]) == false
    @test is_sorted([1, 12, 2, 3, 4, 10, 6, 7, 8, 8, 10, 10, 7, 6, 4, 7, 10, 10]) == false
    @test is_sorted([0, 0, 2, 11, 0, 11]) == false
    @test is_sorted([1, 0, 2, 3, 6, 6, 8, 4, 10, 8, 6, 0]) == false
    @test is_sorted([1, 2, 3, 4, 5, 5, 6, 6, 8, 9, 1, 10, 10, 9, 9]) == false
    @test is_sorted([0, 1, 2, 0, 5, 4, 4, 0, 2]) == false
    @test is_sorted([1, 1, 1, 2, 2, 2, 3, 3, 3, 2]) == false
    @test is_sorted([0, 0, 3, 11, 0, 11]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 4, 7, 9, 10, 10]) == false
    @test is_sorted([5, 2, 2, 3, 3, 4, 3, 3, 3]) == false
    @test is_sorted([1, 2, 3, 7, 9, 9, 1, 10, 3, 1]) == false
    @test is_sorted([1, 1, 2, 2, 2, 2, 3, 3, 3, 2, 3]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 6, 2, 8, 9, 4, 10, 5, 8, 6, 4, 9]) == false
    @test is_sorted([1, 2, 3, 4, 6, 2, 7, 8, 9, 1, 10, 6]) == false
    @test is_sorted([1, 12, 2, 3, 4, 2, 10, 6, 6, 8, 8, 10, 10, 7, 4, 2]) == false
    @test is_sorted([1, 2, 3, 5, 6, 7, 8, 9, 1, 10]) == false
    @test is_sorted([1, 2, 11, 3, 7, 9, 9, 1, 10, 3, 1]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 7, 5, 8, 4, 9, 10, 9, 8]) == false
    @test is_sorted([1, 2, 3, 7, 8, 9, 1, 10, 3, 1, 9]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 8, 9, 1, 10]) == false
    @test is_sorted([1, 2, 3, 4, 10, 6, 7, 8, 8, 10, 6, 10, 8, 6]) == false
    @test is_sorted([1, 2, 4, 2, 2, 3, 3, 3, 3, 3, 3, 2]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 1, 10, 11]) == false
    @test is_sorted([1, 3, 8, 5, 6, 7, 7, 5, 8, 4, 5, 9, 10, 10, 8]) == false
    @test is_sorted([0, 0, 2, 2, 4, 4, 11, 4, 4]) == false
    @test is_sorted([0, 0, 2, 2]) == false
    @test is_sorted([1, 2, 3, 4, 6, 7, 6, 6, 9, 10, 11, 10, 6, 10, 5]) == false
    @test is_sorted([1, 2, 3, 8, 10, 6, 7, 8, 8, 10, 10, 8, 6]) == false
    @test is_sorted([1, 12, 4, 3, 4, 10, 6, 7, 8, 8, 10, 8, 10, 7, 6, 4, 8]) == false
    @test is_sorted([1, 2, 3, 5, 7, 8, 1, 10, 3, 9, 1]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 10, 9]) == false
    @test is_sorted([2, 3, 7, 4, 4, 5, 4, 4, 4, 6, 4, 5, 6, 5, 6]) == false
    @test is_sorted([1, 2, 3, 4, 6, 2, 6, 8, 9, 1, 10]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 6, 7, 8, 10, 10, 10, 8, 4]) == false
    @test is_sorted([1, 2, 2, 3, 4, 3, 5, 6, 7, 8, 8, 10, 10, 8]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 8, 2, 11]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 7, 9, 10, 10, 8, 8]) == false
    @test is_sorted([0, 0, 1, 1, 0, 1, 1, 2, 2, 2, 2, 2, 2]) == false
    @test is_sorted([2, 0, 0, 3, 2, 2, 11, 4, 2]) == false
    @test is_sorted([0, 0, 2, 4, 4, 0, 4, 2]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 2, 3, 2]) == false
    @test is_sorted([1, 2, 3, 4, 5, 5, 6, 6, 4, 8, 9, 1, 10, 10, 9, 9]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 6, 8, 9, 1, 10, 10]) == false
    @test is_sorted([1, 12, 2, 3, 4, 6, 7, 8, 8, 3, 10, 10, 7, 6, 4]) == false
    @test is_sorted([7, 3, 10, 8, 0, 10]) == false
    @test is_sorted([1, 12, 2, 3, 4, 10, 6, 7, 8, 8, 10, 10, 7, 6, 4, 6, 10]) == false
    @test is_sorted([1, 2, 6, 2, 5, 5, 7, 9, 5, 10, 10]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 4, 4, 4, 5, 6, 3, 5]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 7, 8, 9, 10, 10, 8, 7, 7]) == false
    @test is_sorted([1, 2, 4, 2, 2, 3, 3, 3, 3, 3, 3, 2, 3]) == false
    @test is_sorted([1, 2, 5, 4, 6, 7, 8, 9, 1, 10, 11, 1]) == false
    @test is_sorted([2, 3, 4, 4, 6, 4, 4, 4, 4, 5, 6, 5, 4]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 8, 2, 11, 9]) == false
    @test is_sorted([0, 3, 11, 0, 11]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 2, 6, 6, 9, 10, 11, 10, 10, 5, 10]) == false
    @test is_sorted([0, 11, 2, 11, 2, 11, 4, 0]) == false
    @test is_sorted([11, 1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 2, 11, 6]) == false
    @test is_sorted([1, 2, 3, 8, 5, 4, 6, 7, 6, 6, 9, 10, 11, 10, 10]) == false
    @test is_sorted([1, 2, 9, 3, 5, 2, 7, 7, 8, 9, 10, 10, 8]) == false
    @test is_sorted([0, 0, 2, 11, 2, 11]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 4, 4, 5, 6, 9, 3, 4, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 5, 6, 6, 8, 9, 7, 10, 10]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 9, 10, 10, 8, 8, 8]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 10, 4, 4, 4, 5, 6, 5]) == false
    @test is_sorted([1, 12, 2, 10, 4, 2, 10, 6, 6, 8, 8, 10, 10, 7, 4, 2]) == false
    @test is_sorted([1, 2, 3, 5, 10, 4, 6, 7, 8, 9, 1, 7, 11, 9, 4, 5]) == false
    @test is_sorted([1, 1, 1, 0, 1, 1, 2, 2, 2, 2]) == false
    @test is_sorted([2, 0, 0, 3, 2, 2, 11, 2, 3]) == false
    @test is_sorted([0, 0, 2, 2, 4, 4, 11, 3, 0]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 4, 4, 6, 9, 4]) == false
    @test is_sorted([1, 12, 2, 3, 4, 6, 7, 8, 8, 10, 10, 4, 6, 4, 7, 7]) == false
    @test is_sorted([10, 0, 11, 2, 11, 2, 11, 4, 0]) == false
    @test is_sorted([5, 0, 0, 2, 11, 2]) == false
    @test is_sorted([2, 4, 4, 5, 4, 4, 4, 5, 6, 9, 4, 4]) == false
    @test is_sorted([7, 0, 0, 2, 4, 4, 0, 4, 2]) == false
    @test is_sorted([1, 2, 3, 5, 6, 7, 9, 1, 10, 1, 4, 1]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 6, 6, 9, 10, 11, 10, 10, 5, 3, 6, 6]) == false
    @test is_sorted([0, 0, 2, 11, 2, 4, 0, 2]) == false
    @test is_sorted([1, 2, 4, 2, 2, 3, 3, 3, 3, 3, 3, 1, 4, 4]) == false
    @test is_sorted([2, 3, 4, 4, 6, 4, 4, 7, 4, 4, 5, 6, 5, 4]) == false
    @test is_sorted([0, 0, 2, 11, 4, 4, 4, 0]) == false
    @test is_sorted([1, 12, 2, 3, 4, 6, 7, 8, 8, 10, 10, 4, 6, 4, 7, 7, 6]) == false
    @test is_sorted([1, 12, 2, 3, 4, 10, 6, 6, 8, 8, 10, 10, 7, 4, 2]) == false
    @test is_sorted([1, 1, 2, 2, 2, 2, 3, 3, 3, 2, 2]) == false
    @test is_sorted([2, 3, 4, 4, 6, 4, 4, 4, 6, 9, 4]) == false
    @test is_sorted([7, 0, 2, 4, 4, 0, 4, 2]) == false
    @test is_sorted([5, 0, 2, 11, 2]) == false
    @test is_sorted([7, 0, 0, 2, 3, 4, 0, 4, 2]) == false
    @test is_sorted([12, 2, 3, 4, 6, 7, 8, 8, 10, 10, 7, 6, 4]) == false
    @test is_sorted([1, 12, 2, 3, 4, 8, 7, 8, 8, 10, 10, 4, 6, 4, 7, 7, 7]) == false
    @test is_sorted([1, 2, 3, 4, 5, 5, 6, 6, 8, 9, 1, 10, 10, 9, 9, 2]) == false
    @test is_sorted([7, 10, 8, 9]) == false
    @test is_sorted([1, 2, 6, 2, 5, 7, 9, 5, 10, 10]) == false
    @test is_sorted([1, 2, 4, 4, 2, 2, 3, 3, 3, 3, 3, 3, 2, 3]) == false
    @test is_sorted([1, 12, 2, 3, 4, 6, 7, 8, 8, 10, 10, 4, 6, 4, 7]) == false
    @test is_sorted([1, 2, 5, 6, 7, 9, 1, 10, 1, 4, 1]) == false
    @test is_sorted([1, 12, 2, 3, 4, 12, 6, 7, 8, 8, 10, 10, 7, 9, 6, 4]) == false
    @test is_sorted([1, 2, 4, 2, 2, 3, 3, 3, 3, 3, 11, 3, 1, 4]) == false
    @test is_sorted([1, 12, 2, 3, 4, 2, 10, 6, 7, 8, 10, 10, 7, 6, 8, 4]) == false
    @test is_sorted([2, 8, 3, 4, 4, 5, 4, 4, 4, 4, 5, 6]) == false
    @test is_sorted([1, 2, 4, 2, 2, 3, 0, 3, 3, 3, 3, 1, 4]) == false
    @test is_sorted([1, 2, 3, 4, 2, 9, 5, 6, 7, 9, 10, 10, 8, 6, 9]) == false
    @test is_sorted([1, 2, 2, 3, 9, 4, 3, 4, 6, 7, 8, 8, 10, 10, 8]) == false
    @test is_sorted([9, 0, 2, 4, 4, 0, 4, 2]) == false
    @test is_sorted([1, 2, 3, 7, 11, 8, 9, 1, 10, 3, 1, 3]) == false
    @test is_sorted([0, 0, 2, 2, 5, 4, 4, 11, 3, 0]) == false
    @test is_sorted([1, 2, 3, 10, 4, 5, 6, 7, 9, 10, 10, 10, 9]) == false
    @test is_sorted([0, 0, 2, 11, 2, 11, 4, 0, 4]) == false
    @test is_sorted([1, 3, 5, 6, 7, 1, 4, 5, 9, 10, 10, 8]) == false
    @test is_sorted([5, 0, 2, 2]) == false
    @test is_sorted([10, 8, 9]) == false
    @test is_sorted([2, 4, 4, 5, 4, 4, 4, 5, 6, 9, 4, 6, 4, 6]) == false
    @test is_sorted([1, 2, 2, 3, 4, 1, 6, 7, 8, 9, 10, 10, 8]) == false
    @test is_sorted([0, 2, 2, 2, 2, 2, 3]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 8, 9, 10, 10, 8, 6, 10]) == false
    @test is_sorted([1, 12, 2, 3, 4, 2, 10, 6, 7, 10, 10, 7, 6, 8, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 6, 8, 9, 2, 10, 10]) == false
    @test is_sorted([1, 2, 4, 5, 6, 9, 7, 8, 9, 1, 10, 5, 1, 4]) == false
    @test is_sorted([1, 1, 1, 1, 1, 1, 1]) == false
    @test is_sorted([0, 1, 1, 2, 0, 5, 4, 4, 0, 2]) == false
    @test is_sorted([2, 7, 3, 7, 10, 10, 8]) == false
    @test is_sorted([12, 2, 3, 4, 6, 7, 8, 8, 9, 10, 7, 6, 4, 8]) == false
    @test is_sorted([1, 2, 3, 4, 6, 7, 8, 8, 10, 10, 7, 6, 4]) == false
    @test is_sorted([1, 2, 2, 3, 9, 8, 4, 3, 4, 6, 7, 8, 8, 10, 10, 8]) == false
    @test is_sorted([1, 3, 2, 6, 3, 3, 3, 3, 3]) == false
    @test is_sorted([1, 3, 5, 6, 7, 9, 1, 10, 1, 4, 1]) == false
    @test is_sorted([1, 1, 3, 1, 2, 2, 1, 2, 3, 3, 3, 2, 1]) == false
    @test is_sorted([0, 2, 2, 2, 2, 2, 3, 2]) == false
    @test is_sorted([2, 4, 4, 5, 4, 4, 12, 4, 5, 6, 5, 9, 4, 6, 4, 6]) == false
    @test is_sorted([1, 2, 2, 3, 4, 3, 5, 6, 7, 11, 8, 8, 10, 10, 8]) == false
    @test is_sorted([0, 0, 2, 2, 2, 11]) == false
    @test is_sorted([1, 2, 3, 6, 2, 6, 8, 9, 1, 10]) == false
    @test is_sorted([2, 3, 4, 6, 4, 4, 4, 4, 5, 6, 5, 3]) == false
    @test is_sorted([1, 2, 5, 4, 6, 7, 8, 10, 9, 1, 10, 3, 1, 6]) == false
    @test is_sorted([12, 2, 3, 4, 6, 6, 7, 8, 8, 10, 10, 7, 6, 4]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 8, 9, 10, 8]) == false
    @test is_sorted([1, 2, 2, 4, 5, 6, 2, 8, 9, 10, 10, 8, 6, 4]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 10, 11, 1]) == false
    @test is_sorted([1, 2, 3, 5, 5, 7, 8, 9, 9, 10, 3]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 6, 8, 9, 2, 10, 7, 10]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 2, 11]) == false
    @test is_sorted([1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 8, 2]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 8, 9]) == false
    @test is_sorted([1, 2, 3, 3, 5, 6, 7, 8, 8, 10, 10, 8]) == false
    @test is_sorted([1, 3, 2, 3, 3, 3, 3, 3]) == false
    @test is_sorted([1, 2, 2, 2, 2, 2, 5, 3, 2]) == false
    @test is_sorted([2, 3, 2, 4, 5, 4, 4, 4, 5, 6, 4]) == false
    @test is_sorted([1, 2, 3, 8, 10, 6, 7, 8, 2, 8, 10, 10, 8]) == false
    @test is_sorted([1, 2, 3, 7, 8, 10, 9, 1, 10, 11, 1]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 11, 8, 9, 10, 11, 1]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 2, 6, 6, 9, 10, 11, 10, 9, 5]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 4, 4, 5, 6, 5, 4, 4]) == false
    @test is_sorted([2, 4, 4, 5, 4, 4, 4, 5, 6, 5]) == false
    @test is_sorted([2, 3, 4, 5, 6, 7, 8, 9, 1, 10, 10, 1, 4, 9]) == false
    @test is_sorted([1, 12, 2, 3, 4, 2, 10, 6, 7, 8, 8, 10, 10, 7, 6, 4, 2]) == false
    @test is_sorted([9, 0, 2, 4, 0, 4, 2]) == false
    @test is_sorted([1, 2, 3, 4, 2, 9, 5, 6, 7, 9, 10, 10, 8, 6, 8, 6]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 6, 6, 9, 10, 11, 5, 10, 10, 5, 3, 6]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 6, 6, 9, 9, 10, 11, 10, 10, 5, 6, 1, 6]) == false
    @test is_sorted([1, 1, 3, 4, 5, 6, 7, 8, 9, 10, 10, 8, 6]) == false
    @test is_sorted([1, 1, 2, 3, 2, 2, 3, 3, 3, 2, 3]) == false
    @test is_sorted([1, 0, 2, 3, 4, 5, 6, 7, 7, 5, 8, 4, 9, 10, 10, 8]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 6, 2, 8, 9, 4, 10, 5, 8, 6, 4, 9, 6]) == false
    @test is_sorted([1, 2, 3, 8, 5, 4, 6, 7, 6, 6, 9, 10, 11, 10, 10, 2]) == false
    @test is_sorted([5, 2, 2, 3, 3, 4, 3, 1, 3]) == false
    @test is_sorted([1, 2, 2, 4, 5, 6, 2, 8, 10, 10, 8, 6, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 5, 6, 6, 8, 9, 1, 10, 10, 10, 9, 9, 2, 9]) == false
    @test is_sorted([12, 2, 2, 3, 4, 1, 6, 6, 8, 9, 10, 10, 8, 9]) == false
    @test is_sorted([1, 2, 5, 6, 7, 9, 1, 10, 3, 1]) == false
    @test is_sorted([0, 0, 2, 12]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 8, 9, 1, 10, 7]) == false
    @test is_sorted([2, 3, 4, 4, 3, 6, 4, 4, 4, 4, 5, 6, 5]) == false
    @test is_sorted([0, 2, 2, 2, 2, 3]) == false
    @test is_sorted([1, 1, 2, 3, 5, 4, 6, 7, 2, 6, 6, 9, 10, 11, 10, 9, 5]) == false
    @test is_sorted([1, 2, 2, 8, 2, 2, 2, 2, 3, 2]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 10, 9, 3]) == false
    @test is_sorted([0, 0, 2, 2, 4, 4, 11, 4, 0]) == false
    @test is_sorted([1, 2, 3, 4, 6, 7, 6, 6, 9, 10, 2, 11, 10, 6, 9, 10, 5]) == false
    @test is_sorted([1, 0, 2, 11, 2, 11, 0]) == false
    @test is_sorted([1, 2, 2, 4, 5, 6, 2, 8, 9, 10, 10, 8, 6]) == false
    @test is_sorted([1, 3, 4, 2, 9, 5, 6, 7, 9, 9, 10, 8, 6, 3, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 6, 8, 9, 1, 10, 10, 1]) == false
    @test is_sorted([1, 3, 5, 6, 3, 4, 3, 3, 6]) == false
    @test is_sorted([1, 12, 2, 3, 4, 6, 7, 8, 7, 10, 10, 4, 6, 4, 7]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 9, 1, 10, 2, 1]) == false
    @test is_sorted([1, 2, 6, 3, 5, 5, 9, 5, 10, 10]) == false
    @test is_sorted([10, 0, 1, 1, 2, 0, 5, 4, 4, 0, 2]) == false
    @test is_sorted([1, 12, 2, 3, 4, 10, 6, 7, 11, 8, 8, 10, 10, 7, 6, 4, 7, 10, 10]) == false
    @test is_sorted([2, 7, 4, 4, 5, 4, 3, 4, 4, 4, 5, 6, 12, 5, 6]) == false
    @test is_sorted([1, 0, 2, 1, 2, 3, 4, 12, 5, 6, 7, 7, 5, 8, 4, 9, 2, 10, 10, 8]) == false
    @test is_sorted([0, 0, 1, 1, 0, 1, 1, 2, 2, 9, 1, 2, 2]) == false
    @test is_sorted([1, 12, 2, 3, 4, 2, 6, 6, 8, 8, 10, 10, 7, 4, 2]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 8, 9, 10, 1, 10, 10]) == false
    @test is_sorted([0, 6, 2, 2, 4, 4, 11, 4, 4, 4]) == false
    @test is_sorted([9, 0, 2, 4, 4, 0, 2, 4, 2]) == false
    @test is_sorted([1, 2, 5, 3, 4, 5, 6, 6, 8, 9, 1, 10, 10]) == false
    @test is_sorted([2, 7, 3, 4, 5, 6, 7, 8, 9, 1, 10]) == false
    @test is_sorted([7, 0, 2, 3, 4, 5, 6, 7, 8, 8, 9, 2, 10]) == false
    @test is_sorted([1, 9, 4, 9, 6, 7, 7, 8, 9, 9, 10, 8]) == false
    @test is_sorted([0, 3, 11, 11]) == false
    @test is_sorted([2, 1, 3, 5, 6, 3, 4, 3, 3, 6]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 6, 9, 4]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 8, 9, 10, 1, 10, 3, 10]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 8, 9, 1, 10, 10]) == false
    @test is_sorted([0, 3, 11, 11, 11]) == false
    @test is_sorted([1, 2, 3, 4, 6, 7, 8, 8, 10, 10, 7, 6, 4, 10, 8]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 8, 9, 2, 11, 5]) == false
    @test is_sorted([1, 3, 2, 3, 3, 3, 3, 0]) == false
    @test is_sorted([1, 8, 2, 3, 6, 6, 8, 4, 10, 10, 8, 6, 1]) == false
    @test is_sorted([1, 2, 3, 4, 2, 9, 5, 6, 7, 9, 10, 2, 10, 8, 6, 8, 5]) == false
    @test is_sorted([1, 2, 2, 3, 4, 5, 6, 2, 8, 10, 10, 8, 6, 4, 2]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 9, 10, 10, 8, 8]) == false
    @test is_sorted([3, 2, 1, 3, 6, 6, 3, 4, 3, 3, 6, 5]) == false
    @test is_sorted([11, 1, 2, 3, 5, 4, 6, 7, 8, 9, 2, 11]) == false
    @test is_sorted([5, 5, 2, 3, 4, 5, 4, 4, 6, 4, 5, 6, 5]) == false
    @test is_sorted([1, 2, 2, 3, 4, 6, 6, 2, 8, 9, 4, 10, 5, 8, 6, 4, 9, 6, 6]) == false
    @test is_sorted([1, 2, 4, 5, 6, 9, 7, 8, 9, 1, 5, 10, 5, 1, 4]) == false
    @test is_sorted([1, 12, 2, 3, 4, 2, 10, 6, 7, 10, 7, 6, 8, 4]) == false
    @test is_sorted([0, 0, 1, 2, 11, 2]) == false
    @test is_sorted([5, 6, 0, 2, 11, 10]) == false
    @test is_sorted([0, 2, 2, 2, 2, 2, 11, 2]) == false
    @test is_sorted([1, 13, 2, 3, 4, 2, 10, 6, 7, 6, 8, 8, 10, 10, 7, 6, 4, 6]) == false
    @test is_sorted([1, 9, 4, 5, 6, 7, 8, 9, 1, 10, 10]) == false
    @test is_sorted([1, 3, 5, 6, 3, 4, 3, 3, 6, 5, 5]) == false
    @test is_sorted([5, 2, 6, 0, 2, 11, 10]) == false
    @test is_sorted([8, 2, 3, 7, 8, 9, 1, 10, 3, 1, 3]) == false
    @test is_sorted([1, 2, 4, 5, 6, 7, 7, 8, 9, 9, 10, 7]) == false
    @test is_sorted([2, 1, 1, 2, 2, 2, 2, 3, 3, 3, 2, 3]) == false
    @test is_sorted([2, 3, 4, 4, 3, 6, 4, 4, 4, 4, 5, 5]) == false
    @test is_sorted([5, 5, 2, 3, 4, 5, 4, 7, 4, 6, 4, 5, 6, 5]) == false
    @test is_sorted([1, 2, 2, 3, 9, 4, 3, 4, 6, 7, 8, 13, 8, 10, 10, 8]) == false
    @test is_sorted([1, 2, 3, 5, 4, 6, 7, 6, 6, 9, 10, 6, 11, 11, 10, 10]) == false
    @test is_sorted([1, 2, 2, 2, 2, 9, 2, 3]) == false
    @test is_sorted([1, 2, 3, 4, 2, 9, 5, 6, 7, 9, 10, 2, 10, 8, 6, 8, 10]) == false
    @test is_sorted([1, 12, 2, 3, 4, 6, 7, 8, 7, 10, 10, 5, 6, 4, 7]) == false
    @test is_sorted([1, 3, 2, 6, 3, 3, 3, 6, 3]) == false
    @test is_sorted([1, 2, 3, 6, 2, 6, 9, 1, 10]) == false
    @test is_sorted([1, 2, 3, 6, 2, 6, 8, 9, 12, 10]) == false
    @test is_sorted([2, 4, 4, 5, 6, 7, 8, 9, 10, 10, 1, 4, 9]) == false
    @test is_sorted([1, 2, 3, 4, 2, 9, 5, 6, 7, 9, 10, 10, 6, 11, 6]) == false
    @test is_sorted([1, 1, 4, 4, 2, 3, 3, 3, 3, 3, 3, 3, 2, 3]) == false
    @test is_sorted([1, 6, 9, 4, 6, 7, 8, 9, 1, 10, 10, 6]) == false
    @test is_sorted([2, 4, 3, 4, 4, 4, 4, 4, 4, 5, 6, 5]) == false
    @test is_sorted([2, 2, 2, 2, 2, 11, 2, 2]) == false
    @test is_sorted([10, 1, 3, 4, 1, 2, 9, 5, 6, 7, 9, 10, 10, 8, 6]) == false
    @test is_sorted([9, 0, 2, 4, 4, 0, 2, 4, 2, 4]) == false
    @test is_sorted([2, 7, 4, 4, 4, 4, 3, 4, 4, 4, 6, 12, 5, 6]) == false
    @test is_sorted([5, 2, 2, 3, 5, 3, 4, 3, 3, 3]) == false
    @test is_sorted([4, 5, 2, 3, 4, 5, 4, 4, 6, 4, 5, 6, 5]) == false
    @test is_sorted([1, 2, 3, 4, 10, 6, 6, 8, 8, 10, 10, 7, 4, 2]) == false
    @test is_sorted([6, 10, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == false
    @test is_sorted([1, 2, 4, 2, 2, 3, 0, 8, 3, 3, 3, 3, 1, 4]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 6, 8, 9, 1, 10, 10, 10]) == false
    @test is_sorted([1, 2, 3, 4, 10, 6, 6, 6, 8, 8, 10, 10, 7, 4, 2]) == false
    @test is_sorted([1, 2, 3, 7, 9, 9, 1, 10, 3, 1, 1]) == false
    @test is_sorted([7, 0, 0, 2, 4, 4, 0, 4, 0]) == false
    @test is_sorted([2, 3, 4, 4, 4, 4, 8, 4, 4, 12, 6]) == false
    @test is_sorted([5, 0, 2, 2, 3]) == false
    @test is_sorted([2, 3, 4, 4, 5, 4, 4, 4, 4, 5, 6, 5, 5, 4, 5]) == false
    @test is_sorted([1, 2, 3, 4, 5, 6, 7, 7, 9, 1, 10, 10]) == false
    @test is_sorted([1, 12, 2, 3, 4, 2, 11, 6, 7, 10, 7, 6, 8, 4]) == false
    @test is_sorted([1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1]) == false
    @test is_sorted([1, 2, 3, 4, 10, 6, 6, 8, 8, 10, 10, 4, 2]) == false
    @test is_sorted([1, 12, 2, 4, 2, 10, 6, 7, 8, 8, 10, 7, 6, 4]) == false
    @test is_sorted([1, 2, 2, 3, 5, 6, 2, 8, 9, 10, 10, 8, 6, 4, 9, 10]) == false
    @test is_sorted([7, 0, 2, 3, 4, 5, 2, 6, 7, 8, 9, 2, 10, 3]) == false
end
