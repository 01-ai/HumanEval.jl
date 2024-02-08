@testitem "109_move_one_ball_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "109_move_one_ball.jl"))
    @test move_one_ball([1]) == true
    @test move_one_ball([5, 6, 7, 8, 1, 2, 3, 4]) == true
    @test move_one_ball([1, 2, 3, 4, 5, 6, 7, 8]) == true
    @test move_one_ball([8, 7, 6, 5, 4, 3, 2, 1]) == false
    @test move_one_ball([2, 1]) == true
    @test move_one_ball([4, 3, 2, 1]) == false
    @test move_one_ball([9, 7, 8, 6, 4, 5, 3, 1, 2]) == false
    @test move_one_ball([3, 2, 1, 4, 5]) == false
    @test move_one_ball([1, 2, 3, 4, 5]) == true
    @test move_one_ball([5, 4, 3, 2, 1]) == false
    @test move_one_ball(Int64[]) == true
    @test move_one_ball([5, 6, 7, 8, 1, 2, 4]) == true
    @test move_one_ball([5, 4, 3, 2]) == false
    @test move_one_ball([8, 7, 6, 5, 4, 2, 1]) == false
    @test move_one_ball([9, 2, 1]) == false
    @test move_one_ball([1, 2, 3, 4]) == true
    @test move_one_ball([5, 6, 8, 1, 2, 4]) == true
    @test move_one_ball([6, 7, 8, 1, 2, 3, 4]) == true
    @test move_one_ball([9, 2, 6]) == true
    @test move_one_ball([5, 6, 8, 2, 4]) == true
    @test move_one_ball([4, 3, 2]) == false
    @test move_one_ball([86, 5, 9, 2, 4]) == false
    @test move_one_ball([9, 5, 2, 6]) == false
    @test move_one_ball([8, 7, 6, 5, 3, 1]) == false
    @test move_one_ball([1, 2, 3]) == true
    @test move_one_ball([86, 5, 2, 4]) == false
    @test move_one_ball([8, 7, 6, 5, 3, 2]) == false
    @test move_one_ball([7, 8, 6, 4, 5, 3, 1, 2]) == false
    @test move_one_ball([4, 1]) == true
    @test move_one_ball([8, 1]) == true
    @test move_one_ball([3, 2, 1]) == false
    @test move_one_ball([4, 3]) == true
    @test move_one_ball([2, 1, 4, 5]) == false
    @test move_one_ball([9, 7, 8, 5, 4, 3, 1, 2]) == false
    @test move_one_ball([7, 6, 5, 4, 2, 1]) == false
    @test move_one_ball([9, 4, 1]) == false
    @test move_one_ball([86, 5, 2]) == false
    @test move_one_ball([6, 2, 1, 4]) == false
    @test move_one_ball([8]) == true
    @test move_one_ball([3]) == true
    @test move_one_ball([4]) == true
    @test move_one_ball([1, 3]) == true
    @test move_one_ball([7, 5, 4, 3]) == false
    @test move_one_ball([2]) == true
    @test move_one_ball([3, 5, 1]) == true
    @test move_one_ball([3, 4]) == true
    @test move_one_ball([3, 2, 4, 5]) == false
    @test move_one_ball([1, 2]) == true
    @test move_one_ball([2, 3, 1, 4, 5]) == false
    @test move_one_ball([13]) == true
    @test move_one_ball([86, 7, 6, 5, 4, 2, 1]) == false
    @test move_one_ball([2, 3, 1, 5]) == false
    @test move_one_ball([8, 7, 5, 3, 2]) == false
    @test move_one_ball([5, 2]) == true
    @test move_one_ball([2, 4, 5]) == true
    @test move_one_ball([8, 2, 1, 4, 5]) == false
    @test move_one_ball([9, 7, 6, 4, 5, 3, 1, 2]) == false
    @test move_one_ball([5, 8, 2, 4]) == true
    @test move_one_ball([9, 7, 8, 5, 4, 86, 3, 1, 2]) == false
    @test move_one_ball([2, 8, 7, 6, 5, 3, 1]) == false
    @test move_one_ball([2, 6, 9]) == true
    @test move_one_ball([9, 2]) == true
    @test move_one_ball([9, 7, 8, 5, 4, 6, 1, 2]) == false
    @test move_one_ball([7, 6, 4, 5, 3, 1, 2]) == false
    @test move_one_ball([3, 2, 6, 9]) == false
    @test move_one_ball([1, 3, 2, 6]) == false
    @test move_one_ball([5, 6, 7, 8, 1, 2, 3]) == true
    @test move_one_ball([9, 7, 13, 5, 4, 6, 1, 2]) == false
    @test move_one_ball([8, 7, 13, 6, 2]) == false
    @test move_one_ball([8, 7, 6, 3, 2]) == false
    @test move_one_ball([5, 6, 8, 7, 2, 3]) == false
    @test move_one_ball([1, 7, 3]) == false
    @test move_one_ball([3, 5]) == true
    @test move_one_ball([6, 7, 8, 1, 3, 4]) == true
    @test move_one_ball([6, 7, 8, 1, 2, 4]) == true
    @test move_one_ball([9, 6, 7, 8, 1, 2, 3]) == false
    @test move_one_ball([8, 7, 14, 6, 2]) == false
    @test move_one_ball([3, 2]) == true
    @test move_one_ball([86, 4, 1]) == false
    @test move_one_ball([8, 7, 2, 6, 5, 3]) == false
    @test move_one_ball([5, 6, 8, 7, 2, 4]) == false
    @test move_one_ball([6, 8, 7, 13, 86]) == false
    @test move_one_ball([5, 3, 2, 6, 7, 1, 8, 4]) == false
    @test move_one_ball([1, 3, 5, 7, 9, 11, 2, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([1, 4, 7, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([1, 2, 3, 4, 5, 6, 7, 9, 8]) == false
    @test move_one_ball([1, 3, 2, 5, 4, 7, 6, 9, 8]) == false
    @test move_one_ball([-2, 0, 2, 1, 3, 8, 7, 6, 5, 4]) == false
    @test move_one_ball([10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == false
    @test move_one_ball([0, 1, 6, 2, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([5, 3, 2, 6, 7, 1, 4]) == false
    @test move_one_ball([1, 3, 2, 4, 7, 6, 9, 8]) == false
    @test move_one_ball([1, 3, 2, 4, 7, 6, 9, 11, 8]) == false
    @test move_one_ball([1, 3, 2, 4, 7, 6, 9, 0, 8]) == false
    @test move_one_ball([5, 3, 6, 7, 1, 8, 4]) == false
    @test move_one_ball([1, -2, 7, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([1, 3, 5, 7, 9, 2, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([0, 1, 6, 2, 5, 8, 7, 3]) == false
    @test move_one_ball([1, -2, 7, 8, 5, 3, 6]) == false
    @test move_one_ball([5, 3, 6, 7, 0, 8, 4]) == false
    @test move_one_ball([1, 3, 2, 4, 6, 9, 0, 8]) == false
    @test move_one_ball([0, 1, 6, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([1, 3, 4, 5, 6, 7, 8]) == true
    @test move_one_ball([1, 3, 5, 7, 9, 11, 2, 4, 6, 8, 10, 13]) == false
    @test move_one_ball([3, 5, 7, 9, 11, 2, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([1, 3, 5, 7, 10, 11, 2, 4, 6, 8, 12]) == false
    @test move_one_ball([5, 7, 9, 11, 2, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([4, 7, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([1, 4, 5, 6, 7, 8]) == true
    @test move_one_ball([1, 3, 0, 7, 9, 11, 2, 4, 6, 8, 10, 13]) == false
    @test move_one_ball([5, 2, 6, 1, 8, 4]) == false
    @test move_one_ball([1, 3, 2, 4, 7, 6, 11, 8]) == false
    @test move_one_ball([1, 4, 5, 6, 7]) == true
    @test move_one_ball([1, 2, 4, 7, 6]) == false
    @test move_one_ball([9, 5, 7, 10, 11, 2, 4, 6, 8, 12]) == false
    @test move_one_ball([3, 2, 7, 4, 6, 9, 0, 8]) == false
    @test move_one_ball([1, 3, 2, 4, 6, 9, -1, 0, 8]) == false
    @test move_one_ball([11, 1, 0, 5, 6, 7, 8]) == false
    @test move_one_ball([3, 5, 7, 9, 11, 2, 4, 6, 8, 10]) == false
    @test move_one_ball([1, 3, 2, 4, 6, -1, 0, 8]) == false
    @test move_one_ball([3, 2, 4, 6, -1, 0, 8, 1]) == false
    @test move_one_ball([1, 3, 2, 4, 6, 9, 8]) == false
    @test move_one_ball([2, 5, 4, 7, 6, 9, 8]) == false
    @test move_one_ball([-2, 0, 2, 1, 3, 8, 6, 5, 4]) == false
    @test move_one_ball([1, 4, 5, 3, 6, 7]) == false
    @test move_one_ball([7, 1, 3, 2, 4, 6, -1, 0, 8]) == false
    @test move_one_ball([5, 3, 2, 6, 8, 1, 4]) == false
    @test move_one_ball([10, 0, 1, 6, 2, 5, -1, 8, 7, 3]) == false
    @test move_one_ball([5, 3, 6, 7, 1, 4]) == false
    @test move_one_ball([8, 7, 6, 5, 4, 3, 2]) == false
    @test move_one_ball([1, -2, 7, 4, 3, 2, 6]) == false
    @test move_one_ball([5, 3, 6, 7, 1, 8]) == false
    @test move_one_ball([5, 3, 6, 0, 8]) == false
    @test move_one_ball([1, -2, 11, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([3, 5, 7, 10, 13, 11, 2, 4, 6, 8, 12]) == false
    @test move_one_ball([1, 3, 2, 4, 7, 9, 0, 8]) == false
    @test move_one_ball([1, 3, 2, 4, 7, 6, 9]) == false
    @test move_one_ball([5, 7, 9, 2, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([8, 7, 5, 4, 2, 1]) == false
    @test move_one_ball([0, 1, 6, 5, 2, 8, 7, 4, 3]) == false
    @test move_one_ball([1, 5, 2, 4, 7, 6, 9]) == false
    @test move_one_ball([5, 3, 0, 8]) == false
    @test move_one_ball([4, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([1, 2, 3, 4, 5, 6, 9, 8]) == false
    @test move_one_ball([5, 3, 2, 6, 7, 8, 1, 4]) == false
    @test move_one_ball([5, 7, 9, 11, 2, 6, 8, 10, 12]) == false
    @test move_one_ball([0, 1, 6, 8, 7, 4, 3]) == false
    @test move_one_ball([5, 2, 6, 1, 7, 4]) == false
    @test move_one_ball([5, 3, 6, 2, 1, 8, 4]) == false
    @test move_one_ball([10, 5, 3, 6, 7, 1, 4]) == false
    @test move_one_ball([1, 3, 2, 4, 7, 6, 9, 12, 8]) == false
    @test move_one_ball([1, 3, 5, 7, 11, 2, 4, 8, 12]) == false
    @test move_one_ball([1, 3, 2, 7, 6, 9, 11, 8]) == false
    @test move_one_ball([1, 3, 5, 11, 2, 4, 8, 12]) == false
    @test move_one_ball([1, 11, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([5, 7, 9, 11, 2, 4, 6, 8, 10]) == false
    @test move_one_ball([1, 3, 5, 7, 11, 2, 8, 6, 12]) == false
    @test move_one_ball([1, 3, 5, 4, 7, 6, 9, 8]) == false
    @test move_one_ball([1, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([10, 1, -2, 7, 3, 5, 2, 6]) == false
    @test move_one_ball([5, 7, 9, 3, 2, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([1, 4, 7, 6]) == false
    @test move_one_ball([5, 7, 11, 2, 6, 8, 10, 12]) == false
    @test move_one_ball([1, -2, 6, 8, 5, 3, 2, 13]) == false
    @test move_one_ball([0, 1, 6, 2, 5, 8, 7, 13, 3]) == false
    @test move_one_ball([1, 4, 6]) == true
    @test move_one_ball([1, -2, 8, 5, 3, 2]) == false
    @test move_one_ball([4, 6]) == true
    @test move_one_ball([4, 5, 3, 6, 8]) == false
    @test move_one_ball([3, 5, 7, 10, 13, 11, 2, 4, 8, 12]) == false
    @test move_one_ball([3, 5, 7, 9, 11, 2, 4, 6, 10, 13]) == false
    @test move_one_ball([7, 6]) == true
    @test move_one_ball([-2, 11, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([5, 12, 6, 7, 1, 8, 4]) == false
    @test move_one_ball([3, 11, 6]) == false
    @test move_one_ball([5, 3, 2, 6, 7, 0, 4]) == false
    @test move_one_ball([1, 3, 5, 7, 11, 2, 10, 4, 8, 12]) == false
    @test move_one_ball([5, 2, 10, 1, 4]) == false
    @test move_one_ball([3, 2, 7, 4, 6, 9, 0]) == false
    @test move_one_ball([3, 5, 4, 7, 6, 8]) == false
    @test move_one_ball([5, 3, 6, 7, 4]) == false
    @test move_one_ball([4, 5, 7, 3, 6, 8]) == false
    @test move_one_ball([3, 2, 4, 6, 9, 0, 8]) == false
    @test move_one_ball([10, 3, 6, 7, 1, 4]) == false
    @test move_one_ball([5, 3, 6, 7, 0, 8]) == false
    @test move_one_ball([3, 8, 7, 5, 4, 2]) == false
    @test move_one_ball([10, 2, 3, 6, 7, 1, 12, 4]) == false
    @test move_one_ball([4, 8, 5, 3, 2]) == false
    @test move_one_ball([8, 1, 2, 4, 7, 6]) == false
    @test move_one_ball([5, 3, 6, 1, 12, 7, 4]) == false
    @test move_one_ball([-2, 3, 2, 4, 6, -1, 0, 8]) == false
    @test move_one_ball([5, 2, 7, 1, 3]) == false
    @test move_one_ball([11, 1, 0, 5, 6, 10, 7, 8]) == false
    @test move_one_ball([1, 3, 2, 4, 6, -1, 0, -2]) == false
    @test move_one_ball([5, 3, 6, 7, 0, 8, 4, 2]) == false
    @test move_one_ball([1, 5, 11, 2, 4, 8, 12]) == false
    @test move_one_ball([5, 3, 7, 1, 8, 6]) == false
    @test move_one_ball([8, 7, 6, 11, 4, 3, 2, 1]) == false
    @test move_one_ball([5, 3, 2, 6, 7, 0, 10]) == false
    @test move_one_ball([5, 7, 9, 11, 2, 4, 8, 10, 12]) == false
    @test move_one_ball([5, 2, 1, 3]) == false
    @test move_one_ball([11, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([3, 11, 0, 6]) == false
    @test move_one_ball([1, 5, 3, 0, 8]) == false
    @test move_one_ball([1, 4, 5, 6, 8]) == true
    @test move_one_ball([11, 1, 0, 6, 10, 7, 8]) == false
    @test move_one_ball([1, 4, 5, 3, 6]) == false
    @test move_one_ball([1, 3, 4, 5, 6, 8]) == true
    @test move_one_ball([55, 22, 7, 10]) == false
    @test move_one_ball([-1, 8, 6, 7, 1, 4, 3]) == false
    @test move_one_ball([7, 6, 11, 4, 3, 2, 1]) == false
    @test move_one_ball([5, 1, 3]) == true
    @test move_one_ball([1, 3, 4, 5, 6, 2, 8]) == false
    @test move_one_ball([1, 3, 11, 4, 8, 12]) == false
    @test move_one_ball([11, 6]) == true
    @test move_one_ball([8, 14, 7, 13, 6, 5, 2, 1]) == false
    @test move_one_ball([3, 5, 7, 11, 2, 10, 4, 8, 12]) == false
    @test move_one_ball([0, 1, 4, 6]) == true
    @test move_one_ball([11, 13, 1, 0, 6, 10, 7, 8]) == false
    @test move_one_ball([5, 2, 8, 6, 1, 22, 4]) == false
    @test move_one_ball([9, 5, 7, 11, 2, 4, 6, 8, 12]) == false
    @test move_one_ball([3, 5, 7, 9, 11, 2, 6, 10, 8]) == false
    @test move_one_ball([1, 5, 4, 7, 6, 9]) == false
    @test move_one_ball([11, 13, 1, 6, 10, 8]) == false
    @test move_one_ball([1, 3, 5, 9, 7, 10, 11, 2, 4, 6, 8, 12]) == false
    @test move_one_ball([3, 5, 7, 9, 11, 2, 4, 6, 8, 0, 12]) == false
    @test move_one_ball([5, 3, 6, 4, 1, 8]) == false
    @test move_one_ball([5, 3, 6, 1, 14, 7, 4]) == false
    @test move_one_ball([5, 3]) == true
    @test move_one_ball([-2, 7, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([11, 13, 6]) == true
    @test move_one_ball([-2, 3, 1, 4, 6, -1, 0, 8]) == false
    @test move_one_ball([1, -2, 11, 8, 5, 3, 2]) == false
    @test move_one_ball([1, 0, 6, 10, 3, 8]) == false
    @test move_one_ball([0, 1, 6, 5, 2, 7, 4, 3]) == false
    @test move_one_ball([3, 5, 7, 9, 11, 2, 10, 14, 8]) == false
    @test move_one_ball([-2, 3, 1, 4, 6, -1, 0]) == false
    @test move_one_ball([5, 3, 6, 7]) == false
    @test move_one_ball([6, 2, 1, 3]) == false
    @test move_one_ball([1, 3, 5, 7, 9, 11, 55, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([10, 3, 7, 1, 4]) == false
    @test move_one_ball([0, 13, 1, 6, 2, 5, 8, 7, 3]) == false
    @test move_one_ball([1, 3, 2, 5, -2, 4, 7, 6, 9, 8]) == false
    @test move_one_ball([5, 7, 9, 11, 2, 4, 6, 8, 12]) == false
    @test move_one_ball([3, 4, 5, 6, 2, 8]) == false
    @test move_one_ball([6]) == true
    @test move_one_ball([3, 2, 4, 7, 6, 11, 8]) == false
    @test move_one_ball([3, 5, 7, 9, 11, 2, 6, 8, 10, 12]) == false
    @test move_one_ball([1, 2, 0, 7, 6, 4]) == false
    @test move_one_ball([5, 6, 1, 8, 4]) == false
    @test move_one_ball([2, 7, 1, 8, 6]) == false
    @test move_one_ball([5, 2, 4, 7, 6, 9]) == false
    @test move_one_ball([3, 5, 7, 9, 11, 2, 10, 14]) == false
    @test move_one_ball([3, 22, 5, 7, 9, 11, 2, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([55, 22, 7]) == false
    @test move_one_ball([3, 55, 0, 6]) == false
    @test move_one_ball([3, 2, 4, 7, 9, 0, 8]) == false
    @test move_one_ball([8, 1, 2, 3, 7, 6]) == false
    @test move_one_ball([5, 3, 7, 8, 6]) == false
    @test move_one_ball([5, 0, 6, 7, 13, 11, 4]) == false
    @test move_one_ball([3, 2, 4, 7, 6, 8]) == false
    @test move_one_ball([1, 2, 4, 6, 9, 8]) == false
    @test move_one_ball([5, 7, 9, 2, 6, 8, 10, 12]) == false
    @test move_one_ball([0, 1, 6, 2, 5, 9, 7, 13, 3]) == false
    @test move_one_ball([3, 7, 1, 8]) == false
    @test move_one_ball([9, 4, 5]) == true
    @test move_one_ball([1, 4, 5, 6]) == true
    @test move_one_ball([1, 3, 0, 7, 9, 11, 2, 4, 6, 10, 13]) == false
    @test move_one_ball([1, 3, 2, 5, 7, 6, 9, 11, 8]) == false
    @test move_one_ball([12, 5, 2, 6, 1]) == false
    @test move_one_ball([22, 5, 7, 9, 11, 2, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([8, 5, 2, 7, 1, 3]) == false
    @test move_one_ball([5, 7, 2, 6, 8, 10]) == false
    @test move_one_ball([0, 1, 2, 5, 8, 7, 3]) == false
    @test move_one_ball([0, 6, 8, 7, 4, 3]) == false
    @test move_one_ball([1, 5, 4, 7, 6]) == false
    @test move_one_ball([1, 3, 2, 4, 6, 14, -1, 0, 8]) == false
    @test move_one_ball([1, 3, 5, 7, 11, 2, 10, 4, 8]) == false
    @test move_one_ball([8, 5, 14, 7, 1, 3]) == false
    @test move_one_ball([3, 4, 6, -1, 0, 8, 1]) == false
    @test move_one_ball([8, 7, 6, 5, 3, 2, 1]) == false
    @test move_one_ball([8, 6, 5, 3, 2, 1]) == false
    @test move_one_ball([-2, 2, 1, 3, 8, 7, 6, 5, 4]) == false
    @test move_one_ball([3, 6, 7, 0, 8]) == false
    @test move_one_ball([1, 3, 2, 4, 9, 8]) == false
    @test move_one_ball([1, 3, 4, 7, 6, 9, 12, 8]) == false
    @test move_one_ball([3, 2, 4, 7, 6, 9]) == false
    @test move_one_ball([1, 2, 4, 9, 8]) == false
    @test move_one_ball([11, 13, 6, 10, 8]) == false
    @test move_one_ball([1, 8, 4, 3, 2, 6, 5]) == false
    @test move_one_ball([4, 3, 7, 1, 8, 6]) == false
    @test move_one_ball([1, 2, 3, 5, 4, 7, 6, 9, 8]) == false
    @test move_one_ball([0, 1, 6, 2, 5, 9, 7, 13, 12, 3]) == false
    @test move_one_ball([9, 4, 22, 5]) == false
    @test move_one_ball([5, 7, 9, 11, 2, 4, 6, 8, 13, 10]) == false
    @test move_one_ball([55, 21, 7]) == false
    @test move_one_ball([5, 3, 7, 8, 10]) == false
    @test move_one_ball([8, 7, 6]) == false
    @test move_one_ball([5, 3, 6, -1, 7, 0, 8, 4]) == false
    @test move_one_ball([5, 2, 14, 6, 7, 0, 10]) == false
    @test move_one_ball([-2, 0, 2, 1, 3, 7, 6, 5, 4]) == false
    @test move_one_ball([1, 3, 5, 7, 11, 8, 6, 12]) == false
    @test move_one_ball([8, 10, 7, 6, 5, 4, 3, 2]) == false
    @test move_one_ball([1, 2, 6, 9, 8]) == false
    @test move_one_ball([22, 5, 3, 6, 7]) == false
    @test move_one_ball([8, 7, -1, 11, 4, 3, 2, 1]) == false
    @test move_one_ball([3, 6, 7, 0, 5, 8, 4]) == false
    @test move_one_ball([5, 2, 6, 1, 7]) == false
    @test move_one_ball([13, 3, 5, 7, 9, 11, 2, 6, 8, 10, 12]) == false
    @test move_one_ball([1, -2, 8, 5, 3, 2, -1]) == false
    @test move_one_ball([3, 2, 4, -1, 0, 8, 1]) == false
    @test move_one_ball([1, 3, 5, 7, 11, 2, 10, 4, 6]) == false
    @test move_one_ball([-2, 4, 6, -1, 0]) == false
    @test move_one_ball([5, 3, 8, 6]) == false
    @test move_one_ball([8, 19, 6, 89, 7]) == false
    @test move_one_ball([11, 1, 0, 6, 10, 7]) == false
    @test move_one_ball([5, 7, 1, 9, 11, 2, 6, 8, 10, 12]) == false
    @test move_one_ball([6, 3]) == true
    @test move_one_ball([1, 4, 5, 6, 12, 8]) == false
    @test move_one_ball([1, 0, 6, 3, 8]) == false
    @test move_one_ball([7, 3, 2, 4, 6, 9, -1, 0, 8]) == false
    @test move_one_ball([-2, 3, 7, 8, 6]) == false
    @test move_one_ball([3, 6, -1, 0, 8, 1]) == false
    @test move_one_ball([5, 3, 2, 7, 1, 8, 4]) == false
    @test move_one_ball([1, 10, 4, 5, 6, 7, 8]) == false
    @test move_one_ball([4, 8, 5, 55, 3, 6]) == false
    @test move_one_ball([-2, 3, 10, 4, 6, -1, 0, 8]) == false
    @test move_one_ball([1, -2, 11, 5, 3, 2]) == false
    @test move_one_ball([3, 2, 4, 6, 9, 8]) == false
    @test move_one_ball([10, 3, 6, 8, 1, 4]) == false
    @test move_one_ball([1, 3, 2, 4, 21, 7, 6, 11, 8]) == false
    @test move_one_ball([-2, 0, 2, 3, 8, 5, 4]) == false
    @test move_one_ball([1, 3, 11, 4, 8, -1]) == false
    @test move_one_ball([3, 2, 4, 9, 0, 8]) == false
    @test move_one_ball([1, 5, 3, 2, 6]) == false
    @test move_one_ball([10, 0, 1, 6, 2, 5, 8, 7, 3]) == false
    @test move_one_ball([8, 1, 2, 3, 7]) == true
    @test move_one_ball([5, 3, 2, 11, 1, 8, 4]) == false
    @test move_one_ball([3, 6, 0, 5, 8, 4]) == false
    @test move_one_ball([1, 5, 3, 0, 9]) == false
    @test move_one_ball([1, 13, 7, 4, 3, 2, 6]) == false
    @test move_one_ball([5, 3, 6, 1, 7, 4]) == false
    @test move_one_ball([5, 3, 6, 7, 1, 8, 10, 4, 9]) == false
    @test move_one_ball([7, 1, 3, 2, 4, 6, -1, 8]) == false
    @test move_one_ball([0, 8, 1, 6, 2, 5, 9, 7, 13, 3]) == false
    @test move_one_ball([1, 4, 7]) == true
    @test move_one_ball([2, 3, 4, 5, 6, 9, 8]) == false
    @test move_one_ball([14, 0, 6, 8]) == true
    @test move_one_ball([3, 10, 4, 6, -1, 0, 8]) == false
    @test move_one_ball([1, 4, 6, 7]) == true
    @test move_one_ball([5, 3, 6, 2, 10, 4]) == false
    @test move_one_ball([5, 2, 3]) == true
    @test move_one_ball([5, 3, 6, 7, 0, 9, 4, 2]) == false
    @test move_one_ball([3, 7, 9, 11, 2, 10, 14, 8]) == false
    @test move_one_ball([5, 3, 7]) == false
    @test move_one_ball([1, 3, 2, 14, 7, 6, 9, 8]) == false
    @test move_one_ball([1, 2, 5, 4, 7, 19, 9, 8]) == false
    @test move_one_ball([1, 3, 2, 14, 6, 9, 8]) == false
    @test move_one_ball([5, 3, 6, 7, -2]) == false
    @test move_one_ball([5, 0, 9, 11, 2, 6, 8, 10, 12]) == false
    @test move_one_ball([1, 8, 5, 3, 2, -1]) == false
    @test move_one_ball([11, 13]) == true
    @test move_one_ball([5, 3, 9, 6]) == false
    @test move_one_ball([5, 2, 4, 10, 6, 9]) == false
    @test move_one_ball([1, 4, 11, 6]) == false
    @test move_one_ball([-2, 2, 1, 8, 7, 6, 5, 4]) == false
    @test move_one_ball([3, 5, 7, 10, 13, 11, 2, 4, 9, 12]) == false
    @test move_one_ball([3, 4, 8, 12]) == true
    @test move_one_ball([21]) == true
    @test move_one_ball([-2, 11, 8, 5, 21, 3, 2, 6]) == false
    @test move_one_ball([55, 22, 10]) == false
    @test move_one_ball([1, 7, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([3, 5, 4, 6, 8]) == false
    @test move_one_ball([1, 13, 7, -2, 3, 2, 6]) == false
    @test move_one_ball([3, 4, 8]) == true
    @test move_one_ball([55, 7, 10]) == true
    @test move_one_ball([3, 2, 7, 6, 9, 0]) == false
    @test move_one_ball([3, 2, 4, 7, 5, 6, 11, 8]) == false
    @test move_one_ball([11, 0, 13, 1, 6, 10, 8]) == false
    @test move_one_ball([-2, 11, 8, 5, 21, 3, 2]) == false
    @test move_one_ball([0, 1, 6, 14, 7, 4, 3]) == false
    @test move_one_ball([55, 21, 8, 7]) == false
    @test move_one_ball([2, 12, 6]) == false
    @test move_one_ball([5, 3, 7, 13, 8, 10]) == false
    @test move_one_ball([5, 2, 4, 10, 8, 9]) == false
    @test move_one_ball([10, 3, 1, 4]) == false
    @test move_one_ball([3, 2, 4, 6, 0, 8]) == false
    @test move_one_ball([3, 2, 4, 7, 6, 1, 11, 8]) == false
    @test move_one_ball([1, 3, 2, 4, 21, 7, 6, 8]) == false
    @test move_one_ball([1, 5, 0, 6, 7]) == false
    @test move_one_ball([12, 3, 11, 6]) == false
    @test move_one_ball([3, 5, 7, 9, 11, 1, 6, 10, 8]) == false
    @test move_one_ball([3, 4, 6, -1, 19, 8, 1]) == false
    @test move_one_ball([10, 1, 6, 2, 5, 8, 7, 3]) == false
    @test move_one_ball([11, 89, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([5, 7, 9, 11, 6, 8, 10, 12]) == false
    @test move_one_ball([3, 6, 0, 7, 5, 8, 4]) == false
    @test move_one_ball([5, 7, 9, 11, 2, 4, 6, 8, 0, 12]) == false
    @test move_one_ball([4, 5, 14, 6, 8]) == false
    @test move_one_ball([2, 6, 1, 8, 4]) == false
    @test move_one_ball([0, 1, 6, 5, 9, 7, 13, 3]) == false
    @test move_one_ball([5, 13, 3, 8, 6]) == false
    @test move_one_ball([3, 5, 7, 8, 10, 13, 11, 2, 4, 9, 12]) == false
    @test move_one_ball([1, 3, 4, 5, 6, 9]) == true
    @test move_one_ball([1, 3, 9, 7, 10, 11, 2, 4, 6, 8, 12]) == false
    @test move_one_ball([5, 1, 9, 11, 2, 6, 8, 10, 12]) == false
    @test move_one_ball([1, 3, 2, 4, 14, -1, 0, 8]) == false
    @test move_one_ball([1, 55, 5, 2, 0, 9]) == false
    @test move_one_ball([1, 4, 7, 9]) == true
    @test move_one_ball([5, 3, 55, 7, 0, 8, 4, 2]) == false
    @test move_one_ball([12, 0, 1, 5, 8, 7, 10]) == false
    @test move_one_ball([4, 3, 6, 7, 1, 8]) == false
    @test move_one_ball([89, 5, 3, 6, 7, 1, 8]) == false
    @test move_one_ball([5, 2, 8, 6]) == false
    @test move_one_ball([7, 2, 4, 6, -1, 0, 8]) == false
    @test move_one_ball([3, 2, 4, 7, 89, 8]) == false
    @test move_one_ball([3, 14]) == true
    @test move_one_ball([1, 3, 2, 7, 6, 9]) == false
    @test move_one_ball([1, 3, 2, -2, 14, 7, 6, 9, 8]) == false
    @test move_one_ball([4, 8, 5, 55, 2, 6]) == false
    @test move_one_ball([4, 5, 55, 6, 8]) == false
    @test move_one_ball([55, 22, 4, 10]) == false
    @test move_one_ball([0, 1, 6, 2, 5, 9, 7, -1, 13, 3]) == false
    @test move_one_ball([7, 1, 3, -2, 4, 6, -1, 8]) == false
    @test move_one_ball([5, 3, 6, 1, 0, 14, 7, 4]) == false
    @test move_one_ball([4, 89, 5, 3, 6, 7, 1, 8]) == false
    @test move_one_ball([3, 4, 9, 0, 8]) == false
    @test move_one_ball([3, 2, 4, 6, 11, 8]) == false
    @test move_one_ball([5, 6, 1, 8, 3]) == false
    @test move_one_ball([0, 2, 5, 8, 7, 13, 3]) == false
    @test move_one_ball([1, 3, 11, 4, 8, 89]) == false
    @test move_one_ball([22, 4, 5, 55, 6, 8]) == false
    @test move_one_ball([1, 4, 5, 6, 12, 13, 8]) == false
    @test move_one_ball([8, 3, 4, 5, 6, 9]) == false
    @test move_one_ball([3, 5, 7, 10, -2, 11, 2, 4, 8, 12]) == false
    @test move_one_ball([8, 3, 2, 6]) == false
    @test move_one_ball([5, 7]) == true
    @test move_one_ball([8, 14, 7, 13, 6, 5, 2]) == false
    @test move_one_ball([1, 3, 5, 9, 7, 10, 11, 2, 13, 4, 6, 8, 12]) == false
    @test move_one_ball([7, 4]) == true
    @test move_one_ball([55, 21, 2, 8, 7]) == false
    @test move_one_ball([1, 3, 7, 11, 2, 10, 4, 8]) == false
    @test move_one_ball([4, 6, 5]) == false
    @test move_one_ball([0, 13, 1, 4, 6, 2, 5, 8, 7, 3]) == false
    @test move_one_ball([5, 1, 0, 6, 10, 3, 8]) == false
    @test move_one_ball([1, 4, 14, 5, 6]) == false
    @test move_one_ball([9, 5, 7, 10, 11, 2, 19, 6, 8, 12]) == false
    @test move_one_ball([1, 3, 11, 4, 19, 8, 12]) == false
    @test move_one_ball([5, 2, 6, 1, 0, 3]) == false
    @test move_one_ball([1, 3, 2, 4, 6, 9]) == false
    @test move_one_ball([2, 10, 1, 4]) == false
    @test move_one_ball([1, 5, 2, 0, 9]) == false
    @test move_one_ball([1, 12, 8, 5, 3, 2, 6]) == false
    @test move_one_ball([5, 3, 7, 13, 10]) == false
    @test move_one_ball([5, 2, 4, 10, 9]) == false
    @test move_one_ball([1, 6, 3, 2, 4, 14, -1, 0, 8]) == false
    @test move_one_ball([1, 4, 7, 8, 5, 3, 2]) == false
    @test move_one_ball([0, 1, 6, 14, 2, 10, 8, 7, 3]) == false
    @test move_one_ball([5, 3, 2, 7, 8, 4, 1]) == false
    @test move_one_ball([1, 3, 2, 4, 7, 9, 11, 8]) == false
    @test move_one_ball([55, 2, 8, 7]) == false
    @test move_one_ball([0, 6, 4, 1, 8]) == false
    @test move_one_ball([-2, 11, 5, 3, 2, 6]) == false
    @test move_one_ball([55, 2, 89, 7]) == false
    @test move_one_ball([1, 3, 11, 4, 8, 0, 89]) == false
    @test move_one_ball([8, 5, 13, 2, 7, 1, 3]) == false
    @test move_one_ball([5, 55, 7, 0, 8, 4, 2]) == false
    @test move_one_ball([7, 1, 3, -2, 4, 6, 8]) == false
    @test move_one_ball([1, 3, 5, 7, 11, 4, 8, 12]) == false
    @test move_one_ball([10, 14, 8, 7, 6, 5, 4, 3, 2, 1]) == false
    @test move_one_ball([12, 3, 11, 13, 8]) == false
    @test move_one_ball([5, 3, 2, 7, 14, 1, 8, 4]) == false
    @test move_one_ball([7, 5]) == true
    @test move_one_ball([1, 4, 5, 9, 3, 6]) == false
    @test move_one_ball([12, 6, 7, 1, 8, 4]) == false
    @test move_one_ball([1, 3, 4, 8, 89]) == true
    @test move_one_ball([11, 1, 0, 6, 7, 8]) == false
    @test move_one_ball([1, 2, 3, 5, 6, 7, 8]) == true
    @test move_one_ball([3, 4, 6, -1, -2, 0]) == false
    @test move_one_ball([-2, 3, 1, 4, 13, -1, 0]) == false
    @test move_one_ball([5, -1, 3]) == true
    @test move_one_ball([0, 1, 6, 2, 5, 8, 7, 4]) == false
    @test move_one_ball([0, 1, 6, 2, 5, 9, 7, 11, -2, 3]) == false
    @test move_one_ball([8, 2, 3, 7, 6]) == false
    @test move_one_ball([5, 0, 2, 10, 1, 4]) == false
    @test move_one_ball([5, 3, 55, 2, 6, 7, 4]) == false
    @test move_one_ball([5, 3, 6, 7, 0, 89, 8, 4]) == false
    @test move_one_ball([-2, 2, 1, 3, 89, 7, 6, 5, 19, 4]) == false
    @test move_one_ball([1, 3, 2, 19, 4, 7, 6, 11, 8]) == false
    @test move_one_ball([4, 5, 6, 1, 2, 3]) == true
    @test move_one_ball([2, 3, 1]) == true
    @test move_one_ball([1, 3, 2]) == false
    @test move_one_ball([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]) == true
    @test move_one_ball([50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == false
    @test move_one_ball([1, 2, 3, 4, 5, -2, 7, 9, 8]) == false
    @test move_one_ball([1, 2, 4, -2, 7, 9, 8]) == false
    @test move_one_ball([7, 6, 5, 4, 3, 2, 1]) == false
    @test move_one_ball([1, 2, 3, 4, 5, 6, 11, 8]) == false
    @test move_one_ball([-2, 0, 2, 1, 3, 8, 7, 6, 4]) == false
    @test move_one_ball([2, 3, 4, -2, 7, 9, 8]) == false
    @test move_one_ball([1, 2, 3, 4, 5, -2, 6, 11, 8]) == false
    @test move_one_ball([1, 4, 7, 8, 9, 5, 3, 2, 6]) == false
    @test move_one_ball([1, 4, -2, 7, 9, 8]) == false
    @test move_one_ball([1, 3, 5, 7, 6, 9, 8]) == false
    @test move_one_ball([5, 3, 2, 9, 7, 1, 8, 4]) == false
    @test move_one_ball([1, 3, 5, 7, 6, 9]) == false
    @test move_one_ball([1, 2, 4, 9, 7, 0, 8]) == false
    @test move_one_ball([9, 1, 6, 2, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([1, 2, 3, 4, 5, -2, 9, 8]) == false
    @test move_one_ball([1, 7, 2, 3, 4, 5, 6, 8]) == false
    @test move_one_ball([1, 2, 4, 7, 9, 8]) == false
    @test move_one_ball([3, 5, 7, 6, 8, 11, 12, 9]) == false
    @test move_one_ball([3, 5, 7, 6, 8, 11, 12, 4]) == false
    @test move_one_ball([1, 2, 3, 4, 5, 6, 8]) == true
    @test move_one_ball([1, 2, 4, 0, -2, 7, 9, 8]) == false
    @test move_one_ball([8, 7, 5, 4, 3, 2, 1]) == false
    @test move_one_ball([5, 3, 2, 9, 7, 10, 1, 8, 4]) == false
    @test move_one_ball([9, 1, 6, 2, 8, 7, 4, 3]) == false
    @test move_one_ball([10, 9, 8, 7, 6, 5, -2, 2, 1]) == false
    @test move_one_ball([1, 3, 5, 4, 7, 6, 9]) == false
    @test move_one_ball([1, 2, 3, 4, 11, 5, 6, 7, 9, 8]) == false
    @test move_one_ball([1, 2, 4, 5, 6, 7, 8]) == true
    @test move_one_ball([1, 2, 4, 9, 0, 8]) == false
    @test move_one_ball([1, 3, 4, 5, -2, 6, 11, 8]) == false
    @test move_one_ball([2, 3, 5, -2, 7, 9, 8]) == false
    @test move_one_ball([1, 2, 7, 4, 5, -2, 6, 11, 8]) == false
    @test move_one_ball([8, 7, 5, 3, 0, 2, 1]) == false
    @test move_one_ball([8, 7, 5, 10, 0, 2, 1]) == false
    @test move_one_ball([1, 2, 4, 0, -2, 7, 8]) == false
    @test move_one_ball([10, 9, 8, 7, 6, -2, 2, 1]) == false
    @test move_one_ball([-2, 1, 2, 5, 4, 7, 6, 9, 8]) == false
    @test move_one_ball([5, 2, 7, 10, 1, 8, 4, 9]) == false
    @test move_one_ball([1, 2, 7, 0, 8]) == false
    @test move_one_ball([10, 1, 2, 4, -2, 7, 9, 8]) == false
    @test move_one_ball([5, 7, 6, 8, 11, 12, 4]) == false
    @test move_one_ball([1, 2, -2, 7, 9, 6]) == false
    @test move_one_ball([4, 5, 7, 6, 8, 11, 12, 10]) == false
    @test move_one_ball([10, 1, 2, 5, -2, 7, 9, 8]) == false
    @test move_one_ball([5, 2, 7, 10, 1, 8, 4]) == false
    @test move_one_ball([1, 4, 8, 9, 5, 3, 2, 6]) == false
    @test move_one_ball([5, 7, 6, 8, 11, 12, 10]) == false
    @test move_one_ball([8, 7, 5, 10, 0, 2]) == false
    @test move_one_ball([1, 2, 7, 8]) == true
    @test move_one_ball([1, 2, 7, 0]) == true
    @test move_one_ball([8, 7, 5, 3, 10, 0, 2]) == false
    @test move_one_ball([1, 4, 8, 5, 3]) == false
    @test move_one_ball([1, 2, 4, -2, 7, 10, 8]) == false
    @test move_one_ball([5, 7, 6, 8, 3, 11, 10]) == false
    @test move_one_ball([1, 3, 5, 7, 2, 9]) == false
    @test move_one_ball([10, 9, 8, 7, 6, -2, 4, 2, 1]) == false
    @test move_one_ball([1, 2, 3, 10, 4, 11, 5, 6, 7, 9, 8]) == false
    @test move_one_ball([1, 2, 4, 7, 0, 8]) == false
    @test move_one_ball([1, 2, 0, 3, 4, 5, -2, 6, 11, 8]) == false
    @test move_one_ball([5, 7, 6, 11, 10]) == false
    @test move_one_ball([1, 4, 5, 7, 6, 9]) == false
    @test move_one_ball([8, 6, 5, 4, 3, 2, 1]) == false
    @test move_one_ball([1, 3, 4, 5, 6, 11, 8]) == false
    @test move_one_ball([3, 5, 6, 8, 11, 12, 9]) == false
    @test move_one_ball([7, 6, 5, 4, 3, 12, 1]) == false
    @test move_one_ball([5, 7, 9, 10, 1, 8, 4]) == false
    @test move_one_ball([1, 3, 6, 7, 9, 8]) == false
    @test move_one_ball([9, 0, 1, 12, 6, 2, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([1, 3, 4, 7, 0]) == true
    @test move_one_ball([1, 2, 3, 4, 5, -2, 7, 8]) == false
    @test move_one_ball([1, 2, 4, 12, 7, 0, 8]) == false
    @test move_one_ball([2, 3, 4, 5, 6, -2, 7, 8]) == false
    @test move_one_ball([9, 1, 6, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([3, 5, 7, 6, 1, 8, 11, 12, 4]) == false
    @test move_one_ball([3, 5, 7, 8, 11, 12, 4]) == false
    @test move_one_ball([8, 7, 5, 4, 3, 2, 0, 1]) == false
    @test move_one_ball([1, 2, 4, 5, 6, 7, -2]) == true
    @test move_one_ball([8, 7, 5, 3, 0, 2]) == false
    @test move_one_ball([-2, 0, 2, 1, 8, 7, 6, 5, 4]) == false
    @test move_one_ball([1, 9, 3, 4, 5, -2, 6, 11, 8]) == false
    @test move_one_ball([0, 1, 12, 6, 2, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([8, 6, 5, 10, 0, 2]) == false
    @test move_one_ball([1, 3, 5, 7, 11, 2, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([9, 0, 1, 12, 6, 2, 8, 7, 4, 3]) == false
    @test move_one_ball([11, 1, 3, 4, 7, 0]) == false
    @test move_one_ball([-2, 2, 5, 4, 7, 6, 9, 8]) == false
    @test move_one_ball([1, 3, 2, 5, 4, 7, 9, 8]) == false
    @test move_one_ball([8, 6, 1, 5, 10, 0, 2]) == false
    @test move_one_ball([1, 2, 5, 7, 9, 6, 8]) == false
    @test move_one_ball([-2, 0, -1, 2, 1, 8, 7, 6, 5, 4]) == false
    @test move_one_ball([9, 0, 1, 12, 6, 11, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([7, 6, 5, 3, 12, 1]) == false
    @test move_one_ball([1, 3, 2, 5, 4, 7, 8]) == false
    @test move_one_ball([5, 3, 2, 9, 1, 8, 4]) == false
    @test move_one_ball([-2, 0, 2, 1, 3, 10, 7, 6, 4]) == false
    @test move_one_ball([1, 12, 3, 4, 7, 0]) == false
    @test move_one_ball([9, 0, 1, 12, 6, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([5, 3, 2, 9, 7, 10, 1, 12, 8, 4]) == false
    @test move_one_ball([-2, 2, 5, 4, 7, 6, 9]) == false
    @test move_one_ball([10, 1, -1, 4, -2, 7, 9, 8]) == false
    @test move_one_ball([9, 0, 1, 12, 6, 11, 5, 8, 7, 3]) == false
    @test move_one_ball([10, 5, 4, 7, 6, 9]) == false
    @test move_one_ball([1, 4, 5, 7, 6, 8, 9]) == false
    @test move_one_ball([7, 6, 5, 3, 12]) == false
    @test move_one_ball([7, 8, 6, 1, 5, 10, 0, 2]) == false
    @test move_one_ball([8, 7, 5, 0, 2]) == false
    @test move_one_ball([8, 7, 5, 3, 0, 1]) == false
    @test move_one_ball([1, 4, 8, 5, 3, 2]) == false
    @test move_one_ball([5, 3, 2, 6, 7, 1, 0, 8, 4]) == false
    @test move_one_ball([5, 3, 2, 9, 8, 4]) == false
    @test move_one_ball([7, 6, 5, 3]) == false
    @test move_one_ball([9, 1, 6, 2, 5, -2, 8, 7, 4, 3]) == false
    @test move_one_ball([3, 6, 10, 11, 12, 9, 5]) == false
    @test move_one_ball([5, 11, 2, 7, 10, 1, 8, 4, 9]) == false
    @test move_one_ball([1, 2, 5, 7, 9, 8]) == false
    @test move_one_ball([1, 3, 4, 5, -2, 6, 2, 11, 8]) == false
    @test move_one_ball([3, 6, 10, 11, 12, 7, 9, 5]) == false
    @test move_one_ball([2, 3, 4, 5, -2, 7, 8]) == false
    @test move_one_ball([3, 2, 6, 7, 1, 8, 4]) == false
    @test move_one_ball([9, 1, 12, 6, 11, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([9, 1, 6, 5, 8, 7, 4]) == false
    @test move_one_ball([1, 3, 2, 5, 4, 8]) == false
    @test move_one_ball([11, 2, 4, 7, -1, 8]) == false
    @test move_one_ball([9, 0, 1, 2, 12, 6, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([5, 2, 7, 10, 1, 4, 9]) == false
    @test move_one_ball([1, 4, 8, 9, 5, 2, 6]) == false
    @test move_one_ball([12, 1, 3, 2, 5, 4, 8]) == false
    @test move_one_ball([5, 7, 6, 10]) == false
    @test move_one_ball([11, 2, 4, 7, 8]) == true
    @test move_one_ball([0, 5, 2, 7, 1, 8, 4]) == false
    @test move_one_ball([0, 1, 2, 12, 6, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([2, 12, 3, 4, 7, 0]) == false
    @test move_one_ball([1, 9, 3, 5, -2, 6, 11, 8]) == false
    @test move_one_ball([8, 7, 5, 11, 0, 2]) == false
    @test move_one_ball([1, 3, 5, 7, 4, 2, 9]) == false
    @test move_one_ball([4, 7, 6, 8, 3, 11, 10]) == false
    @test move_one_ball([2, 9, 3, 4, 7, 0]) == false
    @test move_one_ball([10, 1, 2, 7, 9, 6, 8]) == false
    @test move_one_ball([3, 5, 8, 11, 10, 4]) == false
    @test move_one_ball([5, 7, 9, 10, 1, 8]) == false
    @test move_one_ball([8, 6, 1, 10, 0, 2]) == false
    @test move_one_ball([2, 4, -2, 7, 9, 8]) == false
    @test move_one_ball([1, 3, -3, 9, -2, 7, 10, 8]) == false
    @test move_one_ball([3, 4, -2, 7, 9, 8]) == false
    @test move_one_ball([8, 7, 6, 5, 3, 4, 1]) == false
    @test move_one_ball([8, 7, 6, 5, 9, 3, 1]) == false
    @test move_one_ball([8, 6, 5, 10, 0, 2, 1]) == false
    @test move_one_ball([10, 5, 4, 7, 9]) == false
    @test move_one_ball([-2, 0, -1, 2, 1, 8, 6, 5, 4]) == false
    @test move_one_ball([1, 2, 4, 12, 7, 5, 8]) == false
    @test move_one_ball([1, 2, 3, 10, 4, 11, 5, 6, 9, 8]) == false
    @test move_one_ball([1, 2, 12, 7, 0, 8]) == false
    @test move_one_ball([4, 7, 0]) == true
    @test move_one_ball([3, 4, 5, 6, 8]) == true
    @test move_one_ball([1, 2, 4, 0, -2, 7, 6, 12]) == false
    @test move_one_ball([5, 9, 6, 10]) == false
    @test move_one_ball([10, 2, 4, 6, 9]) == true
    @test move_one_ball([-2, 2, 5, 4, 7, 6, 8]) == false
    @test move_one_ball([1, 2, 6, 0, 8]) == false
    @test move_one_ball([1, 3, 5, 8, 2, 9]) == false
    @test move_one_ball([9, 8, 7, 6, -2, 1]) == false
    @test move_one_ball([3, 5, 8, 11, 10]) == false
    @test move_one_ball([1, 4, 7, 0]) == true
    @test move_one_ball([1, 3, 5, 6, 8, 2]) == false
    @test move_one_ball([1, 12, 2, -2, 7, 9, 6]) == false
    @test move_one_ball([3, 5, 7, 4, 2, 9]) == false
    @test move_one_ball([9, 8, 7, 11, -2, 1]) == false
    @test move_one_ball([10, 5, 12, 4, 6, 9]) == false
    @test move_one_ball([1, 3, 7, 6, 9]) == false
    @test move_one_ball([9, 1, 12, 6, 11, 5, 8, 4, 3]) == false
    @test move_one_ball([12, 6, 5, 4, 3, 1]) == false
    @test move_one_ball([1, 4, -3, 5, -1]) == false
    @test move_one_ball([8, 6, 3, 4, 1]) == false
    @test move_one_ball([2, 3, 5, 12, 7, 9, 8]) == false
    @test move_one_ball([3, 2, 6, 7, 1, 4]) == false
    @test move_one_ball([8, 7, 0, 2]) == false
    @test move_one_ball([9, 1, 6, 5, 8, 4, 3]) == false
    @test move_one_ball([3, 7, 0, 2]) == true
    @test move_one_ball([1, 3, 5, 7, 11, 2, 6, 8, 10, 12]) == false
    @test move_one_ball([2, 3, -3, 9, -2, 7, 10, 8]) == false
    @test move_one_ball([1, 2, 4, -2, 7, -3, 8, 9]) == false
    @test move_one_ball([4, 1, 5, 7, 6, 8, 11, 12, 10]) == false
    @test move_one_ball([7, 5, 3, 12]) == false
    @test move_one_ball([8, 5, 11, 0, 2]) == false
    @test move_one_ball([10, 1, 2, -2, 7, 9, 8, 5]) == false
    @test move_one_ball([5, 3, 2, 6, 9, 7, 1, 12, 8, 4]) == false
    @test move_one_ball([-2, 1, 5, 3, 7, 6, 9, 8]) == false
    @test move_one_ball([8, 1, 5, 10, 0, 2]) == false
    @test move_one_ball([9, 7, 6, -2, 1]) == false
    @test move_one_ball([1, 2, 4, 5, 6, -3, -2]) == true
    @test move_one_ball([10, 1, -1, 11, 4, -2, 7, 9, 8]) == false
    @test move_one_ball([9, 7, 6, -1, 1]) == false
    @test move_one_ball([7, 6, 5, 11, 3, 12]) == false
    @test move_one_ball([1, 3, 2, 5, 8]) == false
    @test move_one_ball([1, 9, 3, 5, -2, 6, 11]) == false
    @test move_one_ball([7, 8, 1, 5, 10, 0, 2]) == false
    @test move_one_ball([11, 4, 7, -1, 8]) == false
    @test move_one_ball([7, 5, 3, 9]) == false
    @test move_one_ball([5, 7, 8, 11, 12, 4]) == true
    @test move_one_ball([1, 2, 12, 4, 7, 9]) == false
    @test move_one_ball([7, 6, 5, 4, 3, -2, 2, 1]) == false
    @test move_one_ball([5, 3, 11, 6, 7, 1, 4]) == false
    @test move_one_ball([1, 2, 3, 4, 5, -1, 9, 8]) == false
    @test move_one_ball([4, 7, 6, 3, 11, -2]) == false
    @test move_one_ball([1, 3, 4, 5, -1, 6, 2, 11, 8]) == false
    @test move_one_ball([1, 0, 3, 5, 4, 7, 6, 9]) == false
    @test move_one_ball([0, 2, 5, 4, 7, 6]) == false
    @test move_one_ball([10, 5, 7, 6, 9]) == false
    @test move_one_ball([1, 2, 4, 12, 7, 10, 8]) == false
    @test move_one_ball([5, 2, 7, 11, 10, 1, 4, 9]) == false
    @test move_one_ball([10, 1, 2, -2, 7, 9, 8]) == false
    @test move_one_ball([1, 2, 7, 4, 5, -2, 6, 11, 8, 12]) == false
    @test move_one_ball([1, 4, 5, 7, 0]) == true
    @test move_one_ball([10, 1, 2, -2, 6, 9, 8]) == false
    @test move_one_ball([1, 3, 5, 7, 6, 8, 11, 12, 4]) == false
    @test move_one_ball([1, 2, 4, 5, 6, 7, -1]) == true
    @test move_one_ball([0, 5, 7, 1, 8, 4]) == false
    @test move_one_ball([1, 7, 0]) == true
    @test move_one_ball([1, 3, 7, 12, 6, 9]) == false
    @test move_one_ball([2, 4, 9, 0, 8]) == false
    @test move_one_ball([3, 2, 9, 1, 8, 4]) == false
    @test move_one_ball([8, 7, -2, 5, 3, 4, 1]) == false
    @test move_one_ball([1, 2, 4, -2, 7, 0, 10, 8]) == false
    @test move_one_ball([-48, 1, 12, 11, -1, 51, 97, -50]) == false
    @test move_one_ball([8, 7, 5, 11, 3, 0, 2]) == false
    @test move_one_ball([3, 7, 6, 9]) == false
    @test move_one_ball([-2, 0, 2, 1, 8, 7, 6, 5, 97]) == false
    @test move_one_ball([7, 4, 1, 5, 10, 0, 2]) == false
    @test move_one_ball([7, 10, 5, 3, 4, 1]) == false
    @test move_one_ball([3, 7, 2]) == true
    @test move_one_ball([5, 2, 7, 10, 1, 4, 97]) == false
    @test move_one_ball([1, 9, 3, 4, -50, -2, 6, 11, 8]) == false
    @test move_one_ball([7, -1, 6, 5, 3, 12]) == false
    @test move_one_ball([9, 8, 6, -2, 1]) == false
    @test move_one_ball([1, 12, 2, -3, 7, 9, 6]) == false
    @test move_one_ball([3, 6, 10, 11, 12, 9]) == false
    @test move_one_ball([10, 1, 2, 5, -2, 6, 7, 9, 8]) == false
    @test move_one_ball([1, 5, 7, 6, 9]) == false
    @test move_one_ball([1, 12, 3, 4, 7]) == false
    @test move_one_ball([1, -2, 3, 5, 6, 8, 2]) == false
    @test move_one_ball([9, 1, 12, 6, 11, 5, 7, 4, 3]) == false
    @test move_one_ball([10, 7, 0, 9]) == false
    @test move_one_ball([5, 7, 9, 10, 0, 8]) == false
    @test move_one_ball([10, 7, 5, 11, 3, 12]) == false
    @test move_one_ball([1, 2, 4, 0, -2, 6, 12]) == false
    @test move_one_ball([1, -2, 5, 6, 8, 2]) == false
    @test move_one_ball([3, 5, 4, 7, 6, 9, 8]) == false
    @test move_one_ball([-2, 0, 2, 1, 8, 7, 6, 5, -48, 4]) == false
    @test move_one_ball([2, 3, 5, 12, 6, 9, 8]) == false
    @test move_one_ball([1, 3, -48, 7, 9, 11, 2, 4, 6, 8, 10, 12]) == false
    @test move_one_ball([8, 7, 6, 5, -2, 3, 1]) == false
    @test move_one_ball([10, 5, 7, 9]) == true
    @test move_one_ball([3, 2, 5, 4, 7, 9, 8]) == false
    @test move_one_ball([1, 2, 3, 4, 5, -2, 9, 0]) == false
    @test move_one_ball([9, 6, 5, 10, 0, 2, 1]) == false
    @test move_one_ball([10, 3, 2, -2, 6, 7, 9, 8]) == false
    @test move_one_ball([10, 1, 2, 7, 9, 8]) == false
    @test move_one_ball([10, 1, 2, 9, 6, 8]) == false
    @test move_one_ball([5, 2, -1, 10, 1, 8, 4, 9]) == false
    @test move_one_ball([0, 5, 2, 7, 1, 8]) == false
    @test move_one_ball([1, 6, 5, 8, 7, 4]) == false
    @test move_one_ball([11, 97, 4, 7, -1, 8, 2]) == false
    @test move_one_ball([7, 5, 3, 0, 2, 1]) == false
    @test move_one_ball([2, 5, 97, 7, 6, 9, 8]) == false
    @test move_one_ball([3, 7, 4, 97, 5, 2]) == false
    @test move_one_ball([1, 3, -3, 2, 5, 8]) == false
    @test move_one_ball([7, 5, 3, 2, 1]) == false
    @test move_one_ball([8, 6, 3, 4, 5, 1]) == false
    @test move_one_ball([10, 1, 2, 5, 6, 7, 9, 8]) == false
    @test move_one_ball([8, 0]) == true
    @test move_one_ball([9, 1, 6, 5, 4, 3]) == false
    @test move_one_ball([9, 1, 2, 5, 8, 7, 4, 3]) == false
    @test move_one_ball([1, 3, 2, 5, 4]) == false
    @test move_one_ball([3, 5, 7, 4, 9]) == false
    @test move_one_ball([5, 7, 3, 9, 10, 1, 8, 4]) == false
    @test move_one_ball([7, 6, 5, 3, 9]) == false
    @test move_one_ball([1, 51, 2, 5, 8]) == false
    @test move_one_ball([7, 4, 97, 5, 2]) == false
    @test move_one_ball([3, 2, 9, 1, 8]) == false
    @test move_one_ball([1, 3, 5, 7, 6, 8, 11, 13, 4]) == false
    @test move_one_ball([52, -48, 1, 12, 11, -1, 51, 97, -50]) == false
    @test move_one_ball([10, 0, 9]) == true
    @test move_one_ball([-48, 1, 3, 4, 7, 0]) == false
    @test move_one_ball([11, 3, 7, -1, 8]) == false
    @test move_one_ball([5, 3, 13, 2, 6, 7, 1, 8, 4]) == false
    @test move_one_ball([-2, 0, -1, 2, 8, 6, 5, 4, 1]) == false
    @test move_one_ball([5, 2, 10, -48, 1, 8, 4]) == false
    @test move_one_ball([1, 3, 2, 5, 4, 7, 9, 11, 8]) == false
    @test move_one_ball([9, 0, 1, 2, 12, 6, 5, 7, 4, 3]) == false
    @test move_one_ball([1, 51, 5, 8]) == false
    @test move_one_ball([2, 3, 4, 5, -2, 9, 8]) == false
    @test move_one_ball([10, 1, 2, 9, 6]) == false
    @test move_one_ball([0, 5, 2, 7, 1, 4]) == false
    @test move_one_ball([2, 3, -3, 9, 10, 8]) == false
    @test move_one_ball([10, 1, 6, 2, 5, -2, 8, 7, 4, 3]) == false
    @test move_one_ball([5, 7, 8, 11, 4]) == true
    @test move_one_ball([8, 6, 3, -48, 4, 5, 1]) == false
    @test move_one_ball([1, 2, 3, 4, 5, -2, 10, 0]) == false
    @test move_one_ball([8, 7, 5, 10, 3, 2, 1]) == false
    @test move_one_ball([8, 7, 5, 3, 10]) == false
    @test move_one_ball([12, 2, 10, 3, 11, 5, 6, 9, 8]) == false
    @test move_one_ball([1, 2, 7, 4, 5, -2, 6, 11, 9, 12]) == false
    @test move_one_ball([1, 2, 3, 4, 5, -2, 6, 8]) == false
    @test move_one_ball([2, 3, 9, -2, 7, 10, 8]) == false
    @test move_one_ball([3, 5, 7, 4, 2, 10, 9]) == false
    @test move_one_ball([8, 9, 7, 5, 11, 0, 2]) == false
    @test move_one_ball([1, 2, 5, 9, 8]) == false
    @test move_one_ball([7, 5, 4, 3, 2, 0, 1]) == false
    @test move_one_ball([-2, 5, 6, 8, 2]) == false
    @test move_one_ball([7, 5, 10, 0, 2]) == false
    @test move_one_ball([10, 1, -1, 11, 3, -2, 7, 9, 8]) == false
    @test move_one_ball([1, 3, 5, 7, 6, 8, 13, 4]) == false
    @test move_one_ball([10, 1, 9, 6, 8]) == false
    @test move_one_ball([3, 2, 5, 7, 1, 4]) == false
    @test move_one_ball([4, 7, -1, 8]) == false
    @test move_one_ball([10, 0]) == true
    @test move_one_ball([1, 2, 7, 9, 8]) == false
    @test move_one_ball([13, 8, 0]) == false
    @test move_one_ball([1, 5, 3, 6, 7, 9, 8]) == false
    @test move_one_ball([1, 12, 3, 6, 7, 9, 8]) == false
    @test move_one_ball([4, 7, 6, 11, -2]) == false
    @test move_one_ball([12, 1, 9, 3, 2, 5, 4, 8]) == false
    @test move_one_ball([10, 2, 9, 6]) == false
    @test move_one_ball([5, -50, 8, 6, 11, 10]) == false
    @test move_one_ball([10, 9, 8, 7, 5, 4, 3, 2, 1]) == false
    @test move_one_ball([5, 3, 13, 2, 6, 51, 7, 1, 8, 4]) == false
    @test move_one_ball([1, 3, 5, 4, 7, 6, 51]) == false
    @test move_one_ball([1, 9, 3, 4, -50, -2, 6, 11]) == false
    @test move_one_ball([2, 3, 9, 10, 8]) == false
    @test move_one_ball([1, 3, 7, 4, 2, 9]) == false
    @test move_one_ball([1, 0]) == true
    @test move_one_ball([11, 51, 1, 3, 7, 0]) == false
    @test move_one_ball([8, 4, 11, 0, 2]) == false
    @test move_one_ball([-2, 0, -1, 2, 1, 8, 5, 4]) == false
    @test move_one_ball([7, -48, 6, 5, 3, 9]) == false
    @test move_one_ball([2, 9, 12, 10, 8]) == false
    @test move_one_ball([1, 2, 0, 3, 4, 5, 6, 11, 8]) == false
    @test move_one_ball([3, 5, 7, 11, 9, 4]) == false
    @test move_one_ball([1, 3, 5, -2, 6, 2, 11, 8]) == false
    @test move_one_ball([9, 8, 11, -2, 1]) == false
    @test move_one_ball([1, 2, 3, 4, 5, 6, 10]) == true
    @test move_one_ball([3, 4, 7, 2]) == true
    @test move_one_ball([3, 7, 0]) == true
    @test move_one_ball([1, -50, 12, 2, -2, 7, 9, 6]) == false
    @test move_one_ball([9, 1, 12, 6, 5, 7, 4, 3]) == false
    @test move_one_ball([3, 5, 7, -2, 8, 11, 12, 9]) == false
    @test move_one_ball([12, 2, 5, 4, 3, 1]) == false
    @test move_one_ball([-2, 2, 6, 9, 4]) == false
    @test move_one_ball([1, 2, 4, 0, -2, 6]) == false
    @test move_one_ball([1, 2, 0, 3, 4, 5, -3, 9, 6, 11, 8]) == false
    @test move_one_ball([1, 13, 2, 5, 8]) == false
    @test move_one_ball([8, 7, 0, 3, 10]) == false
    @test move_one_ball([3, 4, 6, 8]) == true
    @test move_one_ball([5, 3, 2, 9, 11, 4]) == false
    @test move_one_ball([7, 5, 11, 3, 2, 1]) == false
    @test move_one_ball([10, 1, 2, 9, 5, 6, 8]) == false
    @test move_one_ball([0, 5, 2, 7, 1, 12]) == false
    @test move_one_ball([0, 2, 1, 3, 10, 7, 6, 4]) == false
    @test move_one_ball([1, 4, 0, -2, 7, 9, 8]) == false
    @test move_one_ball([9, 1, 5, 4, 3]) == false
    @test move_one_ball([12, 0, 97, 7, 3, 2, 9, 5, 4, 8]) == false
    @test move_one_ball([2, 4, 5, -2, 9, 8]) == false
    @test move_one_ball([10, 5, 1, 2, 4, -2, 7, 9, 8]) == false
    @test move_one_ball([1, 2, 4, 12, 10, 8]) == false
    @test move_one_ball([10, 2, 7]) == true
    @test move_one_ball([1, 13, 2, 3, 4, 5, -2, 6, 8]) == false
    @test move_one_ball([-48, 3, 4, 7, 0]) == false
    @test move_one_ball([4, 1, 5, 9, 7, 6, 8, 11, 12, 10]) == false
    @test move_one_ball([9, 1, 12, 6, 5, 7, 3]) == false
    @test move_one_ball([8, 7, 6, 4, 3, 2, 1]) == false
    @test move_one_ball([1, 2, 3, 4, 5, -2, 12, 6, 8]) == false
    @test move_one_ball([-1, 12, 2, 5, 4, 3, 1]) == false
    @test move_one_ball([11, 0, 9]) == true
    @test move_one_ball([10, 0, 3, 9, 6, 8]) == false
    @test move_one_ball([2, 3, 10, 8]) == false
    @test move_one_ball([5, 7, 10, 8, 11, 12, 4]) == false
    @test move_one_ball([4, 7, 5, 11, 3, 1]) == false
    @test move_one_ball([1, 4, 51, 7, 9, 8]) == false
    @test move_one_ball([-48, 1, 3, 4, 6, 0]) == false
    @test move_one_ball([51, 13, 2, 3, 4, 5, -2, 6, 8]) == false
    @test move_one_ball([5, 3, 11, 6, 7, 2, 1, 4]) == false
    @test move_one_ball([10, 2, -2, 7, 9, 8, 5]) == false
    @test move_one_ball([1, -2, 7, 9]) == false
    @test move_one_ball([1, 2, 6, 8]) == true
    @test move_one_ball([4, 7, 5, 11, -50, 1]) == false
    @test move_one_ball([3, 2, 6, 7, 1, 8, 51, 4]) == false
    @test move_one_ball([10, 1, 2, 9]) == true
    @test move_one_ball([1, 3, 5, 7, 6, 8, 13]) == false
    @test move_one_ball([9, 0, 1, 12, 6, 8, 7, 4, 3]) == false
    @test move_one_ball([1, 7, 2, 4, 5, 6, 8]) == false
    @test move_one_ball([-2, 2, 9, 4]) == false
    @test move_one_ball([2, 3, -3, 9, 10]) == false
    @test move_one_ball([8, 7, 5, 3, 9]) == false
    @test move_one_ball([10, 9, 8, 7, 6, 5, 4, 2, 1]) == false
    @test move_one_ball([10, 9, 8, 7, 6, 4, 3, 2, 1]) == false
    @test move_one_ball([8, 7, 5, 3, 52, 10, -50, 0, 2]) == false
    @test move_one_ball([2, 5, 97, 7, 3, 9, 8]) == false
    @test move_one_ball([3, 7, 2, 9, -2, 1, 8]) == false
    @test move_one_ball([8, 7, 97, 9]) == false
    @test move_one_ball([2, 7, 9, 10, 1, 8]) == false
    @test move_one_ball([4, 7, 5, -50, 1, 11]) == false
    @test move_one_ball([5, 8, 7, 6, 10]) == false
    @test move_one_ball([0, 13, 7, 5, -2, 6, 11, 8, 12]) == false
    @test move_one_ball([2, 7, 1, 0]) == false
    @test move_one_ball([1, 0, -2, 7, 9, 8]) == false
    @test move_one_ball([-2, 2, 4, 7, 6, 8]) == false
    @test move_one_ball([9, 5, -50, 2, 7, 10, 1, 8, 4]) == false
    @test move_one_ball([1, 3, -3, 2, 8]) == false
    @test move_one_ball([4, 5, 7, 6, 8, 9]) == false
    @test move_one_ball([4, 5, 11, 1]) == true
    @test move_one_ball([1, 7, 8]) == true
    @test move_one_ball([2, 5, 4, 7, 6, 9]) == false
    @test move_one_ball([-2, 0, 2, 8, 7, 6, 5, 4]) == false
    @test move_one_ball([12, 1, 9, 2, 5, 4, 8]) == false
    @test move_one_ball([9, 8, 10, 7, 5, 4, 3, 2, 1]) == false
    @test move_one_ball([2, 4, 5, -2, 9]) == false
    @test move_one_ball([13, 2, 5, 8]) == true
    @test move_one_ball([1, 2, 4, 5, 6, 7]) == true
    @test move_one_ball([8, 7, 6, 5, -2, -50, 3, 0, 1]) == false
    @test move_one_ball([4, 7, 3, 11, -2]) == false
    @test move_one_ball([1, 4, -3, 5]) == false
    @test move_one_ball([6, 3, 11, -2]) == false
    @test move_one_ball([3, 2, 6, 7, 12, 4]) == false
    @test move_one_ball([5, 2, 7, 10, 4, 9]) == false
    @test move_one_ball([10, 3, 2, -2, -50, 6, 7, 9, 8]) == false
    @test move_one_ball([-1, 12, 5, 4, 3, 1]) == false
    @test move_one_ball([8, 7, 5, 3, -1, 2, 1]) == false
    @test move_one_ball([3, 2, 4, 5, 6, -3, -2]) == false
    @test move_one_ball([4, 1, 5, -50, 6, 11, 7]) == false
    @test move_one_ball([3, 7, 1]) == true
    @test move_one_ball([3, 7, 4, 2, 9, -3, 1, 8]) == false
    @test move_one_ball([1, 3, 5, 7, 6, 8, 12, 4]) == false
    @test move_one_ball([3, 7, 1, 2]) == true
    @test move_one_ball([9, 1, 6, 11, 5, 8, 4, 3]) == false
    @test move_one_ball([0, 1, 6, 2, 8, 7, 4, 3]) == false
    @test move_one_ball([1, 3, 5, 7, 11, 2, 6, 8, 10]) == false
    @test move_one_ball([2, 10, 13]) == true
    @test move_one_ball([10, 5, 4, 7, 6]) == false
    @test move_one_ball([4, 5, 6, 8, 11, 9]) == false
    @test move_one_ball([2, 3, 9, 53, 10, 8]) == false
    @test move_one_ball([1, 3, 2, -3, 9, -2, 7, 10, 8]) == false
    @test move_one_ball([1, 2, 0, 12, 3, 4, 5, 6, 11, 8]) == false
    @test move_one_ball([7, 4, 97, 5, 11]) == false
    @test move_one_ball([3, 7]) == true
    @test move_one_ball([1, 2, 4, 7, 9, 3, 8]) == false
    @test move_one_ball([5, 7, 10, 8, 4]) == false
    @test move_one_ball([10, 5, 4, 6]) == false
    @test move_one_ball([-2, 0, 2, 1, 3, 8, -1, 7, 6, 5, 4]) == false
    @test move_one_ball([9, 6, 5, 10, 0, 1]) == false
    @test move_one_ball([8, 7, -2, 5, 3, 1]) == false
    @test move_one_ball([4, 5, 7, 6, 8, -3]) == false
    @test move_one_ball([-2, 6, 8, 2]) == false
    @test move_one_ball([1, 2, 4, -2, 0, 10, 8]) == false
    @test move_one_ball([1, 4, 51, 7, 9, 53, 8]) == false
    @test move_one_ball([4, 7, -3, 3, 11, -2]) == false
    @test move_one_ball([4, 7]) == true
    @test move_one_ball([4, 6, 11, 8]) == false
    @test move_one_ball([10, 9, 8, 7, 6, 5, 4, 3, 51, 1]) == false
    @test move_one_ball([1, -2, 7, 9, 8]) == false
end
