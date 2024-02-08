@testitem "135_can_arrange_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "135_can_arrange.jl"))
    @test can_arrange([1]) == -1
    @test can_arrange([1, 2, 3, 4, 5]) == -1
    @test can_arrange([5, 4, 3, 2, 1]) == 5
    @test can_arrange([1, 3, 5, 4, 6, 7, 9, 8]) == 8
    @test can_arrange([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == 10
    @test can_arrange([1, 4, 2, 5, 6, 7, 8, 9, 10, 3]) == 10
    @test can_arrange([1, 3, 2, 4]) == 3
    @test can_arrange([5, 4, 3, 2]) == 4
    @test can_arrange([-1, 0, 1, 2, 3]) == -1
    @test can_arrange([2, 3, 1, 4]) == 3
    @test can_arrange([1, 3, 4]) == -1
    @test can_arrange([6, 0, 1, 2, 3]) == 2
    @test can_arrange([1, 4, 2, 5, 6, 8, 9, 10, 3]) == 9
    @test can_arrange([2, 3, 4, 5]) == -1
    @test can_arrange([2]) == -1
    @test can_arrange([1, 2, 5, 6, 8, 9, 10, 3]) == 8
    @test can_arrange([5, 4, 3, 1, 2]) == 4
    @test can_arrange([1, 3, 5, 4, 6, 7, 8]) == 4
    @test can_arrange([3, 1]) == 2
    @test can_arrange([1, 4, 2, 5, 6, 7, -1, 9, 10, 3]) == 10
    @test can_arrange([1, 4, 2, 5, 7, -1, 9, 10, 3]) == 9
    @test can_arrange([6, 0, 1, 3]) == 2
    @test can_arrange([-1, 0, -2, 1, 2, 3]) == 3
    @test can_arrange([1, 4, 2, 5, 6, 8, 7, -1, 9, 10, 3]) == 11
    @test can_arrange([10, 1]) == 2
    @test can_arrange([5, 4, 2]) == 3
    @test can_arrange([2, 1]) == 2
    @test can_arrange([3, 2, 4]) == 2
    @test can_arrange([5, 4, 6, 2]) == 4
    @test can_arrange([1, 4, 2, 6, 8, 7, -1, 9, 10, 3]) == 10
    @test can_arrange([6, 0, 1, 2, 4]) == 2
    @test can_arrange([5, 4, 2, 1, 8]) == 4
    @test can_arrange([9, 8, 7, 6, 5, 4, 3, 2, 1]) == 9
    @test can_arrange([8, 4, 3, 2]) == 4
    @test can_arrange([1, 4, 2, 6, 7, 5, -1, 10, 3]) == 9
    @test can_arrange(Int64[]) == -1
    @test can_arrange([-1, 2, 1]) == 3
    @test can_arrange([1, 3, 5, 4, 6, 7, 9]) == 4
    @test can_arrange([1, 3, -2]) == 3
    @test can_arrange([-1, 2, 0]) == 3
    @test can_arrange([5, 10, 1]) == 3
    @test can_arrange([6, 0, 10, 2, 4]) == 4
    @test can_arrange([6, 3, 4, 5]) == 2
    @test can_arrange([1, 4, 2, 5, 6, 7, -1, 9, 3]) == 9
    @test can_arrange([6, 0, 10, 4]) == 4
    @test can_arrange([2, 3, 7, 4]) == 4
    @test can_arrange([10, 8, 7, 6, 5, 4, 3, 2, 1]) == 9
    @test can_arrange([6, 0, 2, 4]) == 2
    @test can_arrange([2, 4, 10, 5]) == 4
    @test can_arrange([8, 4, 3]) == 3
    @test can_arrange([3]) == -1
    @test can_arrange([5, 4, 6, -2]) == 4
    @test can_arrange([5, 4, 2, 1]) == 4
    @test can_arrange([4, 2, 1]) == 3
    @test can_arrange([10, 3, -2, -1, 1]) == 3
    @test can_arrange([1, 3]) == -1
    @test can_arrange([3, 7]) == -1
    @test can_arrange([0, 4, 2, 1, 8]) == 4
    @test can_arrange([10, 9, 8, 7, 6, 5, 4, 3, 2, 0]) == 10
    @test can_arrange([10, 3, 2, -2, -1, 1]) == 4
    @test can_arrange([6, 4, 3, 1, 2]) == 4
    @test can_arrange([-1, 0, 1, 7, 3]) == 5
    @test can_arrange([1, 8, 4, 3, 2]) == 5
    @test can_arrange([1, 3, 5, 4, 6, 7, 10, 8]) == 8
    @test can_arrange([3, 1, 4]) == 2
    @test can_arrange([1, 6, -2, 3]) == 3
    @test can_arrange([5, 4, -3]) == 3
    @test can_arrange([-1, 0, 6, 7, 3]) == 5
    @test can_arrange([5, -3]) == 2
    @test can_arrange([6, 0, 1, 2, 3, 4]) == 2
    @test can_arrange([-1, 5, 0, 1, 2, 3]) == 3
    @test can_arrange([7]) == -1
    @test can_arrange([1, 3, 5, 4, 10, 6, 7, 9]) == 6
    @test can_arrange([6, 3, 2, 4]) == 3
    @test can_arrange([1, 3, 2, -3, 4]) == 4
    @test can_arrange([1, 4, 2, 5, -2, 7, -1, 9, 10, 3]) == 10
    @test can_arrange([1, 3, 5, 4, -1, 6, 7, 9, 8]) == 9
    @test can_arrange([1, 4, 5, 6, 8, 7, -1, 9, 10, 3]) == 10
    @test can_arrange([-3, 5, 4, -2]) == 4
    @test can_arrange([5, 3, 2]) == 3
    @test can_arrange([-1, -2, 1, 2, 3]) == 2
    @test can_arrange([2, 1, 4, 10, 5]) == 5
    @test can_arrange([0, 3]) == -1
    @test can_arrange([-2, 5, -3]) == 3
    @test can_arrange([2, 3, 4, 7]) == -1
    @test can_arrange([10, 9, 8, 7, 6, 5, 4, 3, 1, 0]) == 10
    @test can_arrange([6, 1, 2, 4]) == 2
    @test can_arrange([4, 1]) == 2
    @test can_arrange([-1, 2]) == -1
    @test can_arrange([5, 6, 7, 0, 10, 4]) == 6
    @test can_arrange([0, 1, 2, 4]) == -1
    @test can_arrange([10]) == -1
    @test can_arrange([1, 6, 0, -2, 3]) == 4
    @test can_arrange([5, -3, 4, 6, -2]) == 5
    @test can_arrange([5, 10]) == -1
    @test can_arrange([4, 2, 1, 3, 5, 6, 7]) == 3
    @test can_arrange([10, 9, 8, 4, 7, 6, 5, 2, 1]) == 9
    @test can_arrange([3, 6, 9, 12, 15, 18, 21, 19, 16, 13, 10, 7, 4, 1, 2, 5, 8, 11, 14, 17, 20]) == 14
    @test can_arrange([1, 3, 5, 4, 2, 6, 8, 7, 10]) == 8
    @test can_arrange([1, 2, 3, 10, 9, 8, 7, 6, 5]) == 9
    @test can_arrange([10, 9, 8, 1, 2, 3, 4, 7, 6, 5]) == 10
    @test can_arrange([1, 10, 2, 9, 3, 8, 4, 7, 5, 6]) == 9
    @test can_arrange([5, 4, 3, 2, 1, 6, 7, 8, 9, 10]) == 5
    @test can_arrange([1, 3, 2, 5, 4, 7, 6, 9, 8, 10]) == 9
    @test can_arrange([4, 3, 2, 1]) == 4
    @test can_arrange([4, 8, 2, 1]) == 4
    @test can_arrange([4, 6, 2, 1]) == 4
    @test can_arrange([10, 8, 17, 7, 6, 5, 2, 18, 1]) == 9
    @test can_arrange([3, 6, 9, 12, 15, 18, 21, 19, 16, 13, 10, 7, 4, 1, 2, 5, 8, 14, 17, 20]) == 14
    @test can_arrange([10, 9, 8, 4, 17, 6, 5, 2, 1]) == 9
    @test can_arrange([1, 3, 2, 5, 4, 7, 9, 8, 10]) == 8
    @test can_arrange([4, 6, 3, 1]) == 4
    @test can_arrange([4, 3, 2, 5, 1]) == 5
    @test can_arrange([1, 2, 4, 10, 9, 8, 7, 6, 5]) == 9
    @test can_arrange([2, 4, 10, 9, 8, 7, 6, 5]) == 8
    @test can_arrange([1, 5, 4, 2, 6, 8, 7, 10]) == 7
    @test can_arrange([1, 3, 5, 4, 2, 8, 7, 10]) == 7
    @test can_arrange([10, 9, 8, 1, 2, 3, 4, 7, 6]) == 9
    @test can_arrange([4, 3, 12, 2, 1]) == 5
    @test can_arrange([19, 4, 3, 2, 1]) == 5
    @test can_arrange([10, 9, 8, 4, 18, 6, 5, 2, 1]) == 9
    @test can_arrange([4, 2]) == 2
    @test can_arrange([4, 3, 2, 5]) == 3
    @test can_arrange([4, 9, 3, 2, 5]) == 4
    @test can_arrange([4, 2, 5, 1]) == 4
    @test can_arrange([4, 3]) == 2
    @test can_arrange([4, 6, 3]) == 3
    @test can_arrange([10, 9, 8, 1, 18, 2, 3, 4, 7, 6]) == 10
    @test can_arrange([9, 4, 2, 1]) == 4
    @test can_arrange([4, 3, 1]) == 3
    @test can_arrange([0, 1, 3, 2, 5, 4, 7, 9, 8, 10]) == 9
    @test can_arrange([0, 1, 3, 2, 5, 4, 6, 7, 9, 8, 10]) == 10
    @test can_arrange([3, 2, 1, 5]) == 3
    @test can_arrange([1, 3, 5, 4, 0, 2, 6, 8, 7, 10]) == 9
    @test can_arrange([0, 3, 12, 18, 2, 5, 4, 6, 7, 9, 8, 10]) == 11
    @test can_arrange([1, 3, 5, 2, 6, 8, 7, 10]) == 7
    @test can_arrange([4]) == -1
    @test can_arrange([1, 3, 5, 2, 6, 8, 10]) == 4
    @test can_arrange([1, 4, 5, 2, 6, 8, 10]) == 4
    @test can_arrange([1, 2, 3, 10, 9, 8, 6, 5]) == 8
    @test can_arrange([4, 3, 2, 5, 16, 1]) == 6
    @test can_arrange([1, 3, 2, 5, 4, 7, 6, 8, 10]) == 7
    @test can_arrange([1, 5, 4, 2, 8, 7, 10]) == 6
    @test can_arrange([4, 3, 2, 5, 19, 1]) == 6
    @test can_arrange([1, 0, 3, 2, 5, 4, 7, 6, 9, 8]) == 10
    @test can_arrange([4, 2, 3, 5, 1]) == 5
    @test can_arrange([0, 3, 12, 18, 21, 5, 4, 6, 7, 9, 11, 8, 10]) == 12
    @test can_arrange([5, 4, 9]) == 2
    @test can_arrange([1, 0, 5, 4, 2, 6, 8, 7, 10]) == 8
    @test can_arrange([0, 1, 3, 5, 4, 6, 7, 9, 8, 10]) == 9
    @test can_arrange([19, 4, 2, 1]) == 4
    @test can_arrange([19, 4, 17, 2, 1]) == 5
    @test can_arrange([11, 3]) == 2
    @test can_arrange([1, 3, 5, 4, 0, 16, 6, 8, 7, 10]) == 9
    @test can_arrange([8, 3, 1]) == 3
    @test can_arrange([5, 15, 2]) == 3
    @test can_arrange([11, 2, 3]) == 2
    @test can_arrange([1, 2, 4, 10, 9, 7, 6, 5]) == 8
    @test can_arrange([3, 5]) == -1
    @test can_arrange([3, 6, 9, 12, 15, 18, 21, 19, 16, 13, 7, 4, 1, 2, 5, 8, 14, 17, 20]) == 13
    @test can_arrange([19, 4, 3, 10, 8, 9, 1]) == 7
    @test can_arrange([1, 3, 5, 4, 0, 16, 8, 7, 10]) == 8
    @test can_arrange([19, 0, 4, 2, 1]) == 5
    @test can_arrange([9, 13, 4, 2, 1]) == 5
    @test can_arrange([2, 5]) == -1
    @test can_arrange([4, 16, 2, 5, 19, 1]) == 6
    @test can_arrange([5, 4, 9, 2]) == 4
    @test can_arrange([10, 9, 8, 4, 17, 6, 5, 15, 2, 1]) == 10
    @test can_arrange([3, 6, 9, 12, 15, 18, 21, 19, 16, 13, 4, 1, 2, 5, 8, 14, 17, 20]) == 12
    @test can_arrange([19, 4, 12, 2, 1]) == 5
    @test can_arrange([5]) == -1
    @test can_arrange([8, 14, 3, 1]) == 4
    @test can_arrange([1, 3, 2, 5, 14, 4, 0, 16, 7, 10]) == 9
    @test can_arrange([19, 4, 12, 2]) == 4
    @test can_arrange([3, 5, 4, 8, 15, 7, 10]) == 6
    @test can_arrange([5, 2]) == 2
    @test can_arrange([1, 4, 5, 18, 2, 6, 8, 10]) == 5
    @test can_arrange([1, 4, 5, 2, 6, 8]) == 4
    @test can_arrange([2, 1, 5]) == 2
    @test can_arrange([3, 6, 9, 12, 15, 21, 19, 16, 13, 10, 7, 4, 1, 2, 5, 8, 11, 14, 17, 20]) == 13
    @test can_arrange([10, 9, 8, 1, 2, 3, 4, 7, 5]) == 9
    @test can_arrange([9, 4, 2]) == 3
    @test can_arrange([4, 18, 3, 1]) == 4
    @test can_arrange([15, 2, 3, 10, 9, 8, 6, 5]) == 8
    @test can_arrange([9, 2, 1]) == 3
    @test can_arrange([4, 2, 5, 19, 1]) == 5
    @test can_arrange([4, 6, 17]) == -1
    @test can_arrange([1, 3, 5, 2, 4, 8, 10]) == 4
    @test can_arrange([5, 4, 2, 6, 8, 7, 10]) == 6
    @test can_arrange([8, 4, 15, 9, 2]) == 5
    @test can_arrange([1, 5, 0, 16, 8, 7, 10]) == 6
    @test can_arrange([5, 4]) == 2
    @test can_arrange([5, 4, 3, 2, 1, 6, 7, 9, 10]) == 5
    @test can_arrange([4, 3, 5, 16, 1]) == 5
    @test can_arrange([3, 4]) == -1
    @test can_arrange([8, 4, 3, 15, 9, 2]) == 6
    @test can_arrange([4, 3, 7, 5, 19, 1]) == 6
    @test can_arrange([4, 6, 2, 7, 9]) == 3
    @test can_arrange([6, 9, 12, 15, 21, 19, 16, 13, 10, 7, 4, 1, 2, 5, 8, 11, 14, 17, 20]) == 12
    @test can_arrange([5, 15]) == -1
    @test can_arrange([4, 21, 3, 9]) == 3
    @test can_arrange([11, 2]) == 2
    @test can_arrange([1, 3, 5, 2, 6, 8]) == 4
    @test can_arrange([1, 0, 5, 14, 2, 6, 8, 7, 10]) == 8
    @test can_arrange([6, 2, 1]) == 3
    @test can_arrange([5, 4, 15, 2]) == 4
    @test can_arrange([20, 19, 4, 3, 2, 1]) == 6
    @test can_arrange([1, 3, 2, 6, 8, 7, 10]) == 6
    @test can_arrange([5, 4, 3, 1, 6, 7, 9, 10]) == 4
    @test can_arrange([12, 3]) == 2
    @test can_arrange([8, 4, 15, 10, 9, 2]) == 6
    @test can_arrange([1, 3, 5, 4, 0, 17, 16, 8, 7, 10]) == 9
    @test can_arrange([3, 5, 0, 16, 8, 7, 10]) == 6
    @test can_arrange([19, 18, 3, 1]) == 4
    @test can_arrange([5, 9]) == -1
    @test can_arrange([4, 5, 1]) == 3
    @test can_arrange([15]) == -1
    @test can_arrange([3, 2, 1]) == 3
    @test can_arrange([0, 20, 2, 1]) == 4
    @test can_arrange([15, 1, 12, 3, 5, 4, 2, 8, 7, 10]) == 9
    @test can_arrange([1, 3, 2, 6, 5, 8]) == 5
    @test can_arrange([1, 3, 5, 9, 6, 8, 10]) == 5
    @test can_arrange([2, 3]) == -1
    @test can_arrange([3, 4, 21, 2, 9]) == 4
    @test can_arrange([4, 10, 2, 7]) == 3
    @test can_arrange([12, 1]) == 2
    @test can_arrange([20, 1, 2, 3, 10, 9, 8, 7, 6, 5]) == 10
    @test can_arrange([3, 2, 5]) == 2
    @test can_arrange([4, 0, 1]) == 2
    @test can_arrange([0, 1, 5, 4, 6, 7, 9, 8, 10]) == 8
    @test can_arrange([1, 10, 2, 9, 3, 8, 4, 13, 5, 6]) == 9
    @test can_arrange([1, 3, 5, 2, 21, 4, 8, 10]) == 6
    @test can_arrange([2, 4, 10, 8, 7, 6, 5]) == 7
    @test can_arrange([8, 4, 15, 9]) == 4
    @test can_arrange([3, 12, 2, 1]) == 4
    @test can_arrange([3, 5, 0, 16, 15, 8, 7]) == 7
    @test can_arrange([19, 4, 13, 2, 1]) == 5
    @test can_arrange([15, 3, 5, 4, 2, 8, 7, 10]) == 7
    @test can_arrange([1, 3, 5, 6, 8, 14, 10]) == 7
    @test can_arrange([19, 3, 0, 4, 2, 1]) == 6
    @test can_arrange([19, 4, 12, 1]) == 4
    @test can_arrange([4, 5, 19, 1]) == 4
    @test can_arrange([10, 8, 17, 7, 5, 3, 18, 1]) == 8
    @test can_arrange([3, 6, 9, 12, 15, 18, 21, 19, 16, 13, 4, 1, 2, 8, 14, 17, 20]) == 12
    @test can_arrange([11, 10, 2]) == 3
    @test can_arrange([4, 9, 3, 2]) == 4
    @test can_arrange([2, 8, 4, 3, 15, 9]) == 6
    @test can_arrange([19, 3, 13, 2, 1]) == 5
    @test can_arrange([12, 5, 9]) == 2
    @test can_arrange([1, 3, 2, 5, 14, 4, 16, 7, 10]) == 8
    @test can_arrange([10, 2, 7]) == 2
    @test can_arrange([4, 3, 2, 1, 6, 7, 8, 9, 10]) == 4
    @test can_arrange([1, 20, 5, 2, 21, 4, 8, 10]) == 6
    @test can_arrange([5, 19, 1]) == 3
    @test can_arrange([1, 3, 5, 4, 2, 8, 10]) == 5
    @test can_arrange([1, 3, 2, 12, 8, 7, 10]) == 6
    @test can_arrange([13, 6, 2, 1]) == 4
    @test can_arrange([19, 4, 12, 0, 1]) == 4
    @test can_arrange([10, 3, 5, 19, 1]) == 5
    @test can_arrange([5, 6, 9]) == -1
    @test can_arrange([19, 8, 14, 3]) == 4
    @test can_arrange([4, 18, 20, 5, 2, 1]) == 6
    @test can_arrange([15, 1, 12, 20, 5, 4, 2, 8, 7, 10]) == 9
    @test can_arrange([10, 9, 21, 4, 17, 6, 15, 2, 1]) == 9
    @test can_arrange([15, 5, 4, 2, 7, 10]) == 4
    @test can_arrange([4, 5, 12, 1]) == 4
    @test can_arrange([1, 4, 5, 2, 11, 8, 10, 6]) == 8
    @test can_arrange([-1, 5, 0, 2]) == 3
    @test can_arrange([16, 9, 2, 1]) == 4
    @test can_arrange([2, 3, 10, 9, 8, 6, 1, 5]) == 7
    @test can_arrange([4, 6, 2, 0, 1]) == 4
    @test can_arrange([20, 4, 12, 1]) == 4
    @test can_arrange([3, 2, 5, 19, 1]) == 5
    @test can_arrange([1, 3, 0, 6, 8, 14, 10]) == 7
    @test can_arrange([4, 15, 2]) == 3
    @test can_arrange([4, 10, 12]) == -1
    @test can_arrange([9]) == -1
    @test can_arrange([3, 2, 5, 4, 7, 9, 8, 10]) == 7
    @test can_arrange([4, 18, 20, 5, 9, 1]) == 6
    @test can_arrange([4, 16, 2, 5, 19]) == 3
    @test can_arrange([5, 4, 3, 2, 1, 6, 15, 9, 10]) == 8
    @test can_arrange([4, 5, 2, 6, 8]) == 3
    @test can_arrange([4, 20, 5, 9, 1]) == 5
    @test can_arrange([15, 16, 2, 3, 5, 19]) == 3
    @test can_arrange([10, 9, 8, 1, 5, 2, 3, 4, 7, 6]) == 10
    @test can_arrange([3, 2, 15, 5]) == 4
    @test can_arrange([10, 8, 17, 7, 6, 2, 18, 1]) == 8
    @test can_arrange([1, 2, 4, 17, 10, 9, 7, 6, 18]) == 8
    @test can_arrange([1, 3, 2, 5, 8]) == 3
    @test can_arrange([3, 2]) == 2
    @test can_arrange([4, 10, 7]) == 3
    @test can_arrange([18, 4, 6, 17]) == 2
    @test can_arrange([19, 4, 3, 20, 2]) == 5
    @test can_arrange([5, 6, 4, 9]) == 3
    @test can_arrange([1, 3, 5, 4, 6, 7, 9, 8, 10]) == 8
    @test can_arrange([1, 20, 5, 6, 2, 21, 4, 8, 10]) == 7
    @test can_arrange([19, 4, 14, 3, 2, 1]) == 6
    @test can_arrange([19, 18, 1]) == 3
    @test can_arrange([4, 3, 2, 0, 5, 16, 1]) == 7
    @test can_arrange([19, 4, 10, 8, 9, 1]) == 6
    @test can_arrange([19, 5]) == 2
    @test can_arrange([3, 0, 2, 1]) == 4
    @test can_arrange([4, 13, 12]) == 3
    @test can_arrange([20, 6, 3, 2, 1]) == 5
    @test can_arrange([1, 20, 3, 5, 4, 0, 2, 6, 8, 7, 10]) == 10
    @test can_arrange([6, 4, 3, 2, 1]) == 5
    @test can_arrange([5, 2, 6, 21, 8]) == 5
    @test can_arrange([1, 2, 10, 9, 8, 6, 5, 3]) == 8
    @test can_arrange([1, 3, 2, 5, 14, 4, 0, 16, 10]) == 9
    @test can_arrange([19, 4, 10, 7, 9]) == 4
    @test can_arrange([1, 3, 2, 5]) == 3
    @test can_arrange([3, 6, 9, 12, 0, -1, 21, 19, 16, 13, 10, 7, 4, 1, 2, 5, 8, 11, 14, 17, 20]) == 14
    @test can_arrange([5, 3, 2, 1, 6, 7, 8, 9, 10]) == 4
    @test can_arrange([2, 0]) == 2
    @test can_arrange([4, 2, 10, 9, 8, 6, 5, 3]) == 8
    @test can_arrange([3, 5, 0, 16, 15, 7]) == 6
    @test can_arrange([19, 4, 13, 2, 8]) == 4
    @test can_arrange([4, 3, 2, 1, 6, 15, 9, 10]) == 7
    @test can_arrange([5, 4, 3, 2, 1, 6, 7, 17, 10]) == 9
    @test can_arrange([15, 2, 5, 19]) == 2
    @test can_arrange([18, 9, 6, 15, 16, 2, 3, 5, 19]) == 6
    @test can_arrange([1, 3, 2, 6, 8]) == 3
    @test can_arrange([19, 12, 1]) == 3
    @test can_arrange([-1, 12, 3]) == 3
    @test can_arrange([6, 21, 1]) == 3
    @test can_arrange([6]) == -1
    @test can_arrange([15, 16, 2, 3, 4, 19]) == 3
    @test can_arrange([9, 1]) == 2
    @test can_arrange([1, 10, 2, 9, 3, 18, 8, 4, 5, 6]) == 8
    @test can_arrange([4, 18, 20, 2, 1]) == 5
    @test can_arrange([1, 4, 2]) == 3
    @test can_arrange([1, 5, 2, 6, 8]) == 3
    @test can_arrange([18, 5]) == 2
    @test can_arrange([20, 15]) == 2
    @test can_arrange([4, 10, 11, 12]) == -1
    @test can_arrange([3, 2, 12, 8, 7, 10]) == 5
    @test can_arrange([20]) == -1
    @test can_arrange([8]) == -1
    @test can_arrange([10, 3, 16, 19, 1]) == 5
    @test can_arrange([13, 1]) == 2
    @test can_arrange([19, 4, 3, 20, 1]) == 5
    @test can_arrange([19, 4, 6, 2, 1]) == 5
    @test can_arrange([0, 5, 4]) == 3
    @test can_arrange([8, 3]) == 2
    @test can_arrange([17, 3, 0, 2]) == 3
    @test can_arrange([20, 5, 1, 2]) == 3
    @test can_arrange([10, 9, 8, 5, 2, 3, 4, 7, 6]) == 9
    @test can_arrange([7, 4, 15, 9]) == 4
    @test can_arrange([19, 4, 10, 8, 9, 16, 1]) == 7
    @test can_arrange([19, 4, 13, 3, 2, 1]) == 6
    @test can_arrange([10, 9, 1, 2, 3, 4, 7, 6, 5]) == 9
    @test can_arrange([4, 3, 5, 1]) == 4
    @test can_arrange([0, 20, 1, 5, 4, 6, 7, 9, 8, 10]) == 9
    @test can_arrange([1, 5, 4, 2, 6, 7, 10]) == 4
    @test can_arrange([19, 4, 3, 8, 9, 1]) == 6
    @test can_arrange([1, 5]) == -1
    @test can_arrange([13, 9, 0, 8, 4, 18, 6, 5, 2, 1]) == 10
    @test can_arrange([4, 2, 1, 6, 15, 9, 10]) == 6
    @test can_arrange([4, 9, 19, 2]) == 4
    @test can_arrange([4, 3, 2, 5, 21]) == 3
    @test can_arrange([10, 3, 6, 19, 1]) == 5
    @test can_arrange([4, 17, 18, 20, 2, 1]) == 6
    @test can_arrange([20, 3, 12, 1]) == 4
    @test can_arrange([5, 1]) == 2
    @test can_arrange([2, 11, 3]) == 3
    @test can_arrange([1, 0, 3]) == 2
    @test can_arrange([10, 9, 21, 17, 6, 15, 2, 1]) == 8
    @test can_arrange([19, 4, 6, 2]) == 4
    @test can_arrange([4, 1, 3, 5]) == 2
    @test can_arrange([2, 3, 1]) == 3
    @test can_arrange([0, 1, 3, 2, 5, 4, 6, 15, 7, 9, 8, 10]) == 11
    @test can_arrange([4, 2, 13, 6, 15, 9, 10]) == 6
    @test can_arrange([4, 3, 2, 6]) == 3
    @test can_arrange([1, 3, 0, 5, 4, 2, 6, 8, 7, 10]) == 9
    @test can_arrange([10, 2]) == 2
    @test can_arrange([2, 21, 5]) == 3
    @test can_arrange([4, 3, 0, 5, 16, 1]) == 6
    @test can_arrange([1, 4, 20, 2, 6, 8, 10]) == 4
    @test can_arrange([10, 8, 17, 6, 2, 18]) == 5
    @test can_arrange([1, 10, 9, 3, 8, 4, 13, 5, 6]) == 8
    @test can_arrange([5, 2, 1, 4, 21, 8]) == 6
    @test can_arrange([1, 3, 5, 4, 6, 7, 8, 10]) == 4
    @test can_arrange([6, 3]) == 2
    @test can_arrange([1, 5, 2, 6]) == 3
    @test can_arrange([1, 4, 15, 18, 2, 6, 8, 10]) == 5
    @test can_arrange([9, 2]) == 2
    @test can_arrange([8, 4, 3, 15, 9]) == 5
    @test can_arrange([18, 9, 6, 15, 20, 16, 2, 3, 5, 19]) == 7
    @test can_arrange([19, 21, 17, 3, 1]) == 5
    @test can_arrange([-1, 15]) == -1
    @test can_arrange([4, 2, 10, 9, 8, 6, 13, 5, 3]) == 9
    @test can_arrange([4, 3, 11, 2, 5, 21]) == 4
    @test can_arrange([1, 3, 2, 5, 4, 7, 6, 9, 10]) == 7
    @test can_arrange([6, 16, 1]) == 3
    @test can_arrange([9, 8, 5, 2, 3, 4, 7, 6]) == 8
    @test can_arrange([20, 1, 2, 3, 10, 9, 8, 7, 17, 5]) == 10
    @test can_arrange([5, 10, 7]) == 3
    @test can_arrange([19, 5, 17, 7, 2, 1]) == 6
    @test can_arrange([19, 4, 18, 3, 1]) == 5
    @test can_arrange([8, 4, 13, 9]) == 4
    @test can_arrange([11, 4, 10, 9, 12]) == 4
    @test can_arrange([19, 4, 12, 15, 2]) == 5
    @test can_arrange([4, 2, 3, 5, 0]) == 5
    @test can_arrange([1, 15, 3]) == 3
    @test can_arrange([1, 3, 4, 2, 6, 8, 7, 10]) == 7
    @test can_arrange([18, 9, 4, 6, 15, 20, 16, 2, 3, 5, 19]) == 8
    @test can_arrange([10, 3, 12, 6, 19, 1]) == 6
    @test can_arrange([3, 2, 5, 4, 7, 8, 10]) == 4
    @test can_arrange([3, 2, 5, 4, 14, 7, 8, 10]) == 6
    @test can_arrange([1, 13, 4, 5, 18, 2, 6, 8, 10]) == 6
    @test can_arrange([15, 1, 12, 3, 19, 4, 2, 8, 7, 10]) == 9
    @test can_arrange([18, 4, 5]) == 2
    @test can_arrange([1, 3, 2, 5, 13, 4, 7, 6, 9, 8, 10]) == 10
    @test can_arrange([4, 1, 3, 11, 2, 5, 21]) == 5
    @test can_arrange([4, 19, 2, 5, 1]) == 5
    @test can_arrange([19, 4, 13, 3, 2]) == 5
    @test can_arrange([4, 9, 19, 3]) == 4
    @test can_arrange([1, 5, 2, 6, 20]) == 3
    @test can_arrange([5, 3, 2, 1]) == 4
    @test can_arrange([19, 4, 10, 8, 9, 18, 16, 1]) == 8
    @test can_arrange([4, 18, 2, 1]) == 4
    @test can_arrange([1, 4, 15, 18, 11, 2, 6, 8, 10]) == 6
    @test can_arrange([8, 4, 15, 2]) == 4
    @test can_arrange([20, 19, 4, 3, 1, 0]) == 6
    @test can_arrange([4, 2, 13, 12, 15, 9, 10]) == 6
    @test can_arrange([1, 5, 6, 8, 14, 10]) == 6
    @test can_arrange([16, 4, 12, 2]) == 4
    @test can_arrange([5, 15, 17, 2]) == 4
    @test can_arrange([1, 4, 15, 18, 11, 2, 8, 10]) == 6
    @test can_arrange([19, 4, 13, 2]) == 4
    @test can_arrange([1, 3, 4, 0, 2, 8, 7, 10]) == 7
    @test can_arrange([3, 2, 5, 7, 9, 8, 10]) == 6
    @test can_arrange([19, 4, 10, 8, 9, 16]) == 4
    @test can_arrange([1, 20, 5, 2, 3, 21, 4, 8, 10]) == 7
    @test can_arrange([6, 20, 1]) == 3
    @test can_arrange([8, 10, 12]) == -1
    @test can_arrange([3, 2, 4, 5, 21]) == 2
    @test can_arrange([1, 20, 5, 16, 3, 4, 8, 10]) == 5
    @test can_arrange([11, 4, 17, 18, 20, 2, 1]) == 7
    @test can_arrange([11, 2, 4]) == 2
    @test can_arrange([4, 6]) == -1
    @test can_arrange([13, 4, 10, 12]) == 2
    @test can_arrange([18, 19, 3, 13, 2, 1]) == 6
    @test can_arrange([8, 4, 2]) == 3
    @test can_arrange([10, 8, 17, 7, 9, 6, 2, 18, 1]) == 9
    @test can_arrange([20, 1, 2, 3, 10, 9, 8, 6, 5]) == 9
    @test can_arrange([0, 1, 5, 6, 4, 8, 14, 10]) == 8
    @test can_arrange([4, 2, 3, 1]) == 4
    @test can_arrange([3, 5, 0, 16, 7, 10]) == 5
    @test can_arrange([14, 5, 2, 19, 1]) == 5
    @test can_arrange([1, 3, 9, 6, 8, 10]) == 4
    @test can_arrange([5, 2, 6, 20]) == 2
    @test can_arrange([12, 2, 3]) == 2
    @test can_arrange([8, 4, -1, 3, 15, 9, 2]) == 7
    @test can_arrange([1, 0, 2, 5, 4, 7, 6, 9, 8]) == 9
    @test can_arrange([1, 5, 0, 16, 8, 7, 12, 10]) == 8
    @test can_arrange([13, 10, 12]) == 2
    @test can_arrange([2, 4]) == -1
    @test can_arrange([15, 1, 12, -1, 20, 5, 4, 2, 8, 7, 10]) == 10
    @test can_arrange([20, 2, 3, 10, 9, 8, 7, 17, 5]) == 9
    @test can_arrange([4, 6, 3, 2, 5, 1]) == 6
    @test can_arrange([10, 2, 12, 6, 1]) == 5
    @test can_arrange([3, 10, 2, 7]) == 3
    @test can_arrange([5, 9, 19, 3]) == 4
    @test can_arrange([1, 5, 4, 2]) == 4
    @test can_arrange([3, 5, 2, 16, 8, 7, 10]) == 6
    @test can_arrange([4, 20, 1]) == 3
    @test can_arrange([19, 17, 4, 3, 21, 2]) == 6
    @test can_arrange([3, 5, 18, 0, 16, 15, 8, 7]) == 8
    @test can_arrange([4, 6, 2, 5, 1]) == 5
    @test can_arrange([13, 4, 2, 1]) == 4
    @test can_arrange([9, 6]) == 2
    @test can_arrange([20, 1, 2, 4, 10, 9, 8, 6, 5]) == 9
    @test can_arrange([1, 3, 5, 16, 4, 2, 8, 7, 10]) == 8
    @test can_arrange([8, 4, 1]) == 3
    @test can_arrange([4, 3, 1, 5]) == 3
    @test can_arrange([8, 7, 4, 15, 9]) == 5
    @test can_arrange([20, 4, 6, 3]) == 4
    @test can_arrange([10, 8, 5, 2, 3, 4, 7, 6]) == 8
    @test can_arrange([1, 5, 4, 2, 6, 8, 10]) == 4
    @test can_arrange([10, 21, 17, 15, 2]) == 5
    @test can_arrange([8, 4, 15, 11, 9]) == 5
    @test can_arrange([19, 13, 3, 2, 1]) == 5
    @test can_arrange([0, 5]) == -1
    @test can_arrange([13, 11, 4, 10, 12]) == 3
    @test can_arrange([20, 5, 1]) == 3
    @test can_arrange([5, 4, 21, 9]) == 4
    @test can_arrange([3, 2, 4, 7, 9, 8, 10]) == 6
    @test can_arrange([1, 3, 5, 4, 0, 6, 8, 7, 10]) == 8
    @test can_arrange([4, 5, 6, 1]) == 4
    @test can_arrange([16, 15]) == 2
    @test can_arrange([0, 2, 3, 10, 9, 8, 6, 1, 5]) == 8
    @test can_arrange([13, 12]) == 2
    @test can_arrange([15, 2, 3, 10, 9, 6, 5]) == 7
    @test can_arrange([13]) == -1
    @test can_arrange([4, 17, 18, 20, 1]) == 5
    @test can_arrange([10, 16, 17, 7, 5, 3, 18, 1]) == 8
    @test can_arrange([3, 6, 9, 12, 15, -1, 21, 19, 16, 13, 10, 7, 4, 1, 2, 5, 8, 11, 14, 17, 20]) == 14
    @test can_arrange([16, 9, 3, 1]) == 4
    @test can_arrange([20, 4, 17, 2, 1]) == 5
    @test can_arrange([19, 4, 3, 12, 2]) == 5
    @test can_arrange([13, 11, 4, 10, 14]) == 3
    @test can_arrange([20, 3, 0, 4, 2, 1]) == 6
    @test can_arrange([21, 1]) == 2
    @test can_arrange([19, 4, 3, 1]) == 4
    @test can_arrange([16, 4, 12, 3]) == 4
    @test can_arrange([19, 4, 10, 8, 9, 11, 1]) == 7
    @test can_arrange([4, 18, 20, 5, 1]) == 5
    @test can_arrange([1, 5, 4, 2, 6, 8]) == 4
    @test can_arrange([1, 3, 6, 8, 7, 10]) == 5
    @test can_arrange([3, 0, 6, 8, 14, 10]) == 6
    @test can_arrange([19, 6, 5]) == 3
    @test can_arrange([1, 4, 16, 15, 18, 11, 6, 8, 10]) == 7
    @test can_arrange([8, 15]) == -1
    @test can_arrange([15, 2, 3, 9, 6, 5]) == 6
    @test can_arrange([4, 8, 19, 16, 3]) == 5
    @test can_arrange([4, 18, 20, 5, 2]) == 5
    @test can_arrange([19, 4, 10, 8, 11, 1]) == 6
    @test can_arrange([12]) == -1
    @test can_arrange([9, 7, 8, 20, 1]) == 5
    @test can_arrange([16, 1]) == 2
    @test can_arrange([1, 10, 2, 9, 3, 18, 8, 4, 13, 6]) == 10
    @test can_arrange([16, 21, 1]) == 3
    @test can_arrange([19, 20, 13, 4, 10, 8, 9, 16]) == 6
    @test can_arrange([1, 5, 0, 16, 7, 10]) == 5
    @test can_arrange([15, 2, 3, 9, 8, 6, 5]) == 7
    @test can_arrange([7, 4, 3, 15, 9]) == 5
    @test can_arrange([2, 12]) == -1
    @test can_arrange([4, 11, 7]) == 3
    @test can_arrange([5, 4, 17, 2, 1]) == 5
    @test can_arrange([6, 2, 5, 1]) == 4
    @test can_arrange([8, 4, 10, 9, 2]) == 5
    @test can_arrange([6, 12, 2, 3]) == 3
    @test can_arrange([4, 10, 20, 12]) == 4
    @test can_arrange([3, 2, 12, 8, 7, 14, 10]) == 7
    @test can_arrange([1, 3, 14, 5, 4, 0, 17, 15, 16, 10]) == 10
    @test can_arrange([4, 1, 16, 5]) == 4
    @test can_arrange([4, 10, 14, 12]) == 4
    @test can_arrange([1, 0, 5, 4, 10, 7, 6, 9, 8]) == 9
    @test can_arrange([1, 4, 15, 11, 2, 8, 10]) == 5
    @test can_arrange([19, 17, 4, 3, 21, 20, 2]) == 7
    @test can_arrange([10, 11]) == -1
    @test can_arrange([1, 5, 4, 6, 8, 7, 10]) == 6
    @test can_arrange([1, 4, 11, 2, 5, 8]) == 4
    @test can_arrange([0, 7, 1, 5, 6, 4, 8, 14, 10]) == 9
    @test can_arrange([19, 4, 10, 8, 11, -1]) == 6
    @test can_arrange([5, 4, 15, 17, 2]) == 5
    @test can_arrange([16, 9, 3, 2, 1]) == 5
    @test can_arrange([20, 19, 4, 12, 2, 1]) == 6
    @test can_arrange([4, 14, 2]) == 3
    @test can_arrange([7, 15]) == -1
    @test can_arrange([1, 5, 6, 8]) == -1
    @test can_arrange([1, 3, 2, 0, 13, 4, 7, 6, 9, 8, 10]) == 10
    @test can_arrange([15, 16, 2, 7, 3, 5, 19]) == 5
    @test can_arrange([17, 5, 9, 19, 3]) == 5
    @test can_arrange([10, 20, 2, 7]) == 3
    @test can_arrange([18, 3]) == 2
    @test can_arrange([16, 0, 6, 8, 14]) == 2
    @test can_arrange([1, 3, 2, 8]) == 3
    @test can_arrange([1, 3, 2, 5, 14, 4, 16, 10]) == 8
    @test can_arrange([15, 8, 2, 7, 3, 10]) == 5
    @test can_arrange([4, 9, 3, 11, 2, 5, 21]) == 5
    @test can_arrange([1, 10, 2, 9, 3, 18, 8, 4, 6]) == 8
    @test can_arrange([1, 13, 4, 5, 18, 2, 6, 8, 11]) == 6
    @test can_arrange([1, 5, 0, 17, 8, 10]) == 5
    @test can_arrange([8, 20, 19, 4, 3, 2, 1]) == 7
    @test can_arrange([5, 4, 3, 1, 6, 8, 9, 10]) == 4
    @test can_arrange([4, 0, 3, 12, 2, 19, 1]) == 7
    @test can_arrange([1, 3, 4, 2, 6, 8, 7, 9]) == 7
    @test can_arrange([5, 10, 14, 12]) == 4
    @test can_arrange([11, 1, 4]) == 2
    @test can_arrange([1, 20, 6, 2, 21, 8, 10]) == 6
    @test can_arrange([4, 13]) == -1
    @test can_arrange([3, -1, 0, 2, -2]) == 5
    @test can_arrange([1, 2, 3, 4, 5, 6]) == -1
    @test can_arrange([6, 5, 4, 3, 2, 1]) == 6
    @test can_arrange([1, 5, 2, 4, 3]) == 5
    @test can_arrange([4, 2, 1, 3, 11, 7]) == 6
    @test can_arrange([6, 1, 3, 11, 7]) == 5
    @test can_arrange([3, 6, 9, 12, 15, 18, 21, 19, 13, 10, 7, 4, 1, 2, 5, 8, 11, 14, 17, 20]) == 13
    @test can_arrange([1, 2, 3, 10, 9, 8, 7, 5]) == 8
    @test can_arrange([1, 3, 7]) == -1
    @test can_arrange([2, 1, 3, 11, 7]) == 5
    @test can_arrange([0, 2, 3, 10, 9, 8, 6, 5]) == 8
    @test can_arrange([1, 2, 3, 18, 9, 8, 7, 5]) == 8
    @test can_arrange([1, 10, 2, 9, 3, 14, 4, 7, 5, 6]) == 9
    @test can_arrange([1, 2, 4, 18, 9, 8, 7, 5]) == 8
    @test can_arrange([0, 1, 3, 7]) == -1
    @test can_arrange([2, 1, 3, 7]) == 2
    @test can_arrange([10, 9, 8, 1, 2, 4, 7, 6, 5]) == 9
    @test can_arrange([0, 2, 3, 21, 9, 8, 6]) == 7
    @test can_arrange([0, 2, 4, 10, 9, 8, 6, 5]) == 8
    @test can_arrange([1, 10, 2, 9, 14, 7, 5, 6]) == 7
    @test can_arrange([19, 2, 1, 3, 11, 7]) == 6
    @test can_arrange([1, 2, 18, 9, 8, 7]) == 6
    @test can_arrange([2, 3, 11, 7]) == 4
    @test can_arrange([2, 3, 10, 9, 8, 7, 6, 5]) == 8
    @test can_arrange([1, 2, 3, 10, 9, 7, 5]) == 7
    @test can_arrange([18, 1, 3]) == 2
    @test can_arrange([2, 3, 10, 9, 7, 5]) == 6
    @test can_arrange([1, 2, 3, 18, 9, 8, 7]) == 7
    @test can_arrange([0, 2, 4, 10, 17, 9, 8, 6, 5]) == 9
    @test can_arrange([5, 4, 3, 2, 12]) == 4
    @test can_arrange([18, 1, 20, 3]) == 4
    @test can_arrange([1, 2, 18, 9, 8, 7, 5]) == 7
    @test can_arrange([2, 3, 10, 9, 8, 7, 6]) == 7
    @test can_arrange([1, 2, 18, 10, 7, 5]) == 6
    @test can_arrange([16, 2, 3, 10, 9, 8, 7, 6, 5]) == 9
    @test can_arrange([16, 2, 3, 10, 9, 8, 6]) == 7
    @test can_arrange([5, 14, 3, 2, 12]) == 4
    @test can_arrange([1, 14, 3, 18, 9, 8, 7, 5]) == 8
    @test can_arrange([13, 1, 2, 3, 10, 9, 8, 7, 5]) == 9
    @test can_arrange([4, 2, 1, 19, 5, 6, 7]) == 5
    @test can_arrange([4, 2, 1, 6, 7, 8, 9, 10]) == 3
    @test can_arrange([5, 4, 3, 2, 10, 12]) == 4
    @test can_arrange([4, 2, 3, 1, 19, 5, 6, 7]) == 6
    @test can_arrange([2, 10, 9, 7, 5]) == 5
    @test can_arrange([1, 4, 7]) == -1
    @test can_arrange([4, 3, 2, 1, 6, 8, 9, 10, 7]) == 9
    @test can_arrange([1, 2, 18, 9, 8, 7, 11]) == 6
    @test can_arrange([14, 4, 7]) == 2
    @test can_arrange([1, 3, 10, 9, 8, 7, 5]) == 7
    @test can_arrange([2, 1, 3, 10, 7]) == 5
    @test can_arrange([10, 9, 8, 2, 4, 7, 6, 5]) == 8
    @test can_arrange([1, 3, 0, 10, 9, 8, 6, 15]) == 7
    @test can_arrange([3, 6, 9, 12, 15, 18, 21, 19, 13, 10, 7, 4, 1, 2, 5, 8, 14, 17, 20]) == 13
    @test can_arrange([2, 3, 10, 9, 7, 6]) == 6
    @test can_arrange([18, 1, 21, 20, 3]) == 5
    @test can_arrange([1, 2, 18, 10, 7, 4]) == 6
    @test can_arrange([2, 1, 6, 7, 9, 10]) == 2
    @test can_arrange([11, 2, 18, 10, 7, 4]) == 6
    @test can_arrange([1, 2, 5, 4, 7, 6, 9, 8, 10]) == 8
    @test can_arrange([18, 1, 3, 2]) == 4
    @test can_arrange([2, 3, 10, 9, 8, 6, 5]) == 7
    @test can_arrange([3, 5, 4, 2, 6, 8, 7, 10]) == 7
    @test can_arrange([5, 14, 3, 2, 6, 12]) == 4
    @test can_arrange([2, 1, 3, 11]) == 2
    @test can_arrange([4, 2, 1, 5, 7, 8, 9, 10]) == 3
    @test can_arrange([4, 2, 1, 6, 7, 8, 9, 20, 10]) == 9
    @test can_arrange([4, 2, 1, 5, 7, 9, 10]) == 3
    @test can_arrange([2, 3, 10, 9, 14, 8, 6, 5]) == 8
    @test can_arrange([4, 2, 1, 6, 7, 11, 9]) == 7
    @test can_arrange([1, 2, 4, 18, 9, 3, 13, 7, 5]) == 9
    @test can_arrange([3, 2, 5, 4, 7, 6, 9, 8, 10]) == 8
    @test can_arrange([5, 14, 3, 12]) == 3
    @test can_arrange([19, 2, 0, 3, 11, 7]) == 6
    @test can_arrange([2, 1, 4, 7]) == 2
    @test can_arrange([2, 17, 3, 10, 9, 8, 6, 5]) == 8
    @test can_arrange([2, 17, 11, 3, 10, 9, 8, 6, 5]) == 9
    @test can_arrange([11, 1, 18, 10, 7, 4]) == 6
    @test can_arrange([4, 2, 1, 19, 5, 14, 6, 7]) == 7
    @test can_arrange([4, 3, 2, 1, 6, 7, 8, 11, 10]) == 9
    @test can_arrange([1, 3, 10, 9, 8, 7]) == 6
    @test can_arrange([1, 7]) == -1
    @test can_arrange([4, 2, 19, 5, 6, 7]) == 4
    @test can_arrange([6, 1, 3, 11, 13]) == 2
    @test can_arrange([2, 1, 5, 7, 9, 10]) == 2
    @test can_arrange([16, 2, 3, 11, 7]) == 5
    @test can_arrange([2, 17, 11, 3, 10, 9, 8, 6]) == 8
    @test can_arrange([4, 2, 1, 17, 19, 5, 14, 6, 7]) == 8
    @test can_arrange([1, 2, 8, 3, 10, 9, 7, 5]) == 8
    @test can_arrange([6, 1, 13]) == 2
    @test can_arrange([2, 3, 10, 9, 7]) == 5
    @test can_arrange([11, 3, 10, 9, 7, 5]) == 6
    @test can_arrange([3, 4, 7]) == -1
    @test can_arrange([1, 2, 18, 9, 8, 19]) == 5
    @test can_arrange([12, 1, 10, 2, 9, 3, 14, 4, 7, 5, 6]) == 10
    @test can_arrange([4, 2, 1, 5, 7, 8, 9]) == 3
    @test can_arrange([4, 2, 5, 6, 7]) == 2
    @test can_arrange([2, 4, 7]) == -1
    @test can_arrange([2, 1, 6, 7, 8, 9, 10]) == 2
    @test can_arrange([2, 11, 7]) == 3
    @test can_arrange([1, 10, 2, 9, 3, 8, 7, 5, 6]) == 8
    @test can_arrange([2, 10, 9, 7]) == 4
    @test can_arrange([13, 1, 2, 3, 6, 10, 9, 8, 7, 5]) == 10
    @test can_arrange([2, 3, 10, 5, 8, 7, 6]) == 7
    @test can_arrange([1, 3, 2]) == 3
    @test can_arrange([11, 5, 4, 3, 2, 10, 12]) == 5
    @test can_arrange([0, 2, 4, 10, 17, 9, 8, 5]) == 8
    @test can_arrange([16, 2, 10, 9, 8, 7, 6, 5]) == 8
    @test can_arrange([11, 3, 10, 9, 8, 7, 5]) == 7
    @test can_arrange([1, 4, 3, 7]) == 3
    @test can_arrange([2, 1, 3, 11, 18]) == 2
    @test can_arrange([4, 2, 1, 19, 5, 14, 18, 7]) == 8
    @test can_arrange([2, 17, 4, 7]) == 3
    @test can_arrange([2, 1, 5, 7, 10]) == 2
    @test can_arrange([4, 3, 2, 1, 6, 7, 8, 9, 20, 10]) == 10
    @test can_arrange([14, 1, 3, 7]) == 2
    @test can_arrange([4, 2, 1, 12, 6, 7, 11, 9]) == 8
    @test can_arrange([6, 1, 3, 12, 11, 13]) == 5
    @test can_arrange([2, 18, 10, 6, 4]) == 5
    @test can_arrange([6, 4, 3, 2, 12]) == 4
    @test can_arrange([0, 2, 10, 9, 8, 6, 5]) == 7
    @test can_arrange([4, 2, 1, 5, 7, 9, 10, 3]) == 8
    @test can_arrange([2, 20, 10, 9, 7]) == 5
    @test can_arrange([1, 2, 4, 20, 18, 9, 8, 7, 5]) == 9
    @test can_arrange([13, 1, 2, 3, 10, 9, 8, 7]) == 8
    @test can_arrange([4, 2, 1, 21, 6, 7, 8, 9, 10]) == 5
    @test can_arrange([2, 17, 11, 3, 10, 9, 8, 13, 6, 5]) == 10
    @test can_arrange([18, 1, 21, 3]) == 4
    @test can_arrange([2, 10, 9, 7, 3, 5]) == 5
    @test can_arrange([4, 2, 1, 6, 8, 9, 10]) == 3
    @test can_arrange([4, 3, 2, 1, 6, 7, 8, 9]) == 4
    @test can_arrange([4, 2, 1, 6, 8, 19, 9, 10]) == 7
    @test can_arrange([3, 5, 4, 2, 6, 8, 20, 10]) == 8
    @test can_arrange([4, 17, 1, 5, 7, 8, 9, 10]) == 3
    @test can_arrange([0, 1, 2, 3, 7]) == -1
    @test can_arrange([18, 1, 20, 15]) == 4
    @test can_arrange([4, 2, 1, 5, 7, 14, 8, 9, 10]) == 7
    @test can_arrange([2, 1, 5, 3, 10, 7]) == 6
    @test can_arrange([2, 7]) == -1
    @test can_arrange([18, 1, 14, 3]) == 4
    @test can_arrange([1, 3, 0]) == 3
    @test can_arrange([1, 0, 2, 10, 9, 8, 6, 5]) == 8
    @test can_arrange([10, 0, 7]) == 2
    @test can_arrange([1, 2, 9, 14, 7, 5, 6]) == 6
    @test can_arrange([2, 20, 10, 9, 8, 7, 6]) == 7
    @test can_arrange([1, 5, 4, 2, 6, 12, 7, 10]) == 7
    @test can_arrange([1, 2, 18, 9, 3, 8, 7, 5]) == 8
    @test can_arrange([3, 10, 8, 9, 6, 5]) == 6
    @test can_arrange([4, 7]) == -1
    @test can_arrange([4, 14]) == -1
    @test can_arrange([2, 4, 10, 9, 7, 5]) == 6
    @test can_arrange([2, 0, 5, 3, 10, 7]) == 6
    @test can_arrange([1, 2, 3, 18, 8, 7]) == 6
    @test can_arrange([1, 18, 9, 8, 7]) == 5
    @test can_arrange([6, 20, 10, 9, 7]) == 5
    @test can_arrange([1, 2, 9, 14, 7, 5, 10, 6]) == 8
    @test can_arrange([2, 1, 3, 13]) == 2
    @test can_arrange([2, 10, 9, 7, 6, 5]) == 6
    @test can_arrange([2, 1, 3, 10, 11, 18]) == 2
    @test can_arrange([9, 14, 4, 7]) == 3
    @test can_arrange([1, 2, 17, 3, 18, 9, 8, 7, 5]) == 9
    @test can_arrange([18, 3, 2]) == 3
    @test can_arrange([0, 2, 4, 10, 17, 9, 6, 5]) == 8
    @test can_arrange([3, 2, 18, 10, 6, 4]) == 6
    @test can_arrange([18, 1, 15]) == 2
    @test can_arrange([0, 14, 3, 18, 9, 8, 7, 5]) == 8
    @test can_arrange([4, 2, 1, 6, 8, 13, 19, 9, 10]) == 8
    @test can_arrange([1, 14, 17, 4, 7]) == 4
    @test can_arrange([1, 15, 2, 9, 14, 7, 5, 6]) == 7
    @test can_arrange([13, 11, 3, 6, 10, 9, 8, 7, 5]) == 9
    @test can_arrange([4, 16, 2, 1, 6, 8, 13, 19, 9, 10]) == 9
    @test can_arrange([1, 11, 3, 2]) == 4
    @test can_arrange([3, 1, 6, 8, 9, 10]) == 2
    @test can_arrange([1, 2, 9, 8, 19]) == 4
    @test can_arrange([17, 18, 1, 21, 3]) == 5
    @test can_arrange([13, 1, 2, 3, 10, 9, 7, 5]) == 8
    @test can_arrange([3, 5, 2, 6, 8, 20, 10]) == 7
    @test can_arrange([2, 5, 3, 11, 7]) == 5
    @test can_arrange([2, 1, 6, 7, 8, 9]) == 2
    @test can_arrange([18, 10, 6, 4]) == 4
    @test can_arrange([2, 1, 3, 9]) == 2
    @test can_arrange([0, 2, 4, 10, 17, 9, 5]) == 7
    @test can_arrange([6, 4, 17, 2, 12]) == 4
    @test can_arrange([21, 4, 7]) == 2
    @test can_arrange([18, 1, 6]) == 2
    @test can_arrange([2, 17, 3, 10, 9, 8, 6]) == 7
    @test can_arrange([0, 2, 10, 9, 8, 6]) == 6
    @test can_arrange([2, 1, 5, 18, 10, 7]) == 6
    @test can_arrange([4, 2, 1, 12, 6, 7, 8, 9, 10]) == 5
    @test can_arrange([0, 21, 2, 4, 10, 17, 9, 6, 5]) == 9
    @test can_arrange([0, 2, 10, 16, 17, 9, 8, 5]) == 8
    @test can_arrange([2, 1, 9]) == 2
    @test can_arrange([1, 2, 9, 16, 7, 5, 6]) == 6
    @test can_arrange([2, 1, 5, 0, 7, 10]) == 4
    @test can_arrange([4, 2, 1, 6, 7, 8, 11, 9, 20, 10]) == 10
    @test can_arrange([1, 2, 9, 19]) == -1
    @test can_arrange([0, 10, 2, 9, 3, 14, 4, 7, 5, 6]) == 9
    @test can_arrange([5, 7]) == -1
    @test can_arrange([1, 6]) == -1
    @test can_arrange([4, 2, 1, 19, 5, 14, 18, 12, 7]) == 9
    @test can_arrange([21, 9, 5, 7]) == 3
    @test can_arrange([6, 14, 1, 3, 7]) == 3
    @test can_arrange([1, 2, 3, 9, 8, 6, 5]) == 7
    @test can_arrange([3, 5, 2, 6, 8, 20]) == 3
    @test can_arrange([2, 1, 5, 3, 10, 11, 4, 18]) == 7
    @test can_arrange([1, 5, 7]) == -1
    @test can_arrange([2, 1, 5, 13, 10]) == 5
    @test can_arrange([18, 2, 1, 21, 3]) == 5
    @test can_arrange([1, 19, 2, 5, 4, 7, 9, 8, 10]) == 8
    @test can_arrange([4, 2, 3, 1, 18, 5, 6, 7]) == 6
    @test can_arrange([1, 2, 18, 10, 6, 5]) == 6
    @test can_arrange([17, 1, 2, 18, 9, 8, 7]) == 7
    @test can_arrange([0, 2, 11, 10, 17, 9, 8, 6, 5]) == 9
    @test can_arrange([18, 10, 9, 8, 1, 2, 3, 4, 7, 6, 5]) == 11
    @test can_arrange([4, 2, 1, 5, 7, 14, 9, 10]) == 7
    @test can_arrange([1, 2, 3, 9]) == -1
    @test can_arrange([0, 2, 11, 17, 9, 8, 6, 5]) == 8
    @test can_arrange([15, 10, 0]) == 3
    @test can_arrange([4, 2, 1, 6, 8, 9]) == 3
    @test can_arrange([4, 2, 1, 19, 6, 14, 18, 7]) == 8
    @test can_arrange([13, 1, 2, 3, 6, 10, 9, 8, 7, 11, 5]) == 11
    @test can_arrange([2, 0, 3, 10, 7]) == 5
    @test can_arrange([16, 2, 3, 10, 9, 7, 6, 5]) == 8
    @test can_arrange([9, 3, 7]) == 2
    @test can_arrange([4, 2, 0, 6, 8, 9]) == 3
    @test can_arrange([12, 1, 10, 2, 9, 14, 4, 7, 5, 6]) == 9
    @test can_arrange([0, 2, 3, 4, 10, 17, 9, 8, 5]) == 9
    @test can_arrange([1, 2, 20, 3, 9, 8, 6]) == 7
    @test can_arrange([1, 2, 8, 3, 10, 9, 14, 5]) == 8
    @test can_arrange([4, 2, 19, 5, 6]) == 4
    @test can_arrange([20, 14, 4, 7]) == 3
    @test can_arrange([2, 9, 14, 7, 5, 10, 6]) == 7
    @test can_arrange([2, 3, 10, 9, 8, 7, 5]) == 7
    @test can_arrange([1, 10, 8, 9, 7]) == 5
    @test can_arrange([2, 8, 3, 7]) == 3
    @test can_arrange([1, 13]) == -1
    @test can_arrange([6, 14, 1, 7]) == 3
    @test can_arrange([21, 1, 5, 7]) == 2
    @test can_arrange([3, 18, 10, 6, 4]) == 5
    @test can_arrange([4, 2, 1, 5, 7, 15, 9, 10]) == 7
    @test can_arrange([2, 12, 3, 11, 10, 9, 8, 7, 5]) == 9
    @test can_arrange([2, 3, 10, 9, 1, 7, 5]) == 7
    @test can_arrange([17, 1, 2, 18, 21, 8, 7]) == 7
    @test can_arrange([10, 1, 7]) == 2
    @test can_arrange([18, 20, 14]) == 3
    @test can_arrange([14, 3, 4, 7]) == 2
    @test can_arrange([11, 2, 10, 7, 4]) == 5
    @test can_arrange([4, 1, 3, 5, 6, 7]) == 2
    @test can_arrange([2, 6, 4, 7]) == 3
    @test can_arrange([17, 2, 18, 21, 8, 7]) == 6
    @test can_arrange([0, 1, 6]) == -1
    @test can_arrange([18, 1, 2, 3, 9, 8, 6, 5]) == 8
    @test can_arrange([4, 1, 3, 18, 5, 6, 7]) == 5
    @test can_arrange([1, 10, 2, 9, 14, 7, 4, 6]) == 7
    @test can_arrange([2, 20, 10, 9, 8, 7, 5]) == 7
    @test can_arrange([2, 1, 13]) == 2
    @test can_arrange([2, 12, 11, 10, 9, 8, 7, 5]) == 8
    @test can_arrange([3, 10, 8, 7, 6, 5]) == 6
    @test can_arrange([1, 2, 9, 14, 7, 20, 10, 17]) == 7
    @test can_arrange([4, 1, 6, 7, 5, 9]) == 5
    @test can_arrange([1, 16, 14, 3, 18, 9, 8, 7, 5]) == 9
    @test can_arrange([19, 2, 0, 11, 7]) == 5
    @test can_arrange([1, 0, 2, 10, 8, 6, 5]) == 7
    @test can_arrange([1, 2, 8, 10, 9, 14, 5]) == 7
    @test can_arrange([1, 2, 18, 0, 7, 5]) == 6
    @test can_arrange([18, 10, 6]) == 3
    @test can_arrange([0, 1, 2, 4, 10, 21, 17, 9, 6, 5]) == 10
    @test can_arrange([13, 1, 2, 3, 6, 10, 9, 7, 11]) == 8
    @test can_arrange([1, 2, 10, 6, 5]) == 5
    @test can_arrange([18, 0, 1]) == 2
    @test can_arrange([5, 2, 6, 8, 20]) == 2
    @test can_arrange([4, 2, 1, 5, 19, 8, 9]) == 6
    @test can_arrange([6, 1, 16, 13]) == 4
    @test can_arrange([18, 10, 14, 6, 4]) == 5
    @test can_arrange([6, 1, 3, 11, 5, 7]) == 5
    @test can_arrange([1, 2, 5, 7]) == -1
    @test can_arrange([0, 1, 8, 2, 3, 7]) == 4
    @test can_arrange([1, 9]) == -1
    @test can_arrange([4, 2, 1, 5, 7, 13, 14, 9, 10]) == 8
    @test can_arrange([4, 2, 19, 6]) == 4
    @test can_arrange([2, 6, 14, 1, 7]) == 4
    @test can_arrange([4, 15, 3, 5, 6, 7]) == 3
    @test can_arrange([2, 17, 11, 3, 10, 8, 6, 5]) == 8
    @test can_arrange([1, 3, 12, 10, 9, 8, 6, 15]) == 7
    @test can_arrange([13, 1, 2, 3, 6, 10, 9, 8, 11, 7, 5]) == 11
    @test can_arrange([0, 5, 3, 10, 7]) == 5
    @test can_arrange([4, 2, 1, 5, 7, 9, 21, 10, 3]) == 9
    @test can_arrange([1, 2, 13, 14, 7, 5, 6]) == 6
    @test can_arrange([17, 4, 7]) == 2
    @test can_arrange([1, 10, 2, 3, 8, 4, 7, 5, 6]) == 8
    @test can_arrange([0, 14, 3, 18, 9, 7, 5]) == 7
    @test can_arrange([4, 2, 11, 1, 5, 7, 15, 9, 10]) == 8
    @test can_arrange([0, 2, 4, 17, 9, 5]) == 6
    @test can_arrange([1, 3, 9, 8, 6, 5]) == 6
    @test can_arrange([0, 5, 3, 7, 19, 10]) == 6
    @test can_arrange([19, 2, 1, 8, 3, 11, 7]) == 7
    @test can_arrange([12, 1, 10, 2, 9, 4, 7, 5, 6]) == 8
    @test can_arrange([3, 4, 5, 2, 6, 8, 20]) == 4
    @test can_arrange([4, 3, 2, 6, 7, 8, 11, 9]) == 8
    @test can_arrange([1, 8, 9, 7]) == 4
    @test can_arrange([2, 17, 11, 3, 10, 8, 15, 5]) == 8
    @test can_arrange([1, 2, 9, 14, 7, 5, 0, 6]) == 7
    @test can_arrange([7, 1, 3, 11, 13]) == 2
    @test can_arrange([3, 6, 8, 9, 10]) == -1
    @test can_arrange([3, 4, 2, 1, 6, 7, 8, 9, 20]) == 4
    @test can_arrange([2, 5, 7]) == -1
    @test can_arrange([16, 2, 3, 10, 9, 7, 6, 0, 5]) == 8
    @test can_arrange([2, 1, 3]) == 2
    @test can_arrange([0, -1, 21, 2, 4, 10, 17, 9, 6, 5]) == 10
    @test can_arrange([2, 21, 10, 9, 8, 7, 5]) == 7
    @test can_arrange([17, 18, 1, 21, 2]) == 5
    @test can_arrange([2, 1, 7]) == 2
    @test can_arrange([3, 5, 2, 19, 8, 21]) == 5
    @test can_arrange([2, 1, 6, 5, 7, 10]) == 4
    @test can_arrange([17, 1, 20, 3]) == 4
    @test can_arrange([1, 2, 3, 6, 10, 9, 7, 11]) == 7
    @test can_arrange([1, 10, 7, 5]) == 4
    @test can_arrange([1, 2, 3, 9, 6, 12]) == 5
    @test can_arrange([21, 5, 7]) == 2
    @test can_arrange([21, 4, 1, 5]) == 3
    @test can_arrange([12, 3, 11, 10, 9, 8, 7, 5]) == 8
    @test can_arrange([1, 16, 14, 3, 19, 11, 13, 7, 5]) == 9
    @test can_arrange([4, 1, 5, 7, 9, 10, 3]) == 7
    @test can_arrange([3, 10, 8, 9, 6]) == 5
    @test can_arrange([11, 7]) == 2
    @test can_arrange([1, 3, 9, 8, 5]) == 5
    @test can_arrange([5, 14, 3, 2, 9]) == 4
    @test can_arrange([2, 6, 14, 4, 7]) == 4
    @test can_arrange([1, 5, 3, 10, 11, 4, 18]) == 6
    @test can_arrange([10, 2, 3, 8, 4, 7, 5, 6]) == 7
    @test can_arrange([18, 0, 21, 1]) == 4
    @test can_arrange([1, 3, 20]) == -1
    @test can_arrange([18, 12, 3]) == 3
    @test can_arrange([0, 2, 16, 7]) == 4
    @test can_arrange([19, 2, 1, 3, 12, 10, 11, 7]) == 8
    @test can_arrange([2, 6, 4]) == 3
    @test can_arrange([4, 1, 5, 7, 8, 9]) == 2
    @test can_arrange([1, 4]) == -1
    @test can_arrange([14, 4, 17, 1, 5, 7, 8, 9, 10]) == 4
    @test can_arrange([19, 1, 0, 11, 7]) == 5
    @test can_arrange([4, 2, 1, 17, 19, 5, 14, 6]) == 8
    @test can_arrange([14, 7]) == 2
    @test can_arrange([14, 3, 2, 12]) == 3
    @test can_arrange([10, 2, 11, 7]) == 4
    @test can_arrange([2, 1, 6, 7, 8, 20, 10]) == 7
    @test can_arrange([1, 3, 5, 4, 2, 6, 8, 7, 14, 10]) == 10
    @test can_arrange([1, 9, 7]) == 3
    @test can_arrange([14, 9, 1, 20, 15]) == 5
    @test can_arrange([1, 20, 9, 8, 6]) == 5
    @test can_arrange([0, 2, 10, 16, 17, 19, 9, 8, 5]) == 9
    @test can_arrange([1, 8, 3, 10, 9, 7, 5]) == 7
    @test can_arrange([1, 2, 4, 10, 17, 9, 6, 5]) == 8
    @test can_arrange([1, 8, 9]) == -1
    @test can_arrange([17, 1, 2, 18, 9, 8, 3, 7]) == 7
    @test can_arrange([2, 1, 6, 7, 8, 20, 5, 10]) == 7
    @test can_arrange([1, 5, 16, 7, 9, 10, 3]) == 7
    @test can_arrange([0, 4, 17, 1, 5, 7, 8, 19, 10]) == 9
    @test can_arrange([5, 2, 6, 12, 8, 20]) == 5
    @test can_arrange([5, 3, 2, 1, 6, 7, 8, 9, 20, 10]) == 10
    @test can_arrange([4, 2, 1, 6, 8, 13, 9, 10]) == 7
    @test can_arrange([1, 2, 5, 4, 7, 6, 9, 8, 12]) == 8
    @test can_arrange([1, -1, 3, 6, 10, 9, 7]) == 7
    @test can_arrange([1, 5, 4, 7, 6, 8, 12, 2]) == 8
    @test can_arrange([4, 3, 2, 1, 6, 7, 8, 11, 9, 10]) == 9
    @test can_arrange([1, 2, 18, 9, 19]) == 4
    @test can_arrange([2, 8, 5, 3, 7]) == 4
    @test can_arrange([4, 2, 1, 3, 5, 6, 12, 7]) == 8
    @test can_arrange([2, 1, 7, 10]) == 2
    @test can_arrange([3, 5, 4, 2, 6, 9, 20, 10]) == 8
    @test can_arrange([6, 19, 2, 11, 7]) == 5
    @test can_arrange([10, 1, 17, 7]) == 4
    @test can_arrange([13, 1, 2, 3, 6, 10, 9, 8, 5]) == 9
    @test can_arrange([10, 8, 9, 7]) == 4
    @test can_arrange([1, 4, 12]) == -1
    @test can_arrange([4, 2, 0, 6, 7, 8, 9, 10]) == 3
    @test can_arrange([2, 14, 11, 3, 10, 9, 8, 6, 5]) == 9
    @test can_arrange([2, 1, 3, 11, 12, 7]) == 6
    @test can_arrange([16, 2, 3, 10, 9, 8, 14, 6]) == 8
    @test can_arrange([6, 4]) == 2
    @test can_arrange([0, 14, 3, 18, 9, 7]) == 6
    @test can_arrange([1, 2, 3, 18, 9, 6, 5]) == 7
    @test can_arrange([2, 12, 0, 11, 10, 9, 8, 7, 5]) == 9
    @test can_arrange([13, 11, 3, 6, 10, 9, 8, 5]) == 8
    @test can_arrange([4, 1, 18, 5, 6, 7]) == 4
    @test can_arrange([10, 18, 2, 3, 8, 4, 7, 5, 6]) == 8
    @test can_arrange([18, 20, 3]) == 3
    @test can_arrange([3, 14, 4, 7]) == 3
    @test can_arrange([5, 14, 11, 3, 2, 12]) == 5
    @test can_arrange([8, 1, 20, 3]) == 4
    @test can_arrange([2, 1, 6, 7, 8, 10]) == 2
    @test can_arrange([2, 6, 5, 7, 10]) == 3
    @test can_arrange([1, 3, 9]) == -1
    @test can_arrange([2, 20, 10, 7, 4]) == 5
    @test can_arrange([18, 2, 1, 21]) == 3
    @test can_arrange([4, 3, 1, 6, 8, 13, 19, 9, 10]) == 8
    @test can_arrange([8, 1, 5, 3, 10, 7]) == 6
end
