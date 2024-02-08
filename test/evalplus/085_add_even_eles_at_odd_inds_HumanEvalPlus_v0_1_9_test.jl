@testitem "085_add_even_eles_at_odd_inds_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "085_add_even_eles_at_odd_inds.jl"))
    @test add_even_eles_at_odd_inds([3, 5, 7, 9]) == 0
    @test add_even_eles_at_odd_inds([2, 4, 6, 8]) == 8
    @test add_even_eles_at_odd_inds([1, 2, 3, 4]) == 0
    @test add_even_eles_at_odd_inds([5, 4, 7, 2, 1]) == 0
    @test add_even_eles_at_odd_inds([0, 0, 0, 0, 0]) == 0
    @test add_even_eles_at_odd_inds([1, 3, 5, 7]) == 0
    @test add_even_eles_at_odd_inds([2, 3, 4, 5]) == 6
    @test add_even_eles_at_odd_inds([0]) == 0
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6]) == 0
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10]) == 18
    @test add_even_eles_at_odd_inds([2, 4, 0, 8]) == 2
    @test add_even_eles_at_odd_inds([2, 3, 6, 8]) == 8
    @test add_even_eles_at_odd_inds([2, 3, 5, 4]) == 2
    @test add_even_eles_at_odd_inds([2, 3, 4, 5, 2]) == 8
    @test add_even_eles_at_odd_inds([8]) == 8
    @test add_even_eles_at_odd_inds([10, 2, 3, 5, 4]) == 14
    @test add_even_eles_at_odd_inds([10, 4, 3, 5, 4]) == 14
    @test add_even_eles_at_odd_inds([9, 9, 5, 7]) == 0
    @test add_even_eles_at_odd_inds([1, 3, 4]) == 4
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 2]) == 2
    @test add_even_eles_at_odd_inds([6, 2, 3, 5, 4]) == 10
    @test add_even_eles_at_odd_inds([5, 3, 21, 64, 3, 1, 1]) == 0
    @test add_even_eles_at_odd_inds([2, 3, 5, 2]) == 2
    @test add_even_eles_at_odd_inds([2, 3, 2, 6, 8]) == 12
    @test add_even_eles_at_odd_inds([2, 3, 4, 5, 5]) == 6
    @test add_even_eles_at_odd_inds([10, 4, 3, 3, 5, 4]) == 10
    @test add_even_eles_at_odd_inds([0, 0, 0, 0]) == 0
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 2, 1, 3]) == 2
    @test add_even_eles_at_odd_inds([8, 3, 5, 2]) == 8
    @test add_even_eles_at_odd_inds([0, 0, 0, 0, 21, 0]) == 0
    @test add_even_eles_at_odd_inds([21, 3, 64, 5, 2]) == 66
    @test add_even_eles_at_odd_inds([2, 4, 5, 2]) == 2
    @test add_even_eles_at_odd_inds([5, 3, 21, 64, 3, 2, 64, 1, 1]) == 64
    @test add_even_eles_at_odd_inds([1, 3, 4, 4]) == 4
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 10]) == 18
    @test add_even_eles_at_odd_inds([1, 3, 4, 5]) == 4
    @test add_even_eles_at_odd_inds([3, 2, 3, 5, 4]) == 4
    @test add_even_eles_at_odd_inds([1, 3, 4, 4, 3]) == 4
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 2, 1, 3, 3]) == 2
    @test add_even_eles_at_odd_inds([1, 2, 2, 4, 3, 2, 1, 3]) == 2
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 3, 2, 1, 3, 1]) == 0
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 64, 10, 10]) == 82
    @test add_even_eles_at_odd_inds([4, 4, 7, 2, 1]) == 4
    @test add_even_eles_at_odd_inds([1, 21, 2, 3, 4]) == 6
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 3, 2, 1, 2]) == 0
    @test add_even_eles_at_odd_inds([2, 0, 2, 5, 2]) == 6
    @test add_even_eles_at_odd_inds([0, 0, 0, 6, 0]) == 0
    @test add_even_eles_at_odd_inds([1, 2, 2, 4, 3, 5, 2, 1, 3]) == 4
    @test add_even_eles_at_odd_inds([5, 21, 64, 3, 1, 1, 3]) == 64
    @test add_even_eles_at_odd_inds([1, 2, 2, 4, 3, 5, 2, 1, 3, 2]) == 4
    @test add_even_eles_at_odd_inds([6, 2, 3, 5, 4, 4, 4]) == 14
    @test add_even_eles_at_odd_inds([21, 5, 3, 64, 5, 2]) == 0
    @test add_even_eles_at_odd_inds([2, 3, 4]) == 6
    @test add_even_eles_at_odd_inds([4, 2, 3, 5, 2]) == 6
    @test add_even_eles_at_odd_inds([1, 3, 3, 4]) == 0
    @test add_even_eles_at_odd_inds([2, 3, 4, 5, 2, 4]) == 8
    @test add_even_eles_at_odd_inds([21, 5, 3, 6, 64, 5, 2]) == 66
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 2, 1, 3, 2]) == 2
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 64, 3, 10, 3]) == 82
    @test add_even_eles_at_odd_inds([1, 2, 3, 7, 4, 2, 1, 3, 1]) == 4
    @test add_even_eles_at_odd_inds([0, 0]) == 0
    @test add_even_eles_at_odd_inds([21, 3, 64, 2]) == 64
    @test add_even_eles_at_odd_inds([1, 3, 4, 4, 1]) == 4
    @test add_even_eles_at_odd_inds([6, 2, 3, 5, 4, 4, 4, 2]) == 14
    @test add_even_eles_at_odd_inds([1, 2, 2, 4, 3, 3, 2, 1, 3]) == 4
    @test add_even_eles_at_odd_inds([8, 3, 5, 2, 8, 2]) == 16
    @test add_even_eles_at_odd_inds([8, 1, 2, 3, 3, 2]) == 10
    @test add_even_eles_at_odd_inds([2, 3, 4, 5, 2, 4, 4]) == 12
    @test add_even_eles_at_odd_inds([7, 2, 3, 5, 4, 4, 9, 4, 2]) == 6
    @test add_even_eles_at_odd_inds([5, 21, 64, 3, 1, 1, 3, 21]) == 64
    @test add_even_eles_at_odd_inds([3, 4]) == 0
    @test add_even_eles_at_odd_inds([5, 3, 21, 64, 3, 1, 1, 1]) == 0
    @test add_even_eles_at_odd_inds([1, 3, 4, 4, 3, 4]) == 4
    @test add_even_eles_at_odd_inds([21, 5, 3, 6, 20, 64, 5, 2]) == 20
    @test add_even_eles_at_odd_inds([2, 3, 4, 8, 2]) == 8
    @test add_even_eles_at_odd_inds([8, 3, 5, 2, 8, 3]) == 16
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 1]) == 0
    @test add_even_eles_at_odd_inds([8, 8]) == 8
    @test add_even_eles_at_odd_inds([6, 2, 3, 5, 5]) == 6
    @test add_even_eles_at_odd_inds([9, 9, 5, 64]) == 0
    @test add_even_eles_at_odd_inds([2, 21, 3, 64, 2, 21]) == 4
    @test add_even_eles_at_odd_inds([1, 3, 5]) == 0
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 1, 7]) == 0
    @test add_even_eles_at_odd_inds([5, 3, 21, 64, 3, 1, 2, 1]) == 2
    @test add_even_eles_at_odd_inds([0, 8, 5, 2, 8, 2]) == 8
    @test add_even_eles_at_odd_inds([0, 8, 5, 2, 2, 8, 2]) == 4
    @test add_even_eles_at_odd_inds([21, 3, 64, 8, 2]) == 66
    @test add_even_eles_at_odd_inds([2, 4, 6, 64, 10, 10]) == 18
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 3, 2, 1, 3, 1, 3]) == 0
    @test add_even_eles_at_odd_inds([20, 21, 64, 3, 1, 1, 3, 21]) == 84
    @test add_even_eles_at_odd_inds([21, 3, 10, 64, 5, 2]) == 10
    @test add_even_eles_at_odd_inds([2, 3, 2, 6, 8, 8]) == 12
    @test add_even_eles_at_odd_inds([2, 3, 2, 6, 8, 1, 8]) == 20
    @test add_even_eles_at_odd_inds([0, 0, 0, 21, 0]) == 0
    @test add_even_eles_at_odd_inds([6, 2, 3, 5]) == 6
    @test add_even_eles_at_odd_inds([-64, -4, 5, -78]) == -64
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 7, 10, 6, 9, 23, 2]) == 6
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]) == 128
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 8, 1, 9, 10, 5]) == 16
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 66, 77, 88, 99, 100]) == 0
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 0
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 15, 18]) == 0
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 11, 13, 15]) == 18
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 7, 10, 14]) == 14
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29]) == 1038
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 11, 13, 2, 4, 6, 8, 10, 12, 14]) == 24
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 10
    @test add_even_eles_at_odd_inds([9, 4, 6, 10, 11, 13, 15]) == 6
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 13, 15]) == 136
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 13, 15, 13]) == 136
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 66, 77, 88, 99, 100, 99]) == 0
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 22
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 42, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 110
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 20]) == 80
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 7, 10]) == 0
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 13, 14, 15, 16, 99, 18, 19, 20, 10]) == 22
    @test add_even_eles_at_odd_inds([3, 6, 7, 4, 8, 1, 9, 10, 5]) == 8
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 7, 1, 10, 6, 9, 23, 2]) == 12
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 14, 15, 16, 9, 17, 18, 19, 20]) == 42
    @test add_even_eles_at_odd_inds([3, 6, 7, 4, 8, 1, 9, 10, 5, 10]) == 8
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 7, 8]) == 616
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 13, 15, 13, 10]) == 136
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17]) == 10
    @test add_even_eles_at_odd_inds([3, 6, 7, 4, 8, 1, 9, 10, 5, 8]) == 8
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 66, 77, 88, 99, 100, 100, 55]) == 100
    @test add_even_eles_at_odd_inds([3, 920, 7, 4, 8, 0, 9, 10, 5]) == 8
    @test add_even_eles_at_odd_inds([16, 15, 4, 6, 26, 10, 11, 13, 15]) == 46
    @test add_even_eles_at_odd_inds([16, 15, 4, 6, 26, 10, 11, 13, 15, 13]) == 46
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 7, 8, 187]) == 616
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 187, 920, 42, 37, 29, 7, 8]) == 1032
    @test add_even_eles_at_odd_inds([1, 5, 8, 7, 10, 6, 9, 23, 2, 7]) == 20
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 7, 8, 6, 100]) == 716
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 7, 8, 6, 100]) == 1044
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 920, 12, 15, 18]) == 30
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 3, 187, 920, 42, 37, 29, 7, 8, 187]) == 616
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 187, 42, 37, 29, 7, 8]) == 162
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 16, 9, 0, 12, 15, 18]) == 16
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 66, 77, 88, 99, 55, 99]) == 0
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 1, 1, 26, 10, 44, 9, 2]) == 72
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 187, 42, 37, 29, 7, 8, 187]) == 162
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 14, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 16]) == 132
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 8, 1, 1, 26, 10, 44, 9, 2]) == 18
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 7, 10, 6, 9, 23, 2, 9]) == 6
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 42, 13, 14, 15, 16, 17, 18, 19, 10]) == 100
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 7, 6, 9, 23, 2]) == 2
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 187, 920, 42, 37, 28, 7, 8, 187]) == 644
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 187, 920, 42, 37, 28, 6, 8, 187, 9]) == 644
    @test add_even_eles_at_odd_inds([16, 44, 15, 4, 6, 26, 11, 13, 15]) == 22
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 13, 14, 15, 17, 18, 19, 20]) == 26
    @test add_even_eles_at_odd_inds([2, 4, 8, 10, 11, 13, 15]) == 10
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 10, 12, 13, 14, 15, 16, 99, 18, 19, 20, 3, 3]) == 22
    @test add_even_eles_at_odd_inds([1, 5, 11, 3, 8, 7, 10, 6, 9, 23, 2, 9]) == 20
    @test add_even_eles_at_odd_inds([1, 29, 5, 8, 7, 10, 6, 9, 23, 2]) == 6
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 18, 20, 20]) == 50
    @test add_even_eles_at_odd_inds([12, 22, 33, 44, 55, 66, 77, 88, 99, 100, 100]) == 112
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 15, 18, 15, 15]) == 0
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 66, 77, 88, 66, 99, 100]) == 166
    @test add_even_eles_at_odd_inds([3, 6, 4, 8, 1, 9, 10, 5]) == 14
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 42, 13, 14, 15, 17, 18, 19, 10]) == 40
    @test add_even_eles_at_odd_inds([2, 4, 6, 13, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]) == 116
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 42, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 10
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 11, 13, 2, 4, 6, 8, 8, 10, 12, 14]) == 36
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 187, 8, 10, 556, 3, 187, 920, 42, 37, 29, 7, 8, 187, 7]) == 932
    @test add_even_eles_at_odd_inds([2, 8, 10, 11, 13, 2]) == 12
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 32
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 187, 42, 37, 29]) == 160
    @test add_even_eles_at_odd_inds([1, 3, 7, 10, 1, 1]) == 0
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 13, 9, 11, 12, 42, 13, 14, 15, 17, 19, 10]) == 12
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 66, 187, 920, 42, 37]) == 160
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 187, 42, 37, 7, 8]) == 154
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 14, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 16]) == 36
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 44, 55, 66, 77, 88, 66, 99, 100, 44]) == 242
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 187, 920, 42, 37, 29, 555, 7, 8]) == 1040
    @test add_even_eles_at_odd_inds([16, 15, 4, 6, 26, 10, 26, 13, 15, 13]) == 72
    @test add_even_eles_at_odd_inds([1, 3, 8, 8, 1, 1, 26, 10, 44, 9, 2]) == 80
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 16, 9, 29, 12, 15, 18]) == 16
    @test add_even_eles_at_odd_inds([3, 6, 4, 8, 1, 9, 10, 5, 3]) == 14
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 15, 15, 1]) == 0
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 18, 20, 20, 15]) == 50
    @test add_even_eles_at_odd_inds([9, 4, 5, 10, 11, 555, 13, 15]) == 0
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 10, 12, 1, 14, 15, 16, 99, 18, 19, 20, 3, 3, 10]) == 32
    @test add_even_eles_at_odd_inds([19, 1, 4, 3, 8, 7, 10]) == 22
    @test add_even_eles_at_odd_inds([16, 6, 15, 4, 6, 26, 10, 11, 13, 15]) == 32
    @test add_even_eles_at_odd_inds([3, 3, 6, 7, 4, 8, 1, 9, 10, 5, 8]) == 28
    @test add_even_eles_at_odd_inds([1, 7, 10, 1, 1]) == 10
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 101, 187, 920, 42, 37, 29, 7, 8, 6, 100, 8, 5]) == 716
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 44, 55, 66, 77, 88, 66, 100, 44]) == 298
    @test add_even_eles_at_odd_inds([16, 3, 5, 7, 187, 11, 13, 2, 4, 6, 8, 10, 12, 14]) == 40
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 7, 6, 9, 2]) == 0
    @test add_even_eles_at_odd_inds([11, 67, 22, 33, 44, 55, 66, 88, 99, 100, 100, 55]) == 232
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 7, 6, 9, 2, 8]) == 8
    @test add_even_eles_at_odd_inds([16, 15, 6, 26, 10, 11, 13, 15, 11]) == 32
    @test add_even_eles_at_odd_inds([3, 6, 7, 4, 8, 1, 8, 3, 10, 5, 10, 5]) == 36
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 90
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 13, 15, 13, 10, 13]) == 136
    @test add_even_eles_at_odd_inds([1, 7, 10, 2, 1]) == 10
    @test add_even_eles_at_odd_inds([6, 4, 5, 10, 11, 555, 15]) == 6
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 26, 556, 100, 187, 920, 42, 37, 29, 7, 8, 6, 100]) == 1062
    @test add_even_eles_at_odd_inds([30, 1, 5, 3, 8, 7, 10, 6, 9, 23, 2]) == 50
    @test add_even_eles_at_odd_inds([8, 1, 5, 3, 8, 7, 6, 9, 2, 8]) == 24
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 13, 15, 13, 13]) == 136
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 920, 42, 37, 28, 7, 8, 187, 37]) == 1486
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 44, 55, 66, 77, 88, 66, 100, 44, 66]) == 364
    @test add_even_eles_at_odd_inds([16, 1, 15, 6, 26, 10, 11, 13, 11, 15]) == 42
    @test add_even_eles_at_odd_inds([1, 5, 7, 10, 6, 9, 23, 2, 7]) == 6
    @test add_even_eles_at_odd_inds([2, 8, 10, 11, 13, 7, 2]) == 14
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 920, 12, 15, 18, 1]) == 30
    @test add_even_eles_at_odd_inds([3, 556, 6, 7, 4, 8, 1, 9, 10, 5]) == 20
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 7, 8, 6, 100, 7, 8]) == 724
    @test add_even_eles_at_odd_inds([3, 6, 5, 7, 920, 9, 920, 12, 15, 18]) == 1840
    @test add_even_eles_at_odd_inds([9, 4, 5, 6, 10, 11, 555, 13, 15]) == 10
    @test add_even_eles_at_odd_inds([3, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 18, 20, 20, 15]) == 80
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 66, 187, 920, 42, 37, 66]) == 226
    @test add_even_eles_at_odd_inds([1, 5, 8, 7, 10, 6, 100, 9, 23, 2, 7]) == 118
    @test add_even_eles_at_odd_inds([0, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 90
    @test add_even_eles_at_odd_inds([16, 6, 26, 10, 11, 13, 15, 11]) == 42
    @test add_even_eles_at_odd_inds([1, 3, 8, 7, 6, 9, 2]) == 16
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 7, 10, 20, 9, 23, 2, 9]) == 20
    @test add_even_eles_at_odd_inds([9, 4, 5, 187, 10, 11, 555, 37, 13, 15]) == 10
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 1, 1, 26, 10, 44, 9, 556, 2]) == 626
    @test add_even_eles_at_odd_inds([0, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 3, 17, 14, 15, 16, 17, 18, 19, 20, 10]) == 90
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 13, 14, 15, 16, 7, 17, 18, 19, 20, 10]) == 50
    @test add_even_eles_at_odd_inds([1, 2, 3, 3, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 13, 14, 15, 16, 17, 18, 20, 10]) == 42
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 15, 15, 1, 15]) == 0
    @test add_even_eles_at_odd_inds([3, 3, 6, 7, 4, 8, 1, 9, 10, 6, 5, 8, 8]) == 28
    @test add_even_eles_at_odd_inds([1, 5, 8, 7, 10, 8, 6, 100, 9, 23, 2, 7]) == 26
    @test add_even_eles_at_odd_inds([1, 5, 2, 3, 8, 7, 17, 6, 9, 23, 2, 9, 17, 2]) == 12
    @test add_even_eles_at_odd_inds([3, 22, 1, 6, 7, 4, 8, 1, 9, 10, 5, 8, 8, 1]) == 16
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 13, 15, 13, 13, 6]) == 142
    @test add_even_eles_at_odd_inds([16, 122, 5, 7, 187, 11, 13, 2, 4, 6, 8, 10, 12, 14]) == 40
    @test add_even_eles_at_odd_inds([6, 4, 5, 10, 11, 15]) == 6
    @test add_even_eles_at_odd_inds([9, 4, 5, 5, 10, 11, 555, 13, 15]) == 10
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 101, 187, 920, 42, 37, 29, 7, 8, 6, 100, 8, 5, 556]) == 716
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 14, 15, 15]) == 14
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 10, 11, 13, 2, 4, 6, 8, 8, 10, 12, 14]) == 28
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 2]) == 30
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 6, 4, 8, 1, 9, 10, 5]) == 16
    @test add_even_eles_at_odd_inds([2, 4, 6, 13, 187, 8, 10, 12, 14, 17, 18, 20, 22, 26, 24, 26, 28, 30]) == 124
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 66, 187, 920, 42, 37, 66, 10, 9]) == 226
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 556, 100, 187, 42, 37, 99, 29]) == 564
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 44, 55, 66, 77, 66, 100, 44, 54]) == 220
    @test add_even_eles_at_odd_inds([11, 67, 22, 33, 44, 55, 66, 88, 99, 100, 100, 55, 88]) == 320
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 44, 55, 66, 77, 88, 66, 100, 44, 33, 100]) == 298
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 42, 13, 14, 15, 19, 18, 19, 10, 4]) == 40
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 20, 20, 15]) == 32
    @test add_even_eles_at_odd_inds([3, 4, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 10, 17, 14, 15, 16, 9, 17, 18, 20, 20, 15]) == 72
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 20, 20, 15, 9]) == 32
    @test add_even_eles_at_odd_inds([16, 15, 4, 26, 10, 11, 13, 15]) == 30
    @test add_even_eles_at_odd_inds([16, 6, 15, 4, 7, 26, 10, 11, 13, 15]) == 26
    @test add_even_eles_at_odd_inds([16, 15, 4, 6, 26, 10, 11, 13, 15, 11, 13]) == 46
    @test add_even_eles_at_odd_inds([1, 2, 4, 4, 5, 6, 7, 13, 9, 11, 12, 42, 13, 14, 15, 17, 19, 10]) == 16
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 556, 100, 187, 42, 37, 99, 29, 5]) == 564
    @test add_even_eles_at_odd_inds([11, 67, 22, 33, 44, 55, 66, 88, 8, 100, 100, 55, 88]) == 328
    @test add_even_eles_at_odd_inds([1, 3, 5, 12, 7, 9, 920, 12, 15, 18, 920, 920]) == 1840
    @test add_even_eles_at_odd_inds([3, 5, 7, 7, 9, 2, 6, 8, 10, 556, 101, 187, 920, 42, 37, 29, 7, 6, 100, 8, 5, 556]) == 1036
    @test add_even_eles_at_odd_inds([122, 67, 4, 6, 10, 11, 13, 15, 13, 13, 4]) == 140
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17, 7]) == 10
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 7, 10, 6, 9, 24, 2]) == 30
    @test add_even_eles_at_odd_inds([2, 6, 13, 187, 8, 10, 12, 14, 17, 18, 20, 22, 26, 24, 26, 28, 30]) == 124
    @test add_even_eles_at_odd_inds([122, 9, 4, 10, 11, 13, 15, 13, 10, 122]) == 136
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 3, 5, 6, 7, 17, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 10]) == 62
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 32
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 26, 556, 100, 187, 920, 42, 37, 29, 7, 8, 6, 100, 2]) == 1064
    @test add_even_eles_at_odd_inds([3, 6, 7, 8, 1, 9, 10, 5, 10]) == 20
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 1, 7, 17, 8, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 2]) == 112
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 98, 66, 88, 99, 99]) == 186
    @test add_even_eles_at_odd_inds([2, 8, 10, 12, 11, 13, 7, 2]) == 12
    @test add_even_eles_at_odd_inds([9, 4, 5, 10, 11, 555, 13, 15, 10]) == 10
    @test add_even_eles_at_odd_inds([2, 8, 10, 11, 7, 2]) == 12
    @test add_even_eles_at_odd_inds([4, 6, 4, 5, 10, 11, 15]) == 18
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 15, 13]) == 136
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 19, 9, 12, 15, 18, 15, 15]) == 30
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 54, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 20, 20, 15]) == 92
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 8, 1, 1, 26, 10, 44, 9, 2, 8]) == 26
    @test add_even_eles_at_odd_inds([2, 8, 10, 11, 7, 1, 2, 2]) == 14
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 54, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 90
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 1, 100, 66, 187, 920, 42, 37]) == 1004
    @test add_even_eles_at_odd_inds([122, 9, 6, 10, 11, 13, 15, 13, 10]) == 138
    @test add_even_eles_at_odd_inds([3, 1, 101, 3, 4, 5, 6, 7, 17, 8, 14, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 16]) == 34
    @test add_even_eles_at_odd_inds([16, 0, 1, 15, 6, 26, 10, 11, 13, 11, 15]) == 32
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 16]) == 128
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 6, 9, 2]) == 8
    @test add_even_eles_at_odd_inds([6, 4, 5, 10, 11, 15, 6]) == 12
    @test add_even_eles_at_odd_inds([4, 6, 5, 10, 11, 5, 15]) == 4
    @test add_even_eles_at_odd_inds([2, 8, 10, 2, 11, 13, 2]) == 14
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 2]) == 100
    @test add_even_eles_at_odd_inds([9, 4, 6, 10, 11, 13, 15, 13, 13]) == 6
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 20, 20, 15, 9, 9]) == 32
    @test add_even_eles_at_odd_inds([11, 22, 32, 54, 44, 55, 66, 77, 88, 66, 99, 100, 44]) == 274
    @test add_even_eles_at_odd_inds([55, 3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 10, 11, 13, 14, 15, 16, 99, 18, 19, 20, 3, 3, 99]) == 86
    @test add_even_eles_at_odd_inds([11, 22, 32, 54, 44, 55, 66, 77, 88, 66, 99, 100, 44, 100]) == 274
    @test add_even_eles_at_odd_inds([4, 5, 10, 11, 15]) == 14
    @test add_even_eles_at_odd_inds([122, 9, 5, 6, 10, 11, 13, 15, 13, 13, 6]) == 138
    @test add_even_eles_at_odd_inds([3, 920, 7, 8, 0, 9, 10, 5]) == 10
    @test add_even_eles_at_odd_inds([19, 1, 4, 8, 7, 10]) == 4
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 13, 9, 11, 42, 13, 14, 15, 17, 19, 10]) == 66
    @test add_even_eles_at_odd_inds([9, 4, 6, 10, 11, 13, 15, 13, 4]) == 10
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 7, 11, 12, 12, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17]) == 80
    @test add_even_eles_at_odd_inds([3, 22, 1, 6, 7, 4, 8, 1, 9, 9, 5, 23, 8, 1]) == 16
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 14, 66, 77, 88, 99, 100, 99]) == 254
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 77, 11, 12, 5, 17, 14, 15, 16, 9, 17, 20, 20, 15, 9, 9]) == 44
    @test add_even_eles_at_odd_inds([3, 6, 7, 4, 8, 1, 8, 10, 5, 10, 5, 3]) == 16
    @test add_even_eles_at_odd_inds([11, 33, 54, 44, 55, 66, 77, 88, 66, 100, 44, 33, 100]) == 264
    @test add_even_eles_at_odd_inds([122, 4, 6, 10, 11, 13, 15, 13, 13, 6]) == 128
    @test add_even_eles_at_odd_inds([2, 4, 6, 13, 8, 10, 14, 16, 18, 20, 22, 24, 26, 28, 30]) == 126
    @test add_even_eles_at_odd_inds([1, 5, 8, 7, 8, 6, 100, 9, 23, 2, 7]) == 116
    @test add_even_eles_at_odd_inds([3, 1, 3, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 20, 20, 15, 9]) == 30
    @test add_even_eles_at_odd_inds([3, 1, 3, 3, 4, 10, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 20, 20, 15, 9]) == 84
    @test add_even_eles_at_odd_inds([2, 4, 5, 8, 13, 15]) == 2
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 8, 13]) == 32
    @test add_even_eles_at_odd_inds([9, 4, 5, 5, 11, 555, 12, 13, 15]) == 12
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 16, 9, 29, 12, 15, 12]) == 16
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 3, 5, 6, 98, 7, 17, 8, 9, 10, 11, 12, 13, 15, 16, 17, 5, 19, 20, 10]) == 48
    @test add_even_eles_at_odd_inds([1, 4, 5, 2, 3, 8, 7, 17, 6, 9, 23, 2, 9, 17, 2, 2]) == 8
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 920, 12, 15, 18, 9]) == 30
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 3, 5, 6, 7, 17, 8, 9, 10, 11, 12, 13, 15, 16, 20, 18, 19, 20, 10]) == 62
    @test add_even_eles_at_odd_inds([6, 3, 6, 4, 8, 1, 9, 10, 5, 3]) == 20
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 920, 42, 37, 28, 7, 28, 187, 37]) == 1486
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 1, 5, 555, 26, 10, 44, 9, 1]) == 10
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 13, 15, 10]) == 146
    @test add_even_eles_at_odd_inds([6, 4, 5, 10, 15, 6, 6, 6]) == 12
    @test add_even_eles_at_odd_inds([0, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 2, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 92
    @test add_even_eles_at_odd_inds([3, 22, 1, 6, 7, 4, 8, 1, 9, 9, 5, 23, 8, 1, 3]) == 16
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 44, 55, 66, 77, 88, 66, 99, 100, 44, 55]) == 242
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 920, 12, 4, 14, 18, 9]) == 26
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 18, 20, 20]) == 92
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 32, 15, 13, 10, 9]) == 168
    @test add_even_eles_at_odd_inds([3, 7, 9, 3, 122, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29]) == 728
    @test add_even_eles_at_odd_inds([3, 5, 7, 2, 6, 187, 8, 10, 556, 3, 187, 920, 42, 37, 29, 7, 8, 187, 7]) == 620
    @test add_even_eles_at_odd_inds([5, 7, 9, 2, 6, 8, 10, 556, 101, 187, 920, 42, 37, 29, 7, 8, 6, 100, 8, 5, 556]) == 1506
    @test add_even_eles_at_odd_inds([1, 3, 5, 9, 12, 15, 15, 1, 15]) == 12
    @test add_even_eles_at_odd_inds([0, 2, 4, 5, 6, 7, 2, 9, 6, 10, 11, 12, 3, 17, 14, 15, 16, 17, 18, 19, 20, 10, 17]) == 86
    @test add_even_eles_at_odd_inds([10, 2, 8, 10, 11, 13, 7, 2, 11]) == 18
    @test add_even_eles_at_odd_inds([16, 15, 6, 26, 10, 11, 13, 15, 11, 67, 13]) == 32
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 9, 17, 18, 20, 20, 9]) == 82
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 920, 42, 37, 27, 7, 8, 187, 37]) == 1486
    @test add_even_eles_at_odd_inds([3, 5, 7, 8, 2, 6, 8, 10, 556, 100, 187, 920, 42, 37, 28, 6, 8, 187, 9]) == 644
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 187, 10, 556, 3, 187, 920, 42, 37, 30, 7, 8, 187, 7, 3]) == 638
    @test add_even_eles_at_odd_inds([0, 5, 7, 9, 2, 6, 8, 10, 556, 101, 187, 920, 42, 37, 29, 7, 8, 6, 100, 8, 5]) == 716
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 187, 10, 556, 3, 187, 12, 42, 37, 30, 7, 8, 187, 7, 67]) == 638
    @test add_even_eles_at_odd_inds([8, 1, 5, 3, 8, 7, 6, 9, 12, 8]) == 34
    @test add_even_eles_at_odd_inds([9, 4, 6, 11, 11, 13, 15, 10]) == 6
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 100, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 18, 20, 20]) == 146
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20]) == 80
    @test add_even_eles_at_odd_inds([3, 5, 4, 8, 1, 9, 10, 5, 10]) == 24
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 8, 10, 556, 100, 187, 920, 42, 37, 28, 6, 8, 187, 9]) == 1038
    @test add_even_eles_at_odd_inds([2, 4, 6, 13, 23, 187, 8, 10, 0, 14, 17, 18, 20, 22, 26, 24, 26, 28, 30, 8]) == 118
    @test add_even_eles_at_odd_inds([122, 9, 5, 6, 10, 11, 13, 15, 13, 13, 6, 13]) == 138
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 32, 44, 55, 66, 77, 66, 100, 44, 54]) == 186
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 3, 6, 7, 17, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 10]) == 42
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 7, 17, 8, 9, 10, 11, 12, 17, 15, 16, 9, 17, 187, 20, 20]) == 62
    @test add_even_eles_at_odd_inds([3, 5, 4, 8, 8, 1, 9, 10, 5, 10]) == 12
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 187, 920, 42, 37, 29, 555, 7, 8, 100]) == 1040
    @test add_even_eles_at_odd_inds([52, 87, 31, 67, 556, 33, 3, 5, 99, 7, 52]) == 660
    @test add_even_eles_at_odd_inds([9, 4, 5, 7, 10, 11, 555, 13, 15]) == 10
    @test add_even_eles_at_odd_inds([3, 7, 8, 0, 9, 10, 5, 6, 8]) == 16
    @test add_even_eles_at_odd_inds([2, 8, 10, 11, 7, 1, 2, 9, 2]) == 16
    @test add_even_eles_at_odd_inds([1, 5, 3, 556, 8, 8, 1, 1, 26, 10, 44, 9, 2, 8]) == 80
    @test add_even_eles_at_odd_inds([3, 2, 557, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 15, 16, 9, 17, 18, 20, 20, 15]) == 68
    @test add_even_eles_at_odd_inds([3, 7, 9, 3, 101, 122, 6, 8, 10, 556, 100, 187, 920, 42, 29, 101]) == 1036
    @test add_even_eles_at_odd_inds([3, 6, 4, 8, 1, 9, 5]) == 4
    @test add_even_eles_at_odd_inds([6, 4, 5, 10, 11, 555, 554, 15]) == 560
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 18, 20, 20, 15, 16]) == 66
    @test add_even_eles_at_odd_inds([31, 8, 10, 11, 13, 2, 31]) == 10
    @test add_even_eles_at_odd_inds([4, 5, 4, 5, 10, 11, 15]) == 18
    @test add_even_eles_at_odd_inds([11, 22, 32, 54, 44, 55, 66, 77, 88, 66, 99, 100, 44, 22]) == 274
    @test add_even_eles_at_odd_inds([11, 24, 32, 54, 44, 55, 66, 77, 88, 66, 28, 89, 100, 44, 22]) == 380
    @test add_even_eles_at_odd_inds([3, 5, 7, 2, 6, 187, 8, 10, 556, 3, 187, 920, 42, 37, 29, 7, 8, 187, 7, 7]) == 620
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 187, 10, 20, 556, 3, 187, 12, 42, 37, 30, 7, 8, 187, 7]) == 34
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 187, 10, 187, 20, 556, 3, 187, 12, 42, 37, 30, 7, 8, 187, 7]) == 638
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 19, 9, 12, 15, 54, 15, 15, 7]) == 66
    @test add_even_eles_at_odd_inds([11, 33, 54, 44, 55, 66, 77, 26, 66, 100, 44, 33, 100, 100]) == 264
    @test add_even_eles_at_odd_inds([1, 3, 3, 7, 10, 1, 1]) == 10
    @test add_even_eles_at_odd_inds([3, 6, 4, 1, 9, 10, 5, 3]) == 4
    @test add_even_eles_at_odd_inds([6, 15, 4, 7, 26, 10, 11, 13, 15]) == 36
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 77, 88, 66, 99, 100]) == 88
    @test add_even_eles_at_odd_inds([5, 7, 9, 2, 6, 8, 10, 556, 101, 187, 920, 42, 18, 29, 7, 8, 6, 100, 8, 5, 556]) == 1524
    @test add_even_eles_at_odd_inds([3, 5, 7, 7, 16, 9, 0, 12, 15, 18]) == 16
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 187, 920, 42, 37, 29, 7, 8, 42]) == 1074
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 123, 11, 13, 15, 13, 13]) == 136
    @test add_even_eles_at_odd_inds([16, 15, 6, 26, 10, 11, 13, 15, 10]) == 42
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 187, 920, 42, 28, 6, 8, 187, 9]) == 614
    @test add_even_eles_at_odd_inds([1, 5, 8, 7, 10, 6, 100, 9, 23, 2, 7, 7]) == 118
    @test add_even_eles_at_odd_inds([9, 4, 6, 11, 23, 13, 15, 10, 15]) == 6
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 100, 4, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 18, 20, 20, 7]) == 146
    @test add_even_eles_at_odd_inds([2, 8, 10, 2, 11, 13, 2, 8]) == 14
    @test add_even_eles_at_odd_inds([3, 66, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20]) == 30
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 2]) == 32
    @test add_even_eles_at_odd_inds([3, 2, 8, 10, 11, 7, 1, 2, 2]) == 10
    @test add_even_eles_at_odd_inds([1, 7, 10, 1]) == 10
    @test add_even_eles_at_odd_inds([1, 3, 8, 1, 1, 26, 10, 44, 9, 2, 3]) == 18
    @test add_even_eles_at_odd_inds([122, 4, 6, 10, 11, 13, 15, 13, 6, 15]) == 134
    @test add_even_eles_at_odd_inds([6, 4, 5, 10, 11, 555, 14, 555]) == 20
    @test add_even_eles_at_odd_inds([9, 4, 5, 6, 9, 10, 11, 555, 13, 15]) == 0
    @test add_even_eles_at_odd_inds([2, 920, 7, 4, 8, 0, 9, 10, 5]) == 10
    @test add_even_eles_at_odd_inds([9, 4, 6, 11, 23, 13, 15, 10, 15, 11]) == 6
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 8, 10, 556, 100, 187, 920, 42, 37, 28, 6, 8, 187, 9, 556, 2]) == 1594
    @test add_even_eles_at_odd_inds([2, 10, 2, 11, 13, 2, 6]) == 10
    @test add_even_eles_at_odd_inds([4, 5, 10, 11, 15, 10]) == 14
    @test add_even_eles_at_odd_inds([9, 4, 5, 187, 10, 11, 555, 37, 13]) == 10
    @test add_even_eles_at_odd_inds([2, 8, 7, 10, 11, 7, 1, 2, 9, 2]) == 2
    @test add_even_eles_at_odd_inds([3, 5, 9, 2, 6, 3, 8, 10, 556, 100, 187, 920, 42, 37, 29, 7, 8]) == 620
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 28, 14, 4]) == 142
    @test add_even_eles_at_odd_inds([55, 1, 7, 10, 10, 1, 1, 7]) == 10
    @test add_even_eles_at_odd_inds([9, 4, 6, 11, 23, 13, 15, 15]) == 6
    @test add_even_eles_at_odd_inds([2, 8, 10, 7, 52, 7]) == 64
    @test add_even_eles_at_odd_inds([16, 6, 26, 42, 11, 13, 15, 11]) == 42
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 15, 15, 1, 15, 9]) == 0
    @test add_even_eles_at_odd_inds([9, 4, 6, 10, 11, 13, 15, 10]) == 6
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 87, 14, 15, 16, 17, 18, 19, 20, 10]) == 22
    @test add_even_eles_at_odd_inds([3, 22, 1, 6, 7, 8, 1, 9, 9, 6, 23, 8, 1]) == 0
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 7, 11, 12, 3, 13, 14, 15, 16, 17, 19, 20, 10, 17]) == 32
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 44, 55, 66, 77, 42, 66, 99, 100, 44, 55]) == 196
    @test add_even_eles_at_odd_inds([6, 4, 5, 11, 10, 11, 15]) == 16
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17, 4]) == 14
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 54, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10, 3]) == 90
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 77, 11, 12, 5, 17, 14, 15, 16, 9, 17, 20, 20, 15, 9, 9, 1]) == 44
    @test add_even_eles_at_odd_inds([1, 3, 5, 12, 7, 9, 920, 12, 919, 15, 18, 920, 920]) == 1858
    @test add_even_eles_at_odd_inds([3, 55, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 77, 11, 12, 5, 17, 14, 15, 16, 9, 17, 20, 20, 15, 9, 9, 1]) == 68
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 11, 13, 2, 4, 6, 8, 8, 10, 12, 14, 8]) == 36
    @test add_even_eles_at_odd_inds([1, 7, 10, 9, 1, 1]) == 10
    @test add_even_eles_at_odd_inds([1, 7, 10, 7]) == 10
    @test add_even_eles_at_odd_inds([52, 87, 31, 67, 556, 33, 5, 99, 7, 52]) == 608
    @test add_even_eles_at_odd_inds([66, 3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 920, 42, 37, 27, 7, 8, 187, 37]) == 232
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 16, 28]) == 156
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 44, 55, 66, 77, 66, 100, 44, 54, 55]) == 220
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 14, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 16, 12]) == 48
    @test add_even_eles_at_odd_inds([5, 9, 2, 6, 3, 8, 10, 556, 100, 187, 920, 9, 42, 37, 29, 7, 8]) == 1082
    @test add_even_eles_at_odd_inds([5, 7, 9, 2, 6, 8, 10, 556, 102, 187, 920, 42, 18, 29, 7, 8, 6, 100, 8, 5, 556, 5]) == 1626
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 6, 42, 13, 14, 15, 17, 18, 19, 10]) == 68
    @test add_even_eles_at_odd_inds([16, 15, 6, 26, 11, 13, 15, 10, 10]) == 32
    @test add_even_eles_at_odd_inds([12, 22, 33, 44, 55, 66, 87, 99, 100, 100]) == 112
    @test add_even_eles_at_odd_inds([3, 5, 7, 12, 9, 2, 6, 187, 10, 556, 3, 187, 23, 920, 42, 37, 30, 7, 8, 187, 7, 3]) == 96
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 6, 8, 10, 556, 99, 187, 920, 42, 37, 29, 7, 8, 6, 100]) == 944
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 100, 1, 187, 42, 37, 29]) == 60
    @test add_even_eles_at_odd_inds([3, 5, 7, 7, 9, 2, 6, 8, 10, 556, 101, 187, 920, 42, 37, 29, 7, 6, 100, 8, 5, 556, 29]) == 1036
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 88, 100, 187, 42, 37, 29, 29]) == 160
    @test add_even_eles_at_odd_inds([6, 15, 4, 7, 26, 10, 11, 15, 4]) == 40
    @test add_even_eles_at_odd_inds([2, 4, 6, 13, 23, 187, 8, 10, 0, 14, 17, 18, 20, 22, 26, 23, 26, 28, 30, 8]) == 118
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 122, 17, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18, 19, 20]) == 152
    @test add_even_eles_at_odd_inds([16, 6, 26, 10, 11, 13, 25, 15, 11]) == 42
    @test add_even_eles_at_odd_inds([9, 3, 6, 7, 4, 8, 1, 9, 5, 8, 6]) == 16
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 18, 20, 20, 15, 16]) == 92
    @test add_even_eles_at_odd_inds([3, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 18, 20, 20, 15, 15]) == 80
    @test add_even_eles_at_odd_inds([11, 22, 32, 54, 44, 55, 66, 77, 88, 66, 99, 100, 44, 66]) == 274
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 1, 26, 10, 44, 9, 2, 44]) == 54
    @test add_even_eles_at_odd_inds([4, 5, 10, 11, 10]) == 24
    @test add_even_eles_at_odd_inds([1, 3, 3, 7, 10, 1, 1, 3]) == 10
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17, 7, 2]) == 10
    @test add_even_eles_at_odd_inds([5, 7, 9, 2, 6, 8, 10, 556, 101, 187, 920, 42, 37, 29, 7, 8, 6, 100, 8]) == 950
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 13, 15, 9]) == 136
    @test add_even_eles_at_odd_inds([55, 3, 1, 2, 3, 55, 4, 5, 7, 17, 8, 18, 10, 10, 11, 13, 14, 15, 16, 99, 18, 19, 20, 8, 3, 3, 99]) == 90
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 44, 55, 66, 66, 44, 54, 55, 66]) == 154
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 1, 7, 17, 8, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 187, 10, 2]) == 92
    @test add_even_eles_at_odd_inds([2, 4, 8, 10, 11, 13, 15, 4]) == 10
    @test add_even_eles_at_odd_inds([1, 2, 3, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 100
    @test add_even_eles_at_odd_inds([3, 7, 9, 2, 6, 8, 10, 26, 556, 100, 187, 19, 42, 37, 29, 7, 8, 6, 100, 2]) == 722
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 7, 8, 6, 100, 7, 8, 6]) == 724
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 557, 13, 15, 13, 10]) == 136
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 42, 13, 14, 15, 17, 18, 19, 10, 17]) == 40
    @test add_even_eles_at_odd_inds([3, 6, 557, 4, 8, 1, 9, 10, 5, 10]) == 8
    @test add_even_eles_at_odd_inds([122, 9, 5, 6, 557, 13, 15, 13, 10]) == 132
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 77, 88, 66, 99, 100, 44]) == 132
    @test add_even_eles_at_odd_inds([3, 5, 7, 11, 8, 2, 6, 8, 10, 556, 100, 187, 920, 37, 28, 6, 8, 187, 9]) == 1080
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 15, 10]) == 136
    @test add_even_eles_at_odd_inds([3, 556, 6, 7, 4, 8, 1, 9, 10, 5, 7]) == 20
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 14, 16, 18, 20, 22, 24, 26, 28, 30, 28, 14, 4]) == 138
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 20, 20, 15, 9, 17]) == 32
    @test add_even_eles_at_odd_inds([16, 15, 4, 6, 26, 11, 13, 15, 11, 13]) == 46
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 30, 920, 42, 37, 29, 555, 23, 8, 100]) == 1040
    @test add_even_eles_at_odd_inds([16, 122, 5, 7, 187, 11, 13, 2, 4, 6, 8, 12, 14, 12]) == 42
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 14, 15, 15, 14]) == 14
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 187, 42, 37, 29, 7]) == 154
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 28, 17, 8, 9, 10, 23, 11, 13, 14, 15, 17, 18, 19, 20]) == 72
    @test add_even_eles_at_odd_inds([3, 3, 123, 7, 4, 8, 1, 9, 10, 5, 8, 4]) == 22
    @test add_even_eles_at_odd_inds([55, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 32
    @test add_even_eles_at_odd_inds([9, 4, 5, 6, 10, 11, 555, 13, 15, 9]) == 10
    @test add_even_eles_at_odd_inds([1, 10, 9, 1, 37]) == 0
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 7, 8, 6, 100, 920, 67, 920]) == 716
    @test add_even_eles_at_odd_inds([3, 22, 1, 6, 7, 4, 8, 9, 9, 5, 23, 8, 1, 3]) == 8
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 100, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 13, 17, 18, 20]) == 128
    @test add_even_eles_at_odd_inds([30, 1, 5, 3, 8, 7, 10, 6, 9, 23, 2, 9]) == 50
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 556, 100, 187, 42, 37, 29, 5, 42]) == 564
    @test add_even_eles_at_odd_inds([16, 44, 15, 4, 6, 26, 11, 13, 15, 16]) == 22
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 89, 17, 20, 20, 15, 9, 9, 9]) == 32
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 920, 12, 15, 18, 1]) == 920
    @test add_even_eles_at_odd_inds([30, 1, 5, 3, 52, 7, 10, 6, 9, 23, 2, 9]) == 94
    @test add_even_eles_at_odd_inds([1, 5, 8, 7, 10, 919, 100, 9, 23, 2, 7]) == 118
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 8, 1, 9, 10, 88]) == 16
    @test add_even_eles_at_odd_inds([8, 122, 9, 4, 6, 10, 13, 15, 9]) == 14
    @test add_even_eles_at_odd_inds([4, 6, 11, 11, 15, 10]) == 4
    @test add_even_eles_at_odd_inds([11, 1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10]) == 94
    @test add_even_eles_at_odd_inds([7, 3, 1, 101, 3, 4, 5, 6, 7, 17, 8, 14, 10, 11, 12, 13, 14, 15, 16, 17, 18, 29, 19, 20, 16]) == 94
    @test add_even_eles_at_odd_inds([8, 1, 5, 6, 3, 8, 7, 6, 9, 2, 8]) == 16
    @test add_even_eles_at_odd_inds([4, 5, 555, 4, 5, 100, 10, 11, 15]) == 14
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 20, 22, 24, 26, 28, 30]) == 104
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 18, 8, 9, 10, 11, 13, 14, 15, 17, 18, 19, 20]) == 44
    @test add_even_eles_at_odd_inds([5, 6, 4, 5, 7, 10, 11, 15, 5]) == 4
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 1, 12, 4, 14, 18, 9]) == 26
    @test add_even_eles_at_odd_inds([3, 8, 2, 557, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 15, 16, 10, 17, 18, 20, 20, 15]) == 48
    @test add_even_eles_at_odd_inds([4, 6, 11, 11, 15, 10, 11, 11]) == 4
    @test add_even_eles_at_odd_inds([9, 4, 5, 5, 12, 11, 555, 10, 13, 15, 5]) == 12
    @test add_even_eles_at_odd_inds([1, 3, 5, 29, 7, 9, 11, 13, 2, 4, 6, 8, 8, 10, 12, 14]) == 28
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 7, 11, 12, 12, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17, 18]) == 80
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 19, 9, 12, 15, 18, 15, 15, 3]) == 30
    @test add_even_eles_at_odd_inds([3, 6, 7, 4, 8, 1, 9, 10, 5, 3]) == 8
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 187, 42, 37, 29, 44, 8, 187]) == 162
    @test add_even_eles_at_odd_inds([1, 3, 5, 4, 7, 19, 9, 12, 15, 54, 15, 15, 7]) == 0
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 42, 13, 14, 15, 16, 17, 18, 19, 20, 10, 42]) == 152
    @test add_even_eles_at_odd_inds([27, 11, 22, 33, 44, 55, 14, 66, 77, 88, 99, 100, 99]) == 80
    @test add_even_eles_at_odd_inds([4, 5, 11, 10, 11, 11]) == 4
    @test add_even_eles_at_odd_inds([3, 5, 7, 6, 187, 8, 10, 556, 3, 187, 920, 42, 37, 29, 7, 8, 187, 7, 7]) == 930
    @test add_even_eles_at_odd_inds([1, 2, 28, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 8, 13]) == 60
    @test add_even_eles_at_odd_inds([3, 22, 6, 7, 4, 8, 9, 9, 5, 23, 8, 9, 3]) == 18
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 18, 8, 9, 10, 11, 13, 14, 15, 17, 18, 19, 20, 1]) == 44
    @test add_even_eles_at_odd_inds([3, 22, 1, 6, 7, 4, 8, 1, 9, 9, 5, 23, 8, 0, 1, 3]) == 16
    @test add_even_eles_at_odd_inds([9, 4, 5, 5, 12, 11, 555, 10, 13, 15, 5, 13]) == 12
    @test add_even_eles_at_odd_inds([5, 6, 4, 5, 7, 10, 11, 5]) == 4
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 28, 17, 8, 9, 10, 23, 11, 13, 14, 15, 17, 18, 19, 20, 18]) == 90
    @test add_even_eles_at_odd_inds([3, 1, 2, 8, 3, 4, 5, 6, 7, 17, 8, 9, 10, 18, 12, 17, 14, 15, 16, 9, 17, 20, 20, 15, 9, 17]) == 82
    @test add_even_eles_at_odd_inds([3, 22, 1, 6, 7, 8, 9, 9, 6, 23, 8, 1]) == 14
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 3, 5, 6, 98, 7, 17, 8, 9, 10, 11, 12, 13, 15, 16, 17, 5, 19, 20, 10, 20]) == 48
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 1, 26, 10, 44, 9, 2, 44, 1, 8]) == 62
    @test add_even_eles_at_odd_inds([5, 7, 9, 2, 6, 3, 8, 10, 556, 100, 187, 42, 37, 29, 7, 8, 3]) == 570
    @test add_even_eles_at_odd_inds([122, 9, 5, 123, 10, 11, 13, 15, 13, 13, 6, 13]) == 138
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 101, 187, 920, 42, 29, 7, 8, 6, 100, 8, 5]) == 622
    @test add_even_eles_at_odd_inds([6, 4, 5, 15, 10, 11, 14, 555]) == 30
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 101, 32, 920, 42, 37, 29, 7, 8, 6, 100, 8, 5, 556]) == 748
    @test add_even_eles_at_odd_inds([9, 4, 5, 5, 33, 10, 11, 555, 13, 15]) == 0
    @test add_even_eles_at_odd_inds([22, 33, 44, 55, 66, 77, 88, 99, 100]) == 320
    @test add_even_eles_at_odd_inds([6, 15, 4, 7, 26, 10, 11, 25, 13, 15]) == 36
    @test add_even_eles_at_odd_inds([3, 8, 557, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 15, 16, 20, 10, 17, 18, 20, 20, 15]) == 70
    @test add_even_eles_at_odd_inds([920, 7, 4, 8, 0, 9, 10, 5]) == 934
    @test add_even_eles_at_odd_inds([3, 1, 101, 3, 4, 5, 6, 7, 17, 8, 14, 11, 11, 12, 13, 14, 15, 919, 17, 18, 19, 20, 10, 16]) == 34
    @test add_even_eles_at_odd_inds([77, 5, 6, 5, 7, 10, 11]) == 6
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 920, 12, 18, 1, 7]) == 938
    @test add_even_eles_at_odd_inds([122, 9, 6, 10, 11, 13, 15, 13, 10, 10]) == 138
    @test add_even_eles_at_odd_inds([1, 30, 1, 5, 3, 8, 7, 10, 6, 9, 23, 2, 9]) == 6
    @test add_even_eles_at_odd_inds([9, 4, 5, 12, 19, 11, 555, 37, 13, 15]) == 0
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 7, 11, 12, 12, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17, 1]) == 80
    @test add_even_eles_at_odd_inds([2, 5, 8, 7, 10, 6, 9, 23, 2, 100]) == 22
    @test add_even_eles_at_odd_inds([122, 9, 6, 10, 11, 13, 15, 10]) == 128
    @test add_even_eles_at_odd_inds([3, 22, 6, 7, 4, 8, 9, 9, 5, 23, 8, 9, 3, 9]) == 18
    @test add_even_eles_at_odd_inds([16, 6, 15, 26, 4, 7, 26, 10, 11, 13, 15]) == 46
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 1, 12, 4, 14, 9]) == 26
    @test add_even_eles_at_odd_inds([2, 4, 6, 13, 187, 919, 8, 10, 12, 14, 17, 18, 44, 20, 22, 26, 24, 26, 28, 30]) == 146
    @test add_even_eles_at_odd_inds([122, 9, 4, 6, 10, 11, 13, 15, 13, 13, 6, 122]) == 142
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 15, 15, 1, 15, 19]) == 0
    @test add_even_eles_at_odd_inds([3, 8, 17, 2, 557, 4, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 15, 16, 10, 17, 18, 20, 20, 15, 11]) == 78
    @test add_even_eles_at_odd_inds([5, 3, 8, 7, 10, 6, 9, 24]) == 18
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 556, 101, 187, 920, 42, 37, 29, 7, 8, 6, 100, 8, 5, 9, 9]) == 716
    @test add_even_eles_at_odd_inds([2, 10, 2, 11, 13, 54, 2, 6]) == 6
    @test add_even_eles_at_odd_inds([3, 2, 27, 10, 11, 7, 1, 2, 2]) == 2
    @test add_even_eles_at_odd_inds([11, 33, 54, 44, 55, 77, 88, 66, 100, 44]) == 242
    @test add_even_eles_at_odd_inds([11, 67, 22, 33, 44, 2, 55, 66, 88, 8, 100, 100, 55, 88, 67]) == 254
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 13, 14, 15, 16, 17, 18, 33, 20, 10, 8, 13]) == 32
    @test add_even_eles_at_odd_inds([1, 3, 7, 9, 12, 15, 18]) == 30
    @test add_even_eles_at_odd_inds([3, 6, 7, 4, 8, 1, 8, 3, 10, 5, 10, 102, 5, 5]) == 36
    @test add_even_eles_at_odd_inds([2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17, 4]) == 110
    @test add_even_eles_at_odd_inds([1, 5, 8, 8, 10, 6, 9, 23, 2, 7]) == 20
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 9, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17]) == 10
    @test add_even_eles_at_odd_inds([6, 4, 5, 555, 10, 15, 6, 6, 6, 6]) == 28
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 67, 6, 7, 8, 9, 10, 11, 12, 17, 14, 15, 16, 9, 17, 18, 20, 20, 15, 16]) == 60
    @test add_even_eles_at_odd_inds([4, 5, 5, 12, 11, 555, 10, 13, 15, 5]) == 14
    @test add_even_eles_at_odd_inds([16, 0, 1, 15, 11, 6, 26, 10, 13, 11, 15]) == 42
    @test add_even_eles_at_odd_inds([3, 55, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 77, 11, 12, 5, 17, 14, 16, 9, 17, 20, 20, 15, 9, 9, 1]) == 52
    @test add_even_eles_at_odd_inds([16, 44, 16, 4, 6, 26, 11, 13, 15]) == 38
    @test add_even_eles_at_odd_inds([2, 8, 11, 12, 11, 13, 7, 2]) == 2
    @test add_even_eles_at_odd_inds([55, 2, 3, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 5, 3, 13, 15, 16, 17, 18, 19, 20, 10, 18]) == 32
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 13, 9, 11, 12, 42, 13, 14, 15, 17, 19, 10, 19]) == 12
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 6, 8, 10, 26, 556, 100, 187, 920, 42, 37, 29, 7, 8, 6, 100, 187]) == 1062
    @test add_even_eles_at_odd_inds([1, 3, 5, 17, 9, 920, 12, 15, 18]) == 30
    @test add_even_eles_at_odd_inds([1, 3, 8, 8, 1, 1, 26, 10, 45, 9, 2]) == 36
    @test add_even_eles_at_odd_inds([4, 5, 10, 11, 15, 1, 6]) == 20
    @test add_even_eles_at_odd_inds([11, 24, 32, 54, 44, 55, 66, 77, 43, 88, 66, 28, 89, 100, 44, 22]) == 252
    @test add_even_eles_at_odd_inds([0, 2, 3, 4, 6, 6, 7, 8, 9, 6, 10, 11, 12, 12, 3, 17, 14, 15, 16, 17, 18, 19, 20, 10]) == 96
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 100, 5, 6, 7, 17, 8, 9, 10, 11, 12, 17, 14, 14, 16, 9, 17, 18, 20, 20]) == 160
    @test add_even_eles_at_odd_inds([16, 6, 15, 4, 6, 26, 11, 13, 15]) == 22
    @test add_even_eles_at_odd_inds([2, 3, 4, 7, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17, 4]) == 20
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 37, 10, 11, 12, 54, 3, 13, 14, 20, 15, 16, 17, 18, 19, 20, 10, 3]) == 46
    @test add_even_eles_at_odd_inds([3, 1, 2, 7, 3, 4, 5, 6, 7, 17, 8, 9, 10, 10, 12, 13, 14, 15, 16, 99, 18, 19, 20, 3, 3, 12]) == 100
    @test add_even_eles_at_odd_inds([16, 1, 15, 6, 26, 10, 11, 13, 11]) == 42
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 3, 6, 7, 17, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19, 20, 10, 3, 2]) == 44
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 7]) == 0
    @test add_even_eles_at_odd_inds([1, 45, 8, 7, 6, 26, 9, 2, 26]) == 40
    @test add_even_eles_at_odd_inds([11, 22, 33, 54, 32, 44, 55, 66, 77, 66, 100, 44, 54, 44]) == 186
    @test add_even_eles_at_odd_inds([3, 5, 9, 2, 6, 3, 8, 10, 556, 100, 187, 37, 29, 7, 8, 6]) == 578
    @test add_even_eles_at_odd_inds([1, 2, 28, 4, 5, 6, 7, 8, 9, 6, 10, 11, 12, 12, 13, 6, 15, 16, 17, 18, 19, 20, 10, 8, 13, 18]) == 60
    @test add_even_eles_at_odd_inds([3, 5, 99, 9, 2, 122, 6, 8, 10, 556, 100, 187, 920, 42, 37, 9, 29]) == 1038
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 15, 18, 15, 15, 18]) == 18
    @test add_even_eles_at_odd_inds([3, 8, 2, 557, 4, 5, 6, 43, 17, 8, 9, 10, 11, 12, 17, 15, 16, 10, 17, 18, 20, 20, 15]) == 48
    @test add_even_eles_at_odd_inds([2, 0, 20, 3, 8, 7, 6, 9, 1, 2]) == 36
    @test add_even_eles_at_odd_inds([3, 1, 2, 3, 4, 5, 6, 7, 17, 8, 9, 10, 77, 11, 12, 5, 17, 14, 15, 16, 9, 17, 20, 20, 15, 9, 9, 1, 9]) == 44
    @test add_even_eles_at_odd_inds([3, 7, 4, 8, 1, 9, 10, 5, 3]) == 14
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 15, 15, 15]) == 0
    @test add_even_eles_at_odd_inds([16, 122, 5, 7, 187, 16, 11, 13, 2, 4, 6, 8, 10, 12, 14]) == 48
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 11, 15, 15, 1]) == 0
    @test add_even_eles_at_odd_inds([3, 8, 2, 557, 4, 5, 6, 43, 17, 8, 3, 10, 11, 12, 17, 15, 16, 10, 17, 18, 20, 20, 15, 20]) == 48
    @test add_even_eles_at_odd_inds([16, 14, 4, 6, 26, 10, 11, 122, 15, 26]) == 46
    @test add_even_eles_at_odd_inds([55, 3, 1, 17, 2, 3, 4, 5, 7, 17, 8, 18, 10, 10, 11, 13, 14, 15, 16, 99, 18, 19, 20, 8, 3, 3, 99, 19]) == 92
    @test add_even_eles_at_odd_inds([6, 15, 4, 7, 37, 26, 10, 11, 25, 13, 15]) == 20
    @test add_even_eles_at_odd_inds([2, 4, 6, 42, 8, 10, 14, 16, 18, 20, 22, 24, 26, 28, 30, 28, 14, 4]) == 140
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 7, 8, 9, 6, 7, 11, 12, 12, 3, 13, 14, 15, 16, 17, 18, 19, 20, 10, 17, 7]) == 36
    @test add_even_eles_at_odd_inds([122, 122, 4, 6, 557, 13, 15, 13, 10]) == 136
    @test add_even_eles_at_odd_inds([12, 22, 33, 44, 55, 66, 43, 87, 99, 100, 100]) == 112
    @test add_even_eles_at_odd_inds([4]) == 4
    @test add_even_eles_at_odd_inds([1]) == 0
    @test add_even_eles_at_odd_inds([2, 1]) == 2
    @test add_even_eles_at_odd_inds([1, 2]) == 0
    @test add_even_eles_at_odd_inds([2, 4, 6]) == 8
    @test add_even_eles_at_odd_inds([3, 7, 9, 11, 15, 23]) == 0
    @test add_even_eles_at_odd_inds([3, 5, 100, 7, 9, 12, 15, 18]) == 100
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 44, 67, 77, 88, 99, 100]) == 44
    @test add_even_eles_at_odd_inds([2, 4, 6, 6, 10, 11, 13]) == 18
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 13]) == 0
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 30]) == 128
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 30, 16]) == 144
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 12, 14, 16, 18, 20, 17, 24, 26, 28, 30]) == 116
    @test add_even_eles_at_odd_inds([2, 4, 6, 19, 8, 10, 11, 13, 15]) == 16
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 66, 77, 88, 99, 44]) == 0
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 8, 1, 9, 10]) == 16
    @test add_even_eles_at_odd_inds([1, 3, 5, 1, 9, 12, 15, 18]) == 0
    @test add_even_eles_at_odd_inds([13, 3, 5, 1, 9, 12, 15]) == 0
    @test add_even_eles_at_odd_inds([3, 5, 100, 7, 9, 12, 18]) == 118
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 66, 77, 88, 99, 99]) == 0
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 12, 14, 16, 18, 20, 17, 24, 13, 28, 30, 6]) == 90
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 66, 67, 77, 88, 99, 100]) == 66
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 0
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 11, 13, 2, 4, 6, 8, 10, 14, 11]) == 26
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 88, 77, 88, 99, 10, 100]) == 100
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 67, 77, 88, 99, 100]) == 188
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 12, 14, 16, 18, 20, 17, 24, 13, 28, 30, 6, 4]) == 94
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 37, 22, 24, 26, 28, 30]) == 128
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 68, 67, 77, 88, 99, 100]) == 68
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 16, 18, 20, 22, 24, 26, 28, 30, 30]) == 136
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 19, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 30, 16]) == 148
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 68, 67, 77, 88, 98, 100]) == 166
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 90
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 44, 67, 77, 88, 37, 100]) == 44
    @test add_even_eles_at_odd_inds([2, 4, 12, 6, 8, 10, 11, 13, 15]) == 22
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 65, 77, 88, 99, 99, 11]) == 0
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 12, 18]) == 12
    @test add_even_eles_at_odd_inds([3, 5, 100, 7, 8, 101, 12, 15, 18, 15]) == 138
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 14]) == 26
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 68, 67, 77, 98, 100, 98]) == 168
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 44, 67, 77, 88, 99]) == 44
    @test add_even_eles_at_odd_inds([23, 11, 22, 33, 66, 68, 67, 77, 88, 98, 100, 100]) == 276
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 44, 66, 77, 88, 37, 100]) == 44
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 68, 67, 77, 99, 100]) == 168
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 67, 77, 88, 99, 100]) == 188
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 7, 10, 556, 100, 187, 920, 42, 37, 29]) == 1038
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 14, 16]) == 42
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 8, 11, 13, 4, 6, 8, 9, 12, 14]) == 24
    @test add_even_eles_at_odd_inds([2, 4, 7, 17, 10, 8, 10, 12, 14, 16, 18, 20, 17, 24, 26, 28, 30]) == 110
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 14, 1, 16, 1]) == 26
    @test add_even_eles_at_odd_inds([22, 33, 44, 55, 66, 77, 88, 99, 44, 22]) == 264
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1]) == 0
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 14, 8, 17]) == 34
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 8, 11, 13, 4, 6, 8, 9, 12, 14, 9]) == 24
    @test add_even_eles_at_odd_inds([1, 15, 3, 4, 5, 42, 7, 7, 9, 11, 12, 13, 14, 15, 16, 16, 18, 19, 20]) == 80
    @test add_even_eles_at_odd_inds([2, 4, 7, 17, 10, 8, 10, 12, 14, 42, 18, 20, 17, 24, 26, 28, 30]) == 110
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20]) == 52
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 1, 16, 7, 9, 14, 8, 17, 7]) == 14
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 67, 77, 88, 99, 100, 87]) == 188
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 8, 1, 9, 5]) == 6
    @test add_even_eles_at_odd_inds([3, 5, 101, 7, 9, 12, 18]) == 18
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 66, 67, 77, 88, 99, 100]) == 66
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 68, 67, 77, 920, 88, 99, 100]) == 256
    @test add_even_eles_at_odd_inds([11, 22, 33, 6, 66, 68, 67, 77, 88, 99, 100]) == 254
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 30, 16, 4]) == 144
    @test add_even_eles_at_odd_inds([1, 15, 3, 4, 5, 42, 7, 7, 9, 11, 12, 13, 14, 15, 16, 16, 18, 19, 20, 19]) == 80
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 8, 1, 9, 10]) == 10
    @test add_even_eles_at_odd_inds([55, 11, 22, 33, 44, 55, 66, 77, 88, 99, 99]) == 220
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 8, 11, 13, 4, 6, 8, 9, 19, 12, 14]) == 26
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 16, 18, 20, 22, 24, 26, 28, 12, 30, 30]) == 126
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 44, 55, 88, 77, 88, 99, 10, 100]) == 230
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 8, 1, 9, 10, 3]) == 16
    @test add_even_eles_at_odd_inds([3, 5, 100, 7, 9, 12, 6]) == 106
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 13, 15]) == 18
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 12, 14, 16, 18, 20, 17, 24, 13, 28, 30, 6, 4, 2, 4]) == 98
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 44, 55, 88, 7, 77, 88, 99, 10, 100]) == 232
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 30, 12]) == 140
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 12, 14, 16, 18, 20, 17, 24, 13, 28, 30, 6, 4, 2, 4, 18]) == 98
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 30, 6]) == 134
    @test add_even_eles_at_odd_inds([1, 55, 2, 55, 3, 4, 5, 42, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 20, 12]) == 74
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 67, 77, 88, 99, 100, 77]) == 188
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 1, 9, 10]) == 6
    @test add_even_eles_at_odd_inds([11, 22, 33, 67, 77, 88, 99, 100]) == 0
    @test add_even_eles_at_odd_inds([2, 4, 6, 19, 8, 10, 11, 13, 15, 4, 4]) == 20
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 8, 5, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 12, 20]) == 20
    @test add_even_eles_at_odd_inds([2, 4, 6, 11, 17, 8, 10, 12, 14, 16, 18, 20, 17, 24, 13, 28, 30, 6]) == 80
    @test add_even_eles_at_odd_inds([65, 3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29]) == 728
    @test add_even_eles_at_odd_inds([11, 33, 66, 67, 77, 88, 99, 100]) == 66
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 67, 77, 88, 100, 77]) == 88
    @test add_even_eles_at_odd_inds([23, 11, 22, 33, 66, 37, 12, 67, 77, 88, 98, 100, 100, 11]) == 298
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 66, 67, 77, 88, 99, 100, 66]) == 132
    @test add_even_eles_at_odd_inds([11, 22, 2, 33, 67, 77, 88, 99, 100]) == 190
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 8, 11, 13, 4, 6, 8, 9, 12, 14, 14]) == 38
    @test add_even_eles_at_odd_inds([65, 3, 5, 7, 9, 2, 122, 6, 8, 556, 100, 187, 920, 42, 37, 29]) == 1150
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 7, 10, 556, 100, 187, 920, 42, 37, 122, 29]) == 1038
    @test add_even_eles_at_odd_inds([3, 5, 28, 101, 23, 7, 9, 12, 18]) == 46
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 7, 5, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 12, 20]) == 82
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 8, 1, 10, 3]) == 6
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 1, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 30, 16, 4]) == 134
    @test add_even_eles_at_odd_inds([22, 33, 69, 66, 68, 67, 77, 920, 99, 100]) == 90
    @test add_even_eles_at_odd_inds([11, 22, 44, 55, 66, 77, 88, 99, 100]) == 298
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 37, 22, 24, 26, 28, 30, 16, 18]) == 146
    @test add_even_eles_at_odd_inds([3, 5, 100, 6, 9, 12, 6]) == 106
    @test add_even_eles_at_odd_inds([11, 22, 33, 68, 67, 77, 88, 98, 100]) == 188
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 6, 3, 26, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 13]) == 0
    @test add_even_eles_at_odd_inds([3, 2, 7, 4, 1, 9, 10]) == 10
    @test add_even_eles_at_odd_inds([11, 22, 33, 12, 44, 55, 14, 66, 77, 88, 2, 99, 44, 99]) == 104
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 18]) == 18
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 14, 8, 7, 67, 8]) == 34
    @test add_even_eles_at_odd_inds([3, 6, 24, 7, 4, 8, 1, 9, 10]) == 38
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 12, 14, 16, 18, 20, 17, 23, 13, 28, 30, 6]) == 90
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 88, 77, 88, 99, 10, 100, 10]) == 100
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 67, 7, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 18]) == 90
    @test add_even_eles_at_odd_inds([11, 22, 33, 100, 55, 66, 77, 88, 99, 44]) == 0
    @test add_even_eles_at_odd_inds([3, 5, 100, 77, 9, 12, 18]) == 118
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 1, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 31, 16, 4]) == 134
    @test add_even_eles_at_odd_inds([2, 4, 556, 6, 8, 10, 11, 13, 15]) == 566
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 67, 77, 88, 99, 100, 77, 100]) == 288
    @test add_even_eles_at_odd_inds([3, 6, 4, 2, 7, 4, 8, 1, 9, 5]) == 12
    @test add_even_eles_at_odd_inds([1, 29, 3, 8, 16, 7, 10, 14]) == 26
    @test add_even_eles_at_odd_inds([11, 22, 33, 12, 44, 54, 14, 66, 77, 88, 2, 99, 44, 99]) == 104
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 19, 8, 1, 9, 5]) == 2
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10]) == 26
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 14, 7, 7, 67, 8]) == 26
    @test add_even_eles_at_odd_inds([11, 22, 33, 78, 44, 55, 66, 77, 88, 99, 44]) == 242
    @test add_even_eles_at_odd_inds([2, 6, 6, 10, 11, 13]) == 8
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 66, 67, 77, 99, 100, 66]) == 166
    @test add_even_eles_at_odd_inds([11, 22, 33, 12, 44, 55, 14, 66, 77, 88, 2, 99, 44]) == 104
    @test add_even_eles_at_odd_inds([11, 22, 33, 6, 66, 68, 67, 77, 88, 99, 100, 67]) == 254
    @test add_even_eles_at_odd_inds([11, 22, 9, 33, 66, 67, 77, 88, 99, 100]) == 66
    @test add_even_eles_at_odd_inds([11, 22, 33, 68, 67, 77, 88, 99, 100]) == 188
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 8, 9, 10]) == 20
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 12, 18, 12]) == 24
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 9, 10, 11, 12, 13, 14, 67, 15, 16, 17, 18, 19, 20, 1, 10]) == 64
    @test add_even_eles_at_odd_inds([11, 22, 33, 55, 65, 88, 99, 99, 11]) == 0
    @test add_even_eles_at_odd_inds([2, 4, 8, 10, 12, 16, 14, 18, 20, 22, 24, 26, 28, 30, 30, 16, 22]) == 160
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 44, 55, 88, 77, 88, 24, 10, 100]) == 230
    @test add_even_eles_at_odd_inds([11, 22, 68, 67, 77, 88, 98, 100]) == 166
    @test add_even_eles_at_odd_inds([187, 1, 2, 3, 4, 24, 5, 42, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 3, 2]) == 98
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 8, 14, 16]) == 40
    @test add_even_eles_at_odd_inds([78, 11, 22, 33, 66, 68, 67, 77, 98, 100]) == 264
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 88, 77, 88, 99, 10, 100, 33]) == 100
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 77, 88, 99, 10, 100, 33]) == 98
    @test add_even_eles_at_odd_inds([187, 1, 2, 3, 4, 24, 5, 42, 7, 10, 11, 13, 14, 15, 16, 17, 18, 19, 20, 3, 2]) == 76
    @test add_even_eles_at_odd_inds([13, 3, 5, 1, 9, 1, 12, 15]) == 12
    @test add_even_eles_at_odd_inds([187, 1, 2, 18, 4, 4, 24, 5, 42, 7, 187, 10, 11, 13, 14, 15, 16, 17, 18, 19, 20, 3, 2]) == 142
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 44, 55, 88, 7, 77, 88, 99, 100]) == 132
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 187, 920, 42, 37, 28]) == 1038
    @test add_even_eles_at_odd_inds([3, 7, 4, 1, 9, 10]) == 4
    @test add_even_eles_at_odd_inds([1, 5, 3, 8, 7, 10, 6, 9, 23]) == 6
    @test add_even_eles_at_odd_inds([11, 22, 44, 55, 66, 77, 88, 99, 100, 77]) == 298
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 66, 67, 77, 88, 99, 100, 77]) == 66
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 5]) == 1038
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 187, 920, 42, 37, 187, 29]) == 1038
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 28, 30, 16]) == 116
    @test add_even_eles_at_odd_inds([3, 5, 100, 7, 9, 12, 15, 33]) == 100
    @test add_even_eles_at_odd_inds([3, 6, 2, 6, 7, 4, 8, 1, 10, 3]) == 20
    @test add_even_eles_at_odd_inds([187, 1, 2, 18, 4, 4, 24, 5, 42, 7, 187, 10, 11, 13, 14, 15, 16, 17, 18, 19, 20, 3, 2, 17, 18]) == 160
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 66, 77, 67, 88, 99, 100]) == 66
    @test add_even_eles_at_odd_inds([78, 3, 5, 100, 7, 9, 12, 15, 18]) == 108
    @test add_even_eles_at_odd_inds([2, 7, 17, 10, 8, 10, 12, 14, 42, 18, 20, 17, 24, 26, 28, 30, 17]) == 136
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 16, 18, 20, 22, 24, 26, 28, 30, 30, 30]) == 136
    @test add_even_eles_at_odd_inds([3, 69, 2, 7, 4, 8, 1, 9, 10, 3]) == 16
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 67, 77, 88, 99, 101]) == 88
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 8, 920, 9, 10]) == 10
    @test add_even_eles_at_odd_inds([11, 22, 33, 55, 65, 88, 99, 99, 10]) == 10
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 44, 55, 88, 7, 77, 99, 10, 100, 100]) == 242
    @test add_even_eles_at_odd_inds([2, 4, 8, 10, 12, 16, 14, 18, 101, 22, 24, 26, 28, 30, 30, 16, 22]) == 140
    @test add_even_eles_at_odd_inds([2, 6, 17, 10, 8, 10, 12, 14, 16, 18, 20, 17, 23, 13, 28, 6]) == 86
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 11, 13, 2, 3, 6, 8, 13, 10, 14, 11]) == 18
    @test add_even_eles_at_odd_inds([88, 6, 2, 7, 19, 8, 1, 9, 5, 9]) == 90
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 65, 77, 88, 99, 99, 11]) == 88
    @test add_even_eles_at_odd_inds([22, 11, 22, 33, 10, 44, 55, 88, 77, 88, 99, 10, 100, 100]) == 154
    @test add_even_eles_at_odd_inds([13, 78, 3, 5, 1, 9, 1, 12, 15]) == 0
    @test add_even_eles_at_odd_inds([3, 5, 100, 55, 98, 7, 9, 12, 6]) == 204
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 14, 16, 18, 20, 17, 23, 13, 28, 30, 6]) == 98
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 2]) == 1040
    @test add_even_eles_at_odd_inds([187, 1, 2, 3, 4, 24, 5, 42, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 37, 3, 2]) == 96
    @test add_even_eles_at_odd_inds([78, 67, 11, 22, 33, 66, 68, 67, 77, 98, 100]) == 246
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 42, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 42
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 12, 15, 18, 15]) == 0
    @test add_even_eles_at_odd_inds([3, 6, 2, 6, 7, 4, 8, 1, 10, 3, 6]) == 26
    @test add_even_eles_at_odd_inds([11, 22, 33, 12, 44, 55, 14, 66, 77, 88, 3, 99, 44, 5, 88]) == 190
    @test add_even_eles_at_odd_inds([22, 33, 44, 55, 66, 77, 88, 99, 44, 22, 77]) == 264
    @test add_even_eles_at_odd_inds([13, 5, 8, 9, 12, 15]) == 20
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 14, 16, 18, 20, 17, 23, 13, 28, 30, 6, 23, 10, 14]) == 108
    @test add_even_eles_at_odd_inds([11, 22, 44, 55, 66, 77, 88, 99, 100, 77, 77]) == 298
    @test add_even_eles_at_odd_inds([22, 33, 44, 55, 66, 77, 100, 88, 99, 44, 22, 77]) == 254
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 68, 77, 99, 100, 66]) == 134
    @test add_even_eles_at_odd_inds([2, 4, 6, 88, 10, 12, 14, 16, 18, 20, 22, 24, 28, 30, 16]) == 116
    @test add_even_eles_at_odd_inds([2, 4, 8, 10, 12, 16, 14, 18, 101, 22, 24, 26, 28, 30, 16, 22]) == 104
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 66, 10, 77, 67, 88, 99, 100]) == 254
    @test add_even_eles_at_odd_inds([1, 15, 4, 4, 5, 42, 7, 7, 9, 11, 12, 13, 14, 15, 16, 16, 18, 13, 20, 19]) == 84
    @test add_even_eles_at_odd_inds([22, 33, 69, 66, 68, 67, 101, 77, 920, 99, 18, 66, 67]) == 1028
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 67, 77, 88, 99, 100, 77, 76, 100, 66]) == 330
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 11, 11, 15]) == 18
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 66, 8, 67, 4, 77, 88, 99, 100]) == 66
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 66, 22, 67, 77, 88, 99, 100, 77]) == 254
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 8, 11, 13, 4, 6, 8, 12, 14, 9]) == 26
    @test add_even_eles_at_odd_inds([2, 6, 11, 17, 8, 8, 10, 12, 14, 16, 18, 20, 17, 24, 13, 28, 30, 6]) == 82
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 55, 88, 77, 88, 99, 10, 100, 10, 88]) == 188
    @test add_even_eles_at_odd_inds([11, 22, 34, 66, 44, 67, 77, 88, 99, 100]) == 78
    @test add_even_eles_at_odd_inds([11, 33, 2, 66, 1, 88, 99]) == 2
    @test add_even_eles_at_odd_inds([1, 2, 16, 7, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 13]) == 16
    @test add_even_eles_at_odd_inds([11, 8, 89, 33, 66, 67, 77, 88, 99, 100]) == 66
    @test add_even_eles_at_odd_inds([13, 5, 26, 8, 9, 12, 37]) == 26
    @test add_even_eles_at_odd_inds([1, 5, 1, 9, 12, 15, 18, 5]) == 30
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 8, 1, 9, 5, 7]) == 6
    @test add_even_eles_at_odd_inds([11, 22, 33, 12, 44, 54, 14, 66, 77, 88, 99, 44, 99]) == 58
    @test add_even_eles_at_odd_inds([23, 11, 22, 33, 66, 68, 67, 77, 88, 98, 100, 100, 68, 23]) == 344
    @test add_even_eles_at_odd_inds([11, 8, 89, 33, 66, 67, 88, 99, 100]) == 254
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 556, 42, 10, 11, 12, 13, 14, 15, 16, 17, 31, 19, 20]) == 628
    @test add_even_eles_at_odd_inds([5, 1, 2, 3, 4, 5, 42, 7, 7, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 18]) == 66
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 8, 1, 0, 9, 5]) == 6
    @test add_even_eles_at_odd_inds([1, 3, 8, 7, 10, 23]) == 18
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 11, 11, 15, 8, 4]) == 26
    @test add_even_eles_at_odd_inds([88, 6, 2, 7, 19, 1, 67, 9, 5, 9]) == 90
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 67, 77, 88, 99, 100, 77, 76, 100, 66, 100, 66]) == 396
    @test add_even_eles_at_odd_inds([8, 4, 12, 6, 13, 8, 10, 12, 13, 15]) == 30
    @test add_even_eles_at_odd_inds([78, 11, 22, 33, 66, 68, 67, 77, 100]) == 266
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 98
    @test add_even_eles_at_odd_inds([3, 5, 100, 77, 54, 9, 12, 18]) == 166
    @test add_even_eles_at_odd_inds([11, 8, 66, 67, 77, 88, 99, 100, 77, 76, 100, 66, 100, 66]) == 266
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 67, 77, 68, 88, 99, 101]) == 68
    @test add_even_eles_at_odd_inds([2, 6, 10, 11, 13]) == 12
    @test add_even_eles_at_odd_inds([22, 44, 55, 66, 77, 100, 88, 99, 44, 22, 77]) == 154
    @test add_even_eles_at_odd_inds([11, 22, 32, 68, 67, 77, 88, 98, 100]) == 220
    @test add_even_eles_at_odd_inds([11, 21, 33, 44, 55, 89, 77, 88, 99, 10, 100]) == 100
    @test add_even_eles_at_odd_inds([11, 8, 76, 33, 66, 67, 88, 99, 100, 77, 76, 100, 66]) == 472
    @test add_even_eles_at_odd_inds([1, 3, 5, 6, 7, 9, 8, 11, 13, 4, 6, 20, 9, 12, 14, 9]) == 28
    @test add_even_eles_at_odd_inds([5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 2]) == 728
    @test add_even_eles_at_odd_inds([187, 1, 2, 3, 4, 24, 5, 42, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 37, 3, 2, 5, 20, 18]) == 114
    @test add_even_eles_at_odd_inds([34, 1, 2, 4, 5, 42, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 15]) == 126
    @test add_even_eles_at_odd_inds([22, 44, 55, 66, 77, 100, 88, 99, 44, 22, 37]) == 154
    @test add_even_eles_at_odd_inds([23, 11, 22, 33, 66, 37, 67, 77, 88, 98, 100, 100, 11, 77]) == 276
    @test add_even_eles_at_odd_inds([11, 22, 21, 33, 68, 67, 77, 88, 98, 100]) == 166
    @test add_even_eles_at_odd_inds([78, 67, 11, 22, 33, 66, 68, 77, 98, 100]) == 244
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 54, 66, 68, 88, 99, 44]) == 122
    @test add_even_eles_at_odd_inds([11, 22, 33, 6, 66, 68, 67, 77, 88, 99, 67, 65]) == 154
    @test add_even_eles_at_odd_inds([11, 8, 89, 33, 66, 67, 77, 88, 99, 100, 33]) == 66
    @test add_even_eles_at_odd_inds([11, 22, 44, 55, 66, 77, 88, 99, 100, 78, 77, 88, 100]) == 398
    @test add_even_eles_at_odd_inds([2, 4, 6, 88, 10, 12, 14, 16, 15, 20, 22, 24, 28, 30, 16, 16, 24]) == 122
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 7, 10, 556, 187, 920, 42, 37, 122, 29]) == 1478
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 44, 55, 88, 21, 7, 77, 88, 99, 100]) == 320
    @test add_even_eles_at_odd_inds([2, 6, 6, 10, 11, 13, 13]) == 8
    @test add_even_eles_at_odd_inds([11, 11, 22, 33, 66, 67, 77, 68, 88, 99, 101]) == 176
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 0, 55, 88, 21, 7, 77, 88, 99, 100]) == 276
    @test add_even_eles_at_odd_inds([11, 68, 34, 66, 44, 67, 77, 88, 99, 100]) == 78
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 8, 6, 920, 9, 10]) == 940
    @test add_even_eles_at_odd_inds([2, 6, 5, 10, 11, 13]) == 2
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 16, 7, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 106
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 37, 22, 37, 24, 26, 28, 30, 16, 18]) == 140
    @test add_even_eles_at_odd_inds([21, 22, 33, 55, 65, 88, 99, 99, 11]) == 0
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 3, 100, 187, 920, 42, 37, 29, 2]) == 60
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 42, 10, 11, 12, 13, 14, 15, 16, 18, 19, 20]) == 80
    @test add_even_eles_at_odd_inds([2, 4, 6, 28, 8, 13, 10, 11, 13, 15]) == 26
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 54, 14, 66, 77, 88, 99, 44, 99]) == 252
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 17, 9, 8, 11, 13, 4, 88, 8, 9, 12, 14, 9]) == 110
    @test add_even_eles_at_odd_inds([11, 8, 30, 66, 67, 77, 88, 99, 100, 77, 76, 100, 66, 66]) == 360
    @test add_even_eles_at_odd_inds([3, 556, 2, 7, 8, 9, 10, 3]) == 20
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 68, 67, 77, 920, 88, 99, 100, 99]) == 256
    @test add_even_eles_at_odd_inds([11, 22, 44, 55, 66, 77, 88, 99, 100, 77, 77, 77]) == 298
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 67, 77, 88, 100, 77, 67]) == 88
    @test add_even_eles_at_odd_inds([11, 22, 44, 55, 66, 77, 88, 99, 100, 11]) == 298
    @test add_even_eles_at_odd_inds([11, 22, 44, 55, 66, 1, 88, 99, 100, 77]) == 298
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 42, 10, 11, 11, 13, 14, 16, 18, 19, 20]) == 58
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 7, 8, 22, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 98
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 14, 16, 7]) == 42
    @test add_even_eles_at_odd_inds([3, 5, 55, 98, 7, 9, 12, 6, 12]) == 24
    @test add_even_eles_at_odd_inds([101, 11, 8, 33, 66, 66, 10, 77, 67, 88, 99, 100, 66]) == 150
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 12, 14, 16, 18, 20, 17, 24, 26, 28, 30, 17]) == 116
    @test add_even_eles_at_odd_inds([3, 100, 55, 98, 7, 9, 12, 6, 3]) == 12
    @test add_even_eles_at_odd_inds([11, 8, 33, 33, 66, 67, 77, 88, 99, 100, 77, 76, 100, 66]) == 166
    @test add_even_eles_at_odd_inds([11, 22, 33, 6, 66, 68, 67, 77, 88, 100, 67]) == 154
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 20, 16, 7, 10, 14, 8, 7, 67, 7]) == 34
    @test add_even_eles_at_odd_inds([11, 8, 89, 33, 66, 67, 77, 88, 99, 100, 8]) == 74
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 67, 77, 88, 99, 100, 77, 76, 100, 66, 88]) == 330
    @test add_even_eles_at_odd_inds([55, 11, 22, 68, 33, 45, 66, 77, 88, 99, 99]) == 176
    @test add_even_eles_at_odd_inds([2, 4, 7, 17, 10, 8, 10, 12, 14, 42, 18, 20, 17, 24, 25, 28, 30]) == 84
    @test add_even_eles_at_odd_inds([3, 33, 5, 7, 9, 122, 6, 19, 7, 10, 556, 100, 187, 920, 42, 37, 29, 10]) == 604
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 14, 8, 17, 8]) == 42
    @test add_even_eles_at_odd_inds([11, 10, 76, 33, 44, 55, 88, 33, 77, 88, 99, 10, 100]) == 308
    @test add_even_eles_at_odd_inds([11, 22, 33, 6, 66, 68, 67, 77, 88, 99, 65, 100]) == 154
    @test add_even_eles_at_odd_inds([2, 6, 11, 17, 8, 8, 10, 12, 14, 16, 18, 20, 17, 54, 24, 13, 28, 29, 6]) == 110
    @test add_even_eles_at_odd_inds([78, 11, 22, 34, 66, 68, 67, 77, 98, 100]) == 264
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 44, 67, 77, 66, 88, 99]) == 132
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 14, 16, 7, 16, 8]) == 58
    @test add_even_eles_at_odd_inds([3, 6, 28, 9, 7, 19, 8, 1, 9, 5]) == 36
    @test add_even_eles_at_odd_inds([3, 5, 28, 101, 23, 7, 9, 12, 18, 28]) == 46
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 17, 9, 8, 11, 13, 4, 88, 8, 9, 12, 14, 9, 17]) == 110
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 30, 16, 12]) == 144
    @test add_even_eles_at_odd_inds([11, 22, 3, 44, 55, 66, 88, 0, 100, 77]) == 188
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 44, 55, 88, 21, 7, 77, 88, 100]) == 220
    @test add_even_eles_at_odd_inds([17, 33, 2, 66, 1, 88]) == 2
    @test add_even_eles_at_odd_inds([8, 4, 12, 6, 13, 8, 10, 8, 13, 15]) == 30
    @test add_even_eles_at_odd_inds([88, 6, 2, 7, 19, 8, 1, 9, 5, 9, 1]) == 90
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 66, 77, 88, 99, 100, 66]) == 254
    @test add_even_eles_at_odd_inds([2, 4, 6, 19, 8, 10, 11, 13, 15, 4, 4, 8, 15]) == 20
    @test add_even_eles_at_odd_inds([11, 22, 44, 55, 66, 77, 87, 99, 100, 77]) == 210
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 68, 77, 920, 100, 66]) == 1054
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 16, 7, 10, 16]) == 26
    @test add_even_eles_at_odd_inds([11, 22, 98, 33, 12, 44, 54, 14, 66, 77, 88, 99, 44, 99]) == 362
    @test add_even_eles_at_odd_inds([3, 556, 2, 7, 8, 9, 31, 10, 3, 556]) == 10
    @test add_even_eles_at_odd_inds([3, 28, 5, 7, 9, 2, 122, 6, 8, 10, 556, 3, 100, 187, 920, 42, 37, 29, 2]) == 1708
    @test add_even_eles_at_odd_inds([2, 4, 6, 19, 8, 37, 11, 13, 22]) == 38
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 10, 8, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 30]) == 148
    @test add_even_eles_at_odd_inds([65, 3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 187, 920, 26, 37, 29]) == 712
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 55, 88, 7, 77, 99, 10, 100, 100]) == 100
    @test add_even_eles_at_odd_inds([11, 22, 16, 55, 66, 77, 88, 99, 100]) == 270
    @test add_even_eles_at_odd_inds([11, 22, 33, 100, 55, 66, 77, 88, 99, 44, 22]) == 22
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 77, 88, 99, 100, 87]) == 0
    @test add_even_eles_at_odd_inds([11, 22, 101, 10, 44, 55, 88, 21, 7, 77, 88, 100]) == 220
    @test add_even_eles_at_odd_inds([11, 22, 33, 78, 44, 55, 66, 77, 88, 99, 44, 55]) == 242
    @test add_even_eles_at_odd_inds([11, 22, 44, 55, 66, 77, 88, 99, 100, 11, 11]) == 298
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 7, 10, 556, 187, 920, 42, 122, 29]) == 1600
    @test add_even_eles_at_odd_inds([11, 22, 33, 66, 44, 66, 77, 88, 36, 100]) == 80
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 68, 77, 921, 100, 66, 100]) == 134
    @test add_even_eles_at_odd_inds([11, 8, 89, 33, 66, 67, 88, 99, 100, 88, 100]) == 354
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 7, 19, 8, 1, 9, 5, 6]) == 16
    @test add_even_eles_at_odd_inds([11, 8, 33, 33, 66, 67, 77, 88, 99, 100, 7, 76, 100, 66, 7]) == 166
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 8, 1, 9, 10, 3, 3]) == 16
    @test add_even_eles_at_odd_inds([12, 11, 33, 66, 67, 77, 88, 99, 100]) == 200
    @test add_even_eles_at_odd_inds([8, 33, 66, 66, 77, 67, 88, 22, 100]) == 262
    @test add_even_eles_at_odd_inds([11, 22, 33, 6, 66, 67, 68, 67, 77, 88, 99, 65, 100]) == 234
    @test add_even_eles_at_odd_inds([11, 22, 101, 10, 44, 55, 88, 21, 7, 77, 88, 100, 7]) == 220
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 101, 2, 122, 6, 8, 10, 556, 100, 187, 920, 41, 37, 29, 5]) == 686
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 67, 77, 88, 99, 100, 77, 77, 100, 66, 100, 66]) == 320
    @test add_even_eles_at_odd_inds([2, 4, 55, 88, 10, 12, 14, 16, 18, 20, 22, 24, 28, 30, 16, 28]) == 110
    @test add_even_eles_at_odd_inds([11, 11, 22, 33, 66, 66, 77, 68, 88, 99, 101]) == 176
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 101, 2, 122, 6, 8, 10, 556, 100, 187, 920, 41, 37, 29, 5, 187]) == 686
    @test add_even_eles_at_odd_inds([3, 6, 24, 7, 4, 8, 0, 9, 10]) == 38
    @test add_even_eles_at_odd_inds([11, 67, 68, 34, 66, 44, 67, 77, 88, 99]) == 222
    @test add_even_eles_at_odd_inds([3, 6, 2, 7, 4, 8, 1, 9, 10, 2]) == 16
    @test add_even_eles_at_odd_inds([3, 6, 24, 7, 4, 8, 1, 10, 10, 4]) == 38
    @test add_even_eles_at_odd_inds([11, 22, 44, 55, 66, 77, 88, 99, 100, 77, 77, 77, 44]) == 342
    @test add_even_eles_at_odd_inds([11, 23, 36, 32, 68, 67, 77, 88, 98, 100]) == 202
    @test add_even_eles_at_odd_inds([3, 101, 7, 9, 12, 18]) == 12
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 556, 42, 10, 11, 12, 13, 14, 15, 16, 17, 31, 19, 20, 42]) == 628
    @test add_even_eles_at_odd_inds([11, 22, 33, 44, 68, 77, 100, 66, 100]) == 268
    @test add_even_eles_at_odd_inds([2, 4, 6, 8, 1, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 31, 16, 41]) == 134
    @test add_even_eles_at_odd_inds([11, 8, 30, 66, 67, 77, 88, 77, 99, 100, 77, 76, 100, 66, 66]) == 284
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 14, 16, 18, 20, 17, 23, 13, 28, 30, 6, 23, 10, 15]) == 108
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 42, 29, 10, 11, 11, 13, 14, 16, 18, 19, 20]) == 104
    @test add_even_eles_at_odd_inds([4, 6, 88, 10, 12, 14, 16, 15, 20, 22, 24, 28, 30, 16, 16, 24]) == 210
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 42, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 17, 20]) == 62
    @test add_even_eles_at_odd_inds([11, 33, 67, 77, 88, 99, 100]) == 188
    @test add_even_eles_at_odd_inds([1, 4, 3, 8, 7, 10, 14, 16, 7, 16, 8]) == 22
    @test add_even_eles_at_odd_inds([11, 8, 33, 66, 66, 77, 67, 88, 3, 99, 100]) == 166
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 32, 0, 55, 88, 21, 7, 77, 88, 99, 12, 100]) == 132
    @test add_even_eles_at_odd_inds([3, 5, 100, 54, 101, 9, 12, 15, 18]) == 130
    @test add_even_eles_at_odd_inds([23, 11, 22, 33, 100, 55, 66, 77, 88, 99, 44]) == 320
    @test add_even_eles_at_odd_inds([5, 1, 2, 3, 4, 5, 42, 7, 7, 9, 11, 12, 69, 12, 14, 15, 16, 17, 18, 19, 20, 18]) == 116
    @test add_even_eles_at_odd_inds([11, 22, 98, 33, 12, 44, 54, 14, 66, 77, 88, 99, 44, 66]) == 362
    @test add_even_eles_at_odd_inds([1, 15, 3, 4, 5, 42, 7, 7, 9, 11, 12, 13, 14, 15, 16, 16, 18, 19]) == 60
    @test add_even_eles_at_odd_inds([22, 3, 5, 28, 101, 23, 7, 9, 12, 18]) == 34
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 8, 11, 13, 4, 6, 8, 9, 12, 14, 9, 9]) == 24
    @test add_even_eles_at_odd_inds([1, 2, 34, 3, 4, 5, 42, 7, 7, 42, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 99, 17, 20]) == 170
    @test add_even_eles_at_odd_inds([3, 5, 28, 101, 23, 7, 187, 12, 18]) == 46
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]) == 0
    @test add_even_eles_at_odd_inds([1, 55, 2, 55, 3, 4, 5, 42, 7, 1, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 20, 78]) == 100
    @test add_even_eles_at_odd_inds([3, 6, 1, 7, 4, 8, 1, 0, 9, 5]) == 4
    @test add_even_eles_at_odd_inds([1, 55, 2, 55, 3, 4, 5, 42, 7, 1, 9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 20, 78, 78]) == 100
    @test add_even_eles_at_odd_inds([3, 6, 1, 7, 4, 8, 1, 0, 9, 5, 0]) == 4
    @test add_even_eles_at_odd_inds([3, 6, 24, 7, 4, 8, 1, 10, 10, 4, 7, 24]) == 38
    @test add_even_eles_at_odd_inds([100, 1, 29, 3, 8, 16, 7, 10, 14]) == 122
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 8, 11, 13, 4, 6, 7, 12, 14, 9]) == 18
    @test add_even_eles_at_odd_inds([13, 5, 26, 8, 9, 12]) == 26
    @test add_even_eles_at_odd_inds([3, 5, 7, 4, 12, 18, 12]) == 24
    @test add_even_eles_at_odd_inds([65, 11, 8, 33, 33, 66, 67, 77, 88, 99, 100, 7, 76, 100, 66, 7]) == 338
    @test add_even_eles_at_odd_inds([2, 4, 6, 6, 10, 11, 13, 11]) == 18
    @test add_even_eles_at_odd_inds([12, 8, 33, 66, 67, 77, 99, 100, 77, 100]) == 12
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 44, 55, 88, 21, 7, 77, 88, 100, 21]) == 220
    @test add_even_eles_at_odd_inds([65, 3, 5, 7, 9, 2, 122, 6, 8, 556, 100, 187, 920, 42, 37, 29, 42]) == 1192
    @test add_even_eles_at_odd_inds([6, 6, 10, 11, 13, 13]) == 16
    @test add_even_eles_at_odd_inds([3, 5, 7, 9, 2, 122, 6, 8, 10, 556, 100, 187, 920, 42, 37, 29, 5, 187]) == 1038
    @test add_even_eles_at_odd_inds([2, 7, 4, 8, 1, 0, 9, 5]) == 6
    @test add_even_eles_at_odd_inds([23, 11, 22, 33, 66, 37, 67, 77, 88, 98, 100, 100, 11, 77, 98]) == 374
    @test add_even_eles_at_odd_inds([187, 1, 2, 3, 4, 24, 5, 42, 7, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 6, 19, 20, 37, 77, 2, 5, 20, 18, 17, 16]) == 98
    @test add_even_eles_at_odd_inds([1, 3, 5, 7, 9, 8, 11, 13, 4, 4, 6, 8, 9, 12, 14, 11]) == 24
    @test add_even_eles_at_odd_inds([1, 4, 3, 5, 16, 7, 10, 14, 10]) == 36
    @test add_even_eles_at_odd_inds([11, 8, 89, 33, 67, 77, 88, 99, 100, 37, 33]) == 188
    @test add_even_eles_at_odd_inds([1, 2, 34, 3, 4, 5, 42, 7, 7, 42, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 32, 99, 17, 20, 42, 17]) == 224
    @test add_even_eles_at_odd_inds([13, 5, 8, 12, 15]) == 8
    @test add_even_eles_at_odd_inds([23, 11, 22, 33, 100, 55, 23, 66, 77, 88, 99, 45]) == 122
    @test add_even_eles_at_odd_inds([1, 2, 3, 4, 5, 42, 7, 7, 9, 10, 11, 12, 13, 14, 15, 16, 4, 17, 18, 19, 20, 1]) == 42
    @test add_even_eles_at_odd_inds([4, 6, 6, 10, 11, 13]) == 10
    @test add_even_eles_at_odd_inds([11, 22, 33, 10, 44, 55, 88, 7, 77, 99, 10, 100, 55]) == 142
    @test add_even_eles_at_odd_inds([2, 4, 6, 17, 10, 8, 10, 12, 14, 16, 18, 20, 17, 24, 13, 28, 30, 6, 4, 2, 4, 18, 18]) == 116
    @test add_even_eles_at_odd_inds([33, 5, 100, 77, 54, 9, 18, 3]) == 172
end
