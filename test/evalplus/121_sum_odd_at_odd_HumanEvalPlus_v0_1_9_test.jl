@testitem "121_sum_odd_at_odd_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "121_sum_odd_at_odd.jl"))
    @test sum_odd_at_odd([1, 2, 3, 4, 5, 6]) == 9
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7]) == 0
    @test sum_odd_at_odd([2, 5, 10, 11, 18]) == 0
    @test sum_odd_at_odd([1, 3, 5, 7]) == 6
    @test sum_odd_at_odd([2, 3, 5, 8, 13]) == 18
    @test sum_odd_at_odd([2, 4, 6, 8, 10]) == 0
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1]) == 3
    @test sum_odd_at_odd([7]) == 7
    @test sum_odd_at_odd([2, 1, 2, 1, 2, 1]) == 0
    @test sum_odd_at_odd([0, 0, 0, 0, 1]) == 1
    @test sum_odd_at_odd([2, 5, 10, 11, 11]) == 11
    @test sum_odd_at_odd([2, 4, 0, 6, 8, 1]) == 0
    @test sum_odd_at_odd([2, 10, 11, 18]) == 11
    @test sum_odd_at_odd([2, 1, 2, 1, 2, 2, 1]) == 1
    @test sum_odd_at_odd([2, 7, 1, 2, 1, 2, 1]) == 3
    @test sum_odd_at_odd([1, 2, 3, 4, 5]) == 9
    @test sum_odd_at_odd([2, 5, 10, 11, 2, 11, 11]) == 11
    @test sum_odd_at_odd([1, 1, 1, 3, 4, 5, 5, 7]) == 7
    @test sum_odd_at_odd([4, 10, 11, 18]) == 11
    @test sum_odd_at_odd([1, 2, 3, 13, 5, 6]) == 9
    @test sum_odd_at_odd([2, 1, 2, 1, 2, 2, 1, 2]) == 1
    @test sum_odd_at_odd([2, 3, 4, 5]) == 0
    @test sum_odd_at_odd([13, 5, 10, 11, 2, 11, 11]) == 24
    @test sum_odd_at_odd([2, 5, 11, 2, 11, 11]) == 22
    @test sum_odd_at_odd([2, 1, 2, 6, 2, 1]) == 0
    @test sum_odd_at_odd([0, 1, 3, 5, 7, 5]) == 10
    @test sum_odd_at_odd([2, 7, 1, 2, 3, 1, 2, 1, 2]) == 4
    @test sum_odd_at_odd([1, 3, 2, 7]) == 1
    @test sum_odd_at_odd([2, 7, 1, 2, 3, 1, 2, 1, 2, 2]) == 4
    @test sum_odd_at_odd([2, 1, 2, 2, 1, 2]) == 1
    @test sum_odd_at_odd([2, 4, 8, 10]) == 0
    @test sum_odd_at_odd([0, 1, 2, 3, 5, 6, 7, 2]) == 12
    @test sum_odd_at_odd([1, 2, 1, 2, 1, 2, 2, 1, 2]) == 3
    @test sum_odd_at_odd([2, 5, 10, 11, 2, 11]) == 0
    @test sum_odd_at_odd([2, 3, 5, 13, 5]) == 10
    @test sum_odd_at_odd([6, 10, 11, 18]) == 11
    @test sum_odd_at_odd([0, 0, 10, 0, 1]) == 1
    @test sum_odd_at_odd([2, 7, 4, 8, 10]) == 0
    @test sum_odd_at_odd([7, 2, 10, 11, 10, 18]) == 7
    @test sum_odd_at_odd([2, 3, 5, 8, 12]) == 5
    @test sum_odd_at_odd([1, 1, 1, 1]) == 2
    @test sum_odd_at_odd([2, 7, 1, 2, 3, 1, 11, 13, 2, 1, 2, 2]) == 15
    @test sum_odd_at_odd([2, 3, 5, 13, 13]) == 18
    @test sum_odd_at_odd([2, 1, 2, 1, 2, 1, 1]) == 1
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 6]) == 0
    @test sum_odd_at_odd([4, 10, 11, 18, 18]) == 11
    @test sum_odd_at_odd([12, 13]) == 0
    @test sum_odd_at_odd([2, 5, 10, 11, 11, 2, 11]) == 22
    @test sum_odd_at_odd([2, 3, 5, 8, 13, 13]) == 18
    @test sum_odd_at_odd([2, 5, 6, 11, 2, 11, 11, 2]) == 11
    @test sum_odd_at_odd([2, 1, 3, 1, 2]) == 3
    @test sum_odd_at_odd([7, 1, 2, 3, 1, 2, 1, 2]) == 9
    @test sum_odd_at_odd([2, 5, 10, 11, 11, 2, 11, 2]) == 22
    @test sum_odd_at_odd([0, 3, 5, 7, 5, 7]) == 10
    @test sum_odd_at_odd([2, 1, 2, 6, 2, 1, 1, 1]) == 1
    @test sum_odd_at_odd([1, 2, 4, 5, 6]) == 1
    @test sum_odd_at_odd([1, 3, 13, 14, 5, 6]) == 19
    @test sum_odd_at_odd([10, 2, 3, 13, 5, 6, 2]) == 8
    @test sum_odd_at_odd([10, 2, 14, 3, 13, 5, 6]) == 13
    @test sum_odd_at_odd([0, 5, 2, 7, 5, 7, 2]) == 5
    @test sum_odd_at_odd([2, 5, 10, 11, 11, 2, 11, 2, 11]) == 33
    @test sum_odd_at_odd([3, 2, 7]) == 10
    @test sum_odd_at_odd([2, 5, 10, 11, 2, 11, 11, 2]) == 11
    @test sum_odd_at_odd([0, 1, 0, 0, 0, 1]) == 0
    @test sum_odd_at_odd([1, 3, 3, 13, 14, 5, 18]) == 4
    @test sum_odd_at_odd([0, 1, 3, 7, 5]) == 8
    @test sum_odd_at_odd([2, 4, 5, 13, 5, 5]) == 10
    @test sum_odd_at_odd([1, 1, 1, 10, 3, 4, 5, 5, 7]) == 17
    @test sum_odd_at_odd([4, 10, 11, 18, 10]) == 11
    @test sum_odd_at_odd([0, 3, 5, 7, 5]) == 10
    @test sum_odd_at_odd([2, 8, 10, 10]) == 0
    @test sum_odd_at_odd([0, 1, 2, 3, 11, 4, 5, 6, 7]) == 23
    @test sum_odd_at_odd([2, 2, 5, 10, 11, 11]) == 16
    @test sum_odd_at_odd([1, 1, 1, 10, 3, 4, 5, 5, 7, 4]) == 17
    @test sum_odd_at_odd([2, 4, 7, 8, 10]) == 7
    @test sum_odd_at_odd([2, 1, 2, 0, 1, 2, 12, 1]) == 1
    @test sum_odd_at_odd([1, 2, 1, 2, 2, 1, 2]) == 2
    @test sum_odd_at_odd([1, 2, 10, 2, 2]) == 1
    @test sum_odd_at_odd([2, 7, 4, 8, 10, 10]) == 0
    @test sum_odd_at_odd([5, 3, 4, 5]) == 5
    @test sum_odd_at_odd([0, 1, 3, 2, 7]) == 10
    @test sum_odd_at_odd([5, 3, 5, 4, 5]) == 15
    @test sum_odd_at_odd([2, 6, 1, 2, 6, 2, 1, 1, 1, 1]) == 3
    @test sum_odd_at_odd([1, 2, 3, 4, 5, 6, 7, 6]) == 16
    @test sum_odd_at_odd([6, 12, 13]) == 13
    @test sum_odd_at_odd([1, 4, 7, 8, 10]) == 8
    @test sum_odd_at_odd([2, 5, 10, 11, 11, 11]) == 11
    @test sum_odd_at_odd([5, 11, 10, 11, 2, 11]) == 5
    @test sum_odd_at_odd([2, 5, 10, 12, 11, 11, 11, 11]) == 22
    @test sum_odd_at_odd([0, 10, 0, 1, 0]) == 0
    @test sum_odd_at_odd([13, 5, 10, 11, 2, 11, 11, 10]) == 24
    @test sum_odd_at_odd([1, 2, 3, 4, 5, 6, 5]) == 14
    @test sum_odd_at_odd([0, 10, 0, 1, 0, 1]) == 0
    @test sum_odd_at_odd([1, 3, 2, 1, 2, 2, 1, 2]) == 2
    @test sum_odd_at_odd([1, 2, 4, 5, 6, 1, 6]) == 1
    @test sum_odd_at_odd([2, 5, 10, 11, 2, 11, 11, 10, 5, 5]) == 16
    @test sum_odd_at_odd([2, 1, 3, 2]) == 3
    @test sum_odd_at_odd([2, 5, 10, 11, 11, 2]) == 11
    @test sum_odd_at_odd([0, 0, 0, 13]) == 0
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 7, 8, 9, 10]) == 0
    @test sum_odd_at_odd([1, 4, 1, 4, 1, 4, 1, 4]) == 4
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 1, 5, 5, 5]) == 11
    @test sum_odd_at_odd([0, 0, 0, 0, 0, 0, 0, 0]) == 0
    @test sum_odd_at_odd([11, 22, 33, 44, 55, 66, 77, 88, 99]) == 275
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8]) == 0
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 9, 8, 11, 10]) == 0
    @test sum_odd_at_odd([31, 42, 53, 64, 75, 86, 97, 108, 119]) == 375
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 0
    @test sum_odd_at_odd([65, 11, 22, 33, 44, 55, 66, 77, 88, 99]) == 65
    @test sum_odd_at_odd([0, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 24
    @test sum_odd_at_odd([2, 5, 2, 2, 1, 1, 1, 5, 5, 5, 1]) == 8
    @test sum_odd_at_odd([65, 22, 33, 44, 55, 66, 77, 88]) == 230
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 5, 5, 5]) == 7
    @test sum_odd_at_odd([2, 3, 4, 6, 9, 8, 11, 10]) == 20
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 5, 5, 5, 5]) == 12
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 9, 2]) == 9
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 2]) == 0
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 7, 8, 9, 31, 10]) == 31
    @test sum_odd_at_odd([11, 22, 33, 44, 55, 66, 88, 99]) == 99
    @test sum_odd_at_odd([2, 1, 1, 1, 5, 5, 5]) == 11
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 1, 5, 5]) == 6
    @test sum_odd_at_odd([2, 3, 4, 9, 8, 11, 10]) == 0
    @test sum_odd_at_odd([2, 3, 4, 4, 6, 9, 8, 11, 10]) == 0
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 8, 9, 31, 10]) == 9
    @test sum_odd_at_odd([65, 22, 44, 55, 66, 77]) == 65
    @test sum_odd_at_odd([1, 4, 1, 1, 4, 1, 4]) == 2
    @test sum_odd_at_odd([65, 11, 22, 33, 44, 55, 66, 77, 88, 77, 99]) == 164
    @test sum_odd_at_odd([2, 11, 3, 4, 5, 88, 6, 9, 8, 11, 10, 8]) == 8
    @test sum_odd_at_odd([2, 3, 4, 4, 6, 9, 8, 11, 10, 8]) == 0
    @test sum_odd_at_odd([12, 22, 33, 44, 55, 66, 77, 88, 99]) == 264
    @test sum_odd_at_odd([2, 3, 4, 9, 8, 11]) == 0
    @test sum_odd_at_odd([2, 11, 3, 4, 4, 6, 9, 8, 11, 10, 8]) == 23
    @test sum_odd_at_odd([0, 0, 0, 0, 0, 0, 0, 0, 0]) == 0
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 8, 11, 10, 8]) == 3
    @test sum_odd_at_odd([1, 2, 2, 1, 1, 1, 5, 5]) == 7
    @test sum_odd_at_odd([86, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 24
    @test sum_odd_at_odd([65, 22, 33, 55, 66, 77, 88]) == 98
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([1, 11, 1, 1, 4, 1, 4, 1]) == 2
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 12, 8, 11, 10, 8]) == 14
    @test sum_odd_at_odd([11, 22, 33, 44, 65, 55, 66, 88, 99, 22]) == 208
    @test sum_odd_at_odd([3, 1, 1, 1, 5, 5, 5]) == 14
    @test sum_odd_at_odd([2, 5, 2, 2, 1, 1, 1, 5, 5, 5, 1, 1, 5]) == 13
    @test sum_odd_at_odd([75, 1, 2, 3, 4, 5, 6, 7, 9, 2]) == 84
    @test sum_odd_at_odd([1, 55, 2, 2, 1, 1, 1, 5, 5, 1]) == 8
    @test sum_odd_at_odd([2, 2, 2, 44, 1, 1, 5, 5, 5]) == 11
    @test sum_odd_at_odd([99, 1, 4, 1, 4, 1, 4, 1, 4]) == 99
    @test sum_odd_at_odd([0, 0, 0, 0, 0, 0, 0]) == 0
    @test sum_odd_at_odd([86, 2, 3, 4, 4, 5, 6, 7, 8, 9, 10]) == 3
    @test sum_odd_at_odd([11, 12, 22, 33, 44, 55, 66, 77, 88, 99]) == 11
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 12, 8, 11, 33, 8]) == 14
    @test sum_odd_at_odd([75, 1, 2, 3, 4, 5, 6, 7, 9, 2, 4]) == 84
    @test sum_odd_at_odd([86, 2, 3, 4, 4, 6, 7, 8, 9, 10]) == 19
    @test sum_odd_at_odd([75, 1, 2, 4, 4, 5, 6, 7, 9, 2, 4]) == 84
    @test sum_odd_at_odd([12, 22, 33, 44, 55, 44, 77, 88, 99, 77]) == 264
    @test sum_odd_at_odd([2, 11, 3, 4, 5, 88, 6, 9, 8, 55, 11, 10, 8, 8]) == 19
    @test sum_odd_at_odd([11, 22, 33, 56, 44, 65, 55, 66, 88, 99, 22, 22]) == 99
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([1, 2, 2, 6, 1, 77, 1, 1, 5, 1, 5]) == 13
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 12, 8, 11, 10, 8, 9]) == 14
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 97, 1, 1, 1]) == 102
    @test sum_odd_at_odd([3, 4, 4, 6, 9, 12, 8, 11, 33, 8]) == 45
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 12, 8, 11, 10, 9, 8, 10]) == 23
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 5, 1, 1]) == 5
    @test sum_odd_at_odd([11, 12, 22, 33, 44, 55, 66, 77, 0, 88, 99]) == 110
    @test sum_odd_at_odd([86, 2, 3, 4, 5, 6, 7, 8, 53, 9, 10]) == 68
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 9, 9, 31, 10, 2]) == 9
    @test sum_odd_at_odd([33, 1, 1, 1, 1, 1, 1, 1, 5, 1, 1, 1]) == 42
    @test sum_odd_at_odd([0, 1, 1, 1, 1, 1, 1, 97, 1, 1, 1]) == 5
    @test sum_odd_at_odd([2, 1, 4, 1, 4, 5, 1, 5]) == 1
    @test sum_odd_at_odd([2, 11, 3, 3, 4, 6, 9, 8, 11, 10, 8]) == 23
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 7, 11, 10, 44]) == 10
    @test sum_odd_at_odd([3, 4, 6, 9, 8, 11, 10]) == 3
    @test sum_odd_at_odd([2, 5, 2, 2, 1, 1, 1, 5, 5, 5, 1, 1, 5, 5]) == 13
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 55, 5]) == 6
    @test sum_odd_at_odd([0, 1, 2, 3, 5, 6, 7, 8, 9, 10]) == 21
    @test sum_odd_at_odd([2, 3, 4, 9, 9, 11, 2, 10]) == 9
    @test sum_odd_at_odd([11, 22, 33, 44, 65, 55, 66, 88, 99, 22, 22]) == 208
    @test sum_odd_at_odd([11, 22, 33, 55, 66, 88, 99]) == 143
    @test sum_odd_at_odd([3, 3, 4, 6, 9, 12, 8, 11, 10, 9, 8, 10]) == 12
    @test sum_odd_at_odd([1, 11, 1, 1, 4, 1, 4, 1, 1]) == 3
    @test sum_odd_at_odd([11, 12, 22, 33, 44, 55, 66, 77, 88, 99, 55]) == 66
    @test sum_odd_at_odd([75, 1, 2, 3, 4, 5, 6, 7, 9, 2, 4, 1]) == 84
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 97, 1, 1, 1, 1]) == 103
    @test sum_odd_at_odd([0, 1, 2, 3, 3, 4, 5, 6, 7, 9, 2]) == 15
    @test sum_odd_at_odd([75, 1, 2, 3, 4, 6, 7, 9, 2, 4]) == 82
    @test sum_odd_at_odd([76, 1, 2, 4, 4, 5, 6, 7, 9, 2, 4]) == 9
    @test sum_odd_at_odd([2, 3, 4, 6, 8, 9, 31]) == 31
    @test sum_odd_at_odd([1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 1, 1, 97, 1, 1, 1]) == 102
    @test sum_odd_at_odd([2, 5, 6, 2, 2, 1, 1, 1, 5, 5, 5, 1, 1, 5]) == 12
    @test sum_odd_at_odd([3, 3, 3, 4, 4, 6, 9, 12, 8, 11, 10, 8, 9, 11]) == 24
    @test sum_odd_at_odd([1, 55, 2, 2, 1, 1, 1, 5, 5, 33, 1]) == 9
    @test sum_odd_at_odd([75, 1, 2, 4, 5, 6, 7, 9, 2, 4]) == 87
    @test sum_odd_at_odd([2, 3, 4, 4, 6, 9, 8, 11, 10, 8, 4, 6]) == 0
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 1, 1, 1, 97, 1, 1, 1]) == 7
    @test sum_odd_at_odd([86, 2, 2, 4, 4, 5, 6, 7, 8, 9, 10]) == 0
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 0, 5, 5, 5]) == 12
    @test sum_odd_at_odd([2, 11, 3, 4, 5, 88, 9, 8, 11, 10]) == 28
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 97, 1, 1, 0, 1, 1]) == 103
    @test sum_odd_at_odd([11, 22, 33, 44, 6, 65, 55, 66, 88, 99, 22, 22]) == 99
    @test sum_odd_at_odd([11, 22, 33, 6, 65, 55, 66, 88, 99, 22, 22, 65]) == 208
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 4, 9]) == 9
    @test sum_odd_at_odd([56, 11, 3, 4, 5, 88, 9, 8, 55, 11, 10, 8, 8]) == 72
    @test sum_odd_at_odd([0, 53, 2, 3, 5, 6, 7, 8, 9, 10]) == 21
    @test sum_odd_at_odd([3, 3, 3, 4, 4, 6, 9, 3, 12, 8, 11, 10, 8, 9, 11]) == 37
    @test sum_odd_at_odd([31, 42, 53, 64, 5, 76, 86, 97, 108, 119]) == 89
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 12, 8, 11, 10, 10, 8, 10, 12]) == 14
    @test sum_odd_at_odd([2, 11, 0, 4, 4, 6, 9, 8, 11, 10, 8]) == 20
    @test sum_odd_at_odd([11, 22, 33, 44, 55, 66, 88, 99, 22]) == 99
    @test sum_odd_at_odd([3, 3, 3, 4, 4, 6, 9, 12, 8, 12, 10, 8, 9, 11]) == 24
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 5, 1, 8, 1, 1, 1]) == 7
    @test sum_odd_at_odd([1, 55, 2, 2, 1, 1, 1, 5, 5, 1, 1]) == 9
    @test sum_odd_at_odd([2, 11, 3, 4, 5, 88, 5, 9, 8, 55, 11, 8, 8]) == 24
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 1, 5, 5, 5, 1]) == 11
    @test sum_odd_at_odd([2, 3, 4, 4, 6, 9, 44, 11, 10]) == 0
    @test sum_odd_at_odd([0, 1, 2, 3, 5, 6, 7, 8, 9, 10, 4, 9]) == 21
    @test sum_odd_at_odd([12, 22, 33, 44, 55, 44, 77, 88, 99, 77, 77]) == 341
    @test sum_odd_at_odd([75, 119, 2, 3, 64, 6, 7, 9, 2, 4]) == 82
    @test sum_odd_at_odd([0, 1, 2, 3, 0, 4, 5, 6, 7, 8, 0]) == 12
    @test sum_odd_at_odd([99, 1, 4, 1, 1, 4, 1, 4]) == 101
    @test sum_odd_at_odd([3, 3, 4, 4, 4, 12, 8, 33, 8]) == 3
    @test sum_odd_at_odd([2, 3, 4, 4, 6, 9, 11, 10, 8, 4, 6]) == 11
    @test sum_odd_at_odd([2, 1, 1, 1, 4, 5, 5, 5, 5]) == 11
    @test sum_odd_at_odd([2, 11, 3, 3, 88, 6, 9, 8, 11, 10, 8, 3]) == 23
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 5, 5, 1, 5]) == 11
    @test sum_odd_at_odd([2, 3, 4, 6, 65, 8, 11, 10, 8, 4, 6]) == 76
    @test sum_odd_at_odd([1, 1, 1, 108, 1, 1, 1, 1, 1, 97, 1, 1, 1]) == 7
    @test sum_odd_at_odd([2, 10, 3, 4, 5, 6, 7, 8, 9, 31, 10]) == 24
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 1, 1, 22, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([3, 3, 4, 4, 4, 12, 8, 33, 9]) == 12
    @test sum_odd_at_odd([1, 1, 1, 77, 12, 1, 1, 1, 1, 97, 1, 1, 1]) == 6
    @test sum_odd_at_odd([11, 22, 33, 44, 65, 55, 66, 88, 99, 22, 22, 33]) == 208
    @test sum_odd_at_odd([2, 5, 2, 2, 1, 1, 1, 5, 5, 5, 6, 1, 5]) == 12
    @test sum_odd_at_odd([0, 2, 3, 4, 5, 6, 7, 8, 77, 10]) == 92
    @test sum_odd_at_odd([99, 1, 4, 1, 4, 1, 4, 22, 1, 4]) == 100
    @test sum_odd_at_odd([2, 1, 1, 1, 1, 4, 5, 5, 5, 5]) == 12
    @test sum_odd_at_odd([1, 4, 1, 4, 1, 4, 1]) == 4
    @test sum_odd_at_odd([0, 1, 2, 3, 9, 5, 6, 7, 8, 9, 10]) == 9
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 2, 5, 5, 5]) == 11
    @test sum_odd_at_odd([2, 11, 3, 4, 5, 88, 5, 9, 8, 11, 8, 66]) == 13
    @test sum_odd_at_odd([10, 12, 22, 33, 44, 55, 66, 77, 88, 99]) == 0
    @test sum_odd_at_odd([2, 4, 2, 4, 5, 1, 5]) == 10
    @test sum_odd_at_odd([3, 4, 4, 6, 9, 12, 8, 11, 32, 8, 8]) == 12
    @test sum_odd_at_odd([65, 56, 22, 33, 44, 55, 66, 77, 88]) == 65
    @test sum_odd_at_odd([65, 11, 65, 22, 33, 44, 55, 66, 77, 88, 77, 99, 10]) == 372
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 6, 7, 8, 9, 10]) == 16
    @test sum_odd_at_odd([99, 1, 4, 1, 1, 4, 1, 4, 1]) == 102
    @test sum_odd_at_odd([2, 11, 3, 4, 5, 88, 5, 76, 55, 11, 8, 8]) == 68
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 5, 5, 5, 5, 5]) == 12
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == 0
    @test sum_odd_at_odd([12, 22, 33, 86, 55, 44, 32, 76, 88, 99, 77, 77]) == 165
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 12, 8, 11, 10, 8, 9, 6]) == 14
    @test sum_odd_at_odd([0, 1, 1, 1, 1, 1, 97, 1, 1, 1, 1]) == 101
    @test sum_odd_at_odd([11, 22, 33, 44, 65, 55, 66, 88, 99, 22, 65]) == 273
    @test sum_odd_at_odd([1, 55, 2, 2, 1, 1, 1, 1, 5, 5, 33, 1]) == 41
    @test sum_odd_at_odd([2, 1, 1, 1, 2, 1, 1, 1, 1, 22, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([2, 5, 2, 2, 33, 1, 1, 5, 5, 5, 42, 1, 1, 5, 5]) == 45
    @test sum_odd_at_odd([2, 3, 4, 9, 9, 11, 2, 2, 10]) == 9
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0]) == 7
    @test sum_odd_at_odd([0, 0, 0, 0, 0, 0]) == 0
    @test sum_odd_at_odd([1, 4, 1, 1, 4, 1, 4, 1]) == 2
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 22, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([2, 3, 4, 3, 6, 44, 11, 10, 44]) == 11
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 1, 5, 5, 5, 1, 1, 5]) == 12
    @test sum_odd_at_odd([1, 1, 44, 1, 44, 1, 1, 1, 1, 1, 97, 1, 1, 1]) == 101
    @test sum_odd_at_odd([11, 22, 33, 44, 65, 55, 66, 88, 99, 0, 22, 33, 88]) == 208
    @test sum_odd_at_odd([2, 4, 2, 4, 5, 1, 5, 2]) == 10
    @test sum_odd_at_odd([1, 1, 1, 108, 1, 1, 1, 1, 1, 97, 1, 1, 119, 1]) == 125
    @test sum_odd_at_odd([0, 1, 2, 3, 6, 7, 8, 9, 10, 5, 2]) == 0
    @test sum_odd_at_odd([2, 4, 3, 4, 6, 1, 5, 2]) == 8
    @test sum_odd_at_odd([75, 119, 2, 3, 64, 6, 9, 7, 9, 2, 4]) == 93
    @test sum_odd_at_odd([65, 10, 22, 33, 44, 55, 76, 66, 77, 88, 22, 33]) == 142
    @test sum_odd_at_odd([11, 22, 32, 44, 6, 65, 55, 66, 88, 99, 64, 22, 22]) == 66
    @test sum_odd_at_odd([3, 3, 4, 4, 42, 7, 11, 10, 32, 44]) == 14
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 97, 1, 1, 0, 1, 1, 1]) == 104
    @test sum_odd_at_odd([1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0]) == 7
    @test sum_odd_at_odd([86, 2, 3, 4, 5, 6, 6, 7, 8, 53, 10]) == 8
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 1, 32, 1]) == 6
    @test sum_odd_at_odd([11, 21, 33, 44, 65, 55, 89, 66, 88, 99, 22, 65]) == 198
    @test sum_odd_at_odd([31, 42, 53, 5, 76, 86, 97, 108, 119]) == 300
    @test sum_odd_at_odd([12, 11, 22, 33, 6, 65, 55, 66, 88, 99, 22, 22, 65, 88]) == 120
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 22, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([2, 4, 5, 6, 7, 8, 9, 31, 10]) == 21
    @test sum_odd_at_odd([2, 4, 2, 4, 6, 1, 5, 2]) == 5
    @test sum_odd_at_odd([75, 1, 2, 4, 5, 6, 7, 9, 2, 4, 1]) == 88
    @test sum_odd_at_odd([2, 5, 2, 2, 1, 1, 1, 5, 21, 5, 5, 1]) == 28
    @test sum_odd_at_odd([31, 42, 53, 5, 86, 97, 108]) == 84
    @test sum_odd_at_odd([3, 3, 4, 4, 42, 7, 10, 32, 44]) == 3
    @test sum_odd_at_odd([2, 11, 3, 4, 5, 88, 5, 76, 55, 11, 8, 8, 8]) == 68
    @test sum_odd_at_odd([1, 4, 1, 4, 2, 1, 4, 1, 4, 4, 4]) == 2
    @test sum_odd_at_odd([86, 2, 21, 4, 4, 6, 7, 8, 9, 10, 7]) == 44
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 12, 11, 10, 8, 9]) == 12
    @test sum_odd_at_odd([4, 4, 77, 4, 6, 9, 12, 8, 11, 33, 8, 33, 9]) == 97
    @test sum_odd_at_odd([33, 11, 2, 33, 44, 65, 55, 66, 88, 99, 0, 22, 33, 88]) == 121
    @test sum_odd_at_odd([11, 22, 33, 44, 65, 54, 66, 88, 99, 22, 22, 33, 22]) == 208
    @test sum_odd_at_odd([2, 3, 4, 6, 44, 11, 10, 44]) == 0
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 97, 9, 2]) == 97
    @test sum_odd_at_odd([0, 1, 1, 1, 1, 1, 1, 64, 97, 1, 1, 1, 1]) == 102
    @test sum_odd_at_odd([0, 53, 2, 3, 6, 5, 75, 7, 8, 9, 10]) == 75
    @test sum_odd_at_odd([11, 22, 33, 44, 65, 55, 66, 88, 99, 77, 22, 22, 99]) == 307
    @test sum_odd_at_odd([11, 22, 33, 44, 55, 32, 66, 77, 88, 99]) == 99
    @test sum_odd_at_odd([65, 11, 65, 22, 33, 44, 55, 66, 77, 88, 77, 99, 10, 77, 88]) == 372
    @test sum_odd_at_odd([76, 22, 33, 100, 44, 65, 55, 66, 88, 99, 0, 22, 33, 88]) == 121
    @test sum_odd_at_odd([1, 3, 4, 2, 4, 5, 1, 5]) == 2
    @test sum_odd_at_odd([22, 33, 100, 65, 55, 66, 56, 99, 21, 0, 22, 33, 88]) == 76
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 1, 1, 22, 1, 1, 1, 1, 2]) == 6
    @test sum_odd_at_odd([11, 22, 33, 44, 65, 55, 66, 88, 56, 99, 0, 22, 33, 88]) == 142
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 5, 1, 1, 1]) == 6
    @test sum_odd_at_odd([0, 1, 2, 3, 5, 7, 7, 8, 9, 10]) == 21
    @test sum_odd_at_odd([86, 2, 2, 4, 4, 5, 6, 7, 8, 9, 10, 9]) == 0
    @test sum_odd_at_odd([0, 53, 2, 3, 5, 6, 8, 9, 10]) == 5
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 5, 1, 8, 108, 1, 1]) == 6
    @test sum_odd_at_odd([0, 1, 1, 1, 1, 1, 97, 1, 1, 0, 1]) == 101
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 1, 5, 5, 2]) == 6
    @test sum_odd_at_odd([0, 1, 2, 3, 100, 5, 6, 7, 8, 9, 10, 4, 9, 7]) == 9
    @test sum_odd_at_odd([31, 11, 53, 64, 5, 76, 86, 97, 108, 119]) == 89
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 98, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 97, 1, 1, 1, 1, 1]) == 103
    @test sum_odd_at_odd([0, 1, 2, 3, 5, 6, 7, 8, 9, 10, 4]) == 21
    @test sum_odd_at_odd([100, 2, 3, 3, 6, 44, 11, 10, 44, 100]) == 14
    @test sum_odd_at_odd([11, 22, 33, 44, 54, 66, 88, 99, 22, 22, 33, 22, 22]) == 77
    @test sum_odd_at_odd([2, 11, 3, 4, 9, 8, 11, 10]) == 23
    @test sum_odd_at_odd([86, 2, 3, 65, 5, 6, 42, 53, 77, 9, 10]) == 85
    @test sum_odd_at_odd([2, 11, 0, 4, 10, 4, 6, 9, 8, 11, 10, 8]) == 0
    @test sum_odd_at_odd([75, 75, 2, 3, 4, 5, 6, 7, 9, 2]) == 84
    @test sum_odd_at_odd([76, 3, 1, 2, 4, 4, 5, 6, 10, 9, 1, 4]) == 7
    @test sum_odd_at_odd([0, 1, 2, 54, 3, 4, 5, 6, 7, 9, 10]) == 15
    @test sum_odd_at_odd([2, 11, 0, 4, 10, 4, 4, 6, 9, 8, 11, 10, 8]) == 20
    @test sum_odd_at_odd([0, 2, 3, 4, 5, 6, 7, 8, 10]) == 15
    @test sum_odd_at_odd([2, 2, 44, 1, 1, 5, 5, 5]) == 6
    @test sum_odd_at_odd([0, 1, 2, 5, 6, 7, 8, 9, 10, 9]) == 0
    @test sum_odd_at_odd([2, 2, 1, 31, 2, 5, 5, 5]) == 6
    @test sum_odd_at_odd([86, 2, 2, 4, 4, 5, 6, 7, 8, 9, 10, 5]) == 0
    @test sum_odd_at_odd([99, 1, 4, 1, 4, 1, 4, 1, 4, 1]) == 99
    @test sum_odd_at_odd([2, 3, 4, 6, 6, 7, 8, 9, 10, 6]) == 0
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 8, 11, 10, 8, 9]) == 12
    @test sum_odd_at_odd([11, 22, 33, 44, 54, 66, 88, 99, 22, 22, 66, 33, 22, 22, 22, 33]) == 44
    @test sum_odd_at_odd([11, 22, 33, 44, 55, 66, 77, 88, 99, 77]) == 275
    @test sum_odd_at_odd([5, 3, 3, 4, 4, 4, 12, 8, 33, 8, 4]) == 41
    @test sum_odd_at_odd([2, 66, 3, 4, 6, 65, 8, 11, 10, 8, 4, 6, 8]) == 3
    @test sum_odd_at_odd([2, 3, 4, 4, 45, 6, 9, 44, 11, 10]) == 65
    @test sum_odd_at_odd([9, 3, 3, 4, 33, 4, 42, 7, 10, 32, 44]) == 45
    @test sum_odd_at_odd([1, 100, 1, 56, 1, 1, 1, 1, 1, 99, 1]) == 6
    @test sum_odd_at_odd([11, 21, 33, 44, 65, 89, 66, 88, 86, 99, 22, 65]) == 109
    @test sum_odd_at_odd([11, 22, 33, 44, 54, 66, 88, 99, 22, 22, 33, 22, 22, 22]) == 77
    @test sum_odd_at_odd([2, 11, 0, 4, 10, 4, 4, 6, 9, 8, 11, 10, 6, 10]) == 20
    @test sum_odd_at_odd([3, 1, 1, 1, 5, 100, 5, 5]) == 14
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 2, 2]) == 0
    @test sum_odd_at_odd([3, 3, 4, 6, 9, 8, 11, 10, 8, 9]) == 23
    @test sum_odd_at_odd([2, 11, 3, 4, 5, 88, 6, 9, 8, 11, 10, 8, 4]) == 8
    @test sum_odd_at_odd([11, 22, 33, 44, 6, 65, 55, 66, 99, 22, 22, 22]) == 198
    @test sum_odd_at_odd([3, 4, 6, 9, 12, 8, 11, 33, 8, 8]) == 14
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 12, 8, 11, 33, 8, 12]) == 14
    @test sum_odd_at_odd([1, 1, 2, 1, 1, 1, 1, 22, 1, 1, 1, 1, 2, 1]) == 5
    @test sum_odd_at_odd([3, 4, 6, 21, 12, 8, 11, 100, 8, 8, 9]) == 23
    @test sum_odd_at_odd([2, 3, 4, 5, 4, 6, 8, 9, 31, 10]) == 31
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 53, 1, 1, 1, 1, 32, 1]) == 5
    @test sum_odd_at_odd([99, 1, 4, 1, 4, 0, 1, 4, 22, 1, 4]) == 100
    @test sum_odd_at_odd([2, 3, 4, 11, 6, 44, 11, 10, 44]) == 11
    @test sum_odd_at_odd([2, 3, 4, 4, 6, 9, 8, 11, 10, 2]) == 0
    @test sum_odd_at_odd([3, 0, 1, 2, 3, 5, 6, 7, 8, 9, 10, 4, 2]) == 7
    @test sum_odd_at_odd([2, 1, 1, 1, 2, 1, 1, 1, 97, 1, 1, 1]) == 100
    @test sum_odd_at_odd([86, 2, 3, 4, 4, 6, 7, 8, 9, 31, 10]) == 19
    @test sum_odd_at_odd([98, 1, 2, 4, 5, 6, 7, 9, 2, 4, 1]) == 13
    @test sum_odd_at_odd([2, 1, 1, 1, 1, 4, 5, 5, 5, 5, 1]) == 13
    @test sum_odd_at_odd([0, 1, 2, 3, 3, 4, 5, 7, 9, 2, 7]) == 24
    @test sum_odd_at_odd([2, 11, 3, 3, 88, 6, 9, 8, 11, 10, 8, 3, 2, 2]) == 23
    @test sum_odd_at_odd([2, 1, 1, 1, 2, 1, 1, 1, 97, 1, 1, 1, 1]) == 101
    @test sum_odd_at_odd([2, 11, 4, 10, 4, 6, 9, 8, 11, 10, 8, 8]) == 20
    @test sum_odd_at_odd([31, 11, 53, 64, 5, 76, 86, 97, 108, 119, 31]) == 120
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 98, 0, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([12, 22, 34, 86, 55, 44, 32, 76, 99, 77, 77]) == 231
    @test sum_odd_at_odd([3, 4, 4, 6, 9, 108, 8, 11, 33, 8]) == 45
    @test sum_odd_at_odd([75, 1, 2, 11, 5, 6, 7, 9, 2, 4, 1]) == 88
    @test sum_odd_at_odd([0, 1, 1, 1, 1, 1, 1, 1, 97, 1, 1, 1]) == 101
    @test sum_odd_at_odd([86, 2, 3, 4, 5, 6, 7, 9, 10]) == 15
    @test sum_odd_at_odd([2, 1, 3, 1, 1, 5, 5, 5]) == 9
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 2, 5, 5, 6, 5]) == 6
    @test sum_odd_at_odd([65, 1, 4, 1, 4, 0, 1, 4, 22, 1, 4, 1]) == 66
    @test sum_odd_at_odd([3, 4, 6, 8, 9, 31]) == 12
    @test sum_odd_at_odd([2, 2, 1, 1, 5, 5, 5, 2]) == 11
    @test sum_odd_at_odd([11, 22, 32, 44, 6, 64, 55, 66, 88, 99, 64, 22, 22]) == 66
    @test sum_odd_at_odd([2, 2, 1, 31, 2, 6, 5, 5, 5]) == 11
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 2, 1, 1, 1, 32, 1]) == 6
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 4, 6, 7, 8]) == 0
    @test sum_odd_at_odd([1, 0, 1, 2, 54, 3, 4, 5, 6, 7, 9, 10]) == 11
    @test sum_odd_at_odd([74, 1, 2, 11, 5, 6, 7, 9, 2, 4, 1]) == 13
    @test sum_odd_at_odd([2, 10, 3, 4, 5, 6, 7, 8, 9, 31, 10, 2]) == 24
    @test sum_odd_at_odd([12, 11, 22, 33, 6, 65, 55, 98, 66, 88, 22, 22, 65, 88]) == 120
    @test sum_odd_at_odd([12, 22, 32, 44, 55, 66, 77, 88, 99]) == 231
    @test sum_odd_at_odd([10, 22, 34, 33, 44, 54, 66, 99, 22, 22, 66, 33, 22, 22, 22, 33]) == 0
    @test sum_odd_at_odd([2, 1, 2, 5, 5, 5, 2]) == 5
    @test sum_odd_at_odd([3, 3, 9, 4, 4, 6, 9, 12, 8, 11, 10, 10, 8, 10, 12]) == 21
    @test sum_odd_at_odd([1, 0, 1, 1, 1, 1, 1, 1, 5, 1, 8, 1, 1, 1]) == 10
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 6, 7, 97, 9, 2]) == 16
    @test sum_odd_at_odd([45, 22, 33, 44, 65, 55, 66, 88, 99, 22, 65]) == 307
    @test sum_odd_at_odd([11, 33, 44, 55, 66, 88, 99, 0, 22, 33, 88]) == 110
    @test sum_odd_at_odd([0, 2, 3, 0, 6, 8, 9, 10]) == 12
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 6, 9, 7, 11, 10, 44]) == 23
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1]) == 6
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 2, 5, 5, 6, 5, 2, 5]) == 6
    @test sum_odd_at_odd([3, 3, 3, 4, 6, 9, 12, 8, 12, 10, 8, 9, 11]) == 17
    @test sum_odd_at_odd([9, 65, 22, 33, 44, 66, 77, 88]) == 86
    @test sum_odd_at_odd([2, 5, 2, 2, 1, 1, 1, 5, 5, 6, 1, 1, 5]) == 13
    @test sum_odd_at_odd([2, 2, 1, 1, 5, 5, 5, 2, 1]) == 12
    @test sum_odd_at_odd([12, 22, 33, 44, 55, 44, 77, 88, 99, 77, 77, 44]) == 341
    @test sum_odd_at_odd([2, 3, 4, 9, 9, 11, 2]) == 9
    @test sum_odd_at_odd([2, 11, 3, 4, 5, 88, 6, 9, 8, 11, 10, 8, 4, 8]) == 8
    @test sum_odd_at_odd([2, 11, 3, 4, 9, 8, 11, 10, 3]) == 26
    @test sum_odd_at_odd([11, 22, 33, 100, 55, 66, 77, 88, 99]) == 275
    @test sum_odd_at_odd([55, 0, 1, 2, 3, 4, 4, 5, 6, 7, 8, 9, 10, 4, 9]) == 68
    @test sum_odd_at_odd([4, 4, 77, 4, 6, 9, 12, 8, 11, 33, 8, 33, 9, 4, 11]) == 108
    @test sum_odd_at_odd([2, 11, 3, 4, 5, 88, 6, 9, 77, 8, 55, 11, 10, 8, 9]) == 149
    @test sum_odd_at_odd([4, 4, 77, 4, 6, 9, 12, 8, 11, 33, 8, 33, 33, 9]) == 121
    @test sum_odd_at_odd([2, 4, 1, 4, 5, 1, 5, 2, 2]) == 11
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 32, 9]) == 9
    @test sum_odd_at_odd([31, 42, 53, 5, 86, 97]) == 84
    @test sum_odd_at_odd([2, 11, 0, 10, 4, 4, 6, 9, 8, 11, 10, 8]) == 0
    @test sum_odd_at_odd([12, 11, 22, 65, 6, 65, 55, 66, 88, 99, 22, 22, 65, 88]) == 120
    @test sum_odd_at_odd([11, 22, 33, 44, 54, 66, 88, 99, 22, 22, 4, 22, 22]) == 44
    @test sum_odd_at_odd([33, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == 38
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 1, 1, 1, 97, 1, 97, 1, 1]) == 7
    @test sum_odd_at_odd([3, 3, 4, 10, 4, 42, 7, 11, 10, 32, 44]) == 10
    @test sum_odd_at_odd([22, 33, 44, 66, 88, 99]) == 0
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 12, 8, 11, 34, 8]) == 14
    @test sum_odd_at_odd([2, 4, 3, 4, 4, 6, 9, 8, 11, 10, 2, 11]) == 23
    @test sum_odd_at_odd([1, 55, 2, 2, 1, 1, 1, 119, 5, 33, 1, 1]) == 9
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 1, 5, 45, 2]) == 6
    @test sum_odd_at_odd([65, 67, 11, 23, 98, 33, 44, 55, 66, 77, 88, 77, 99]) == 175
    @test sum_odd_at_odd([11, 22, 33, 44, 65, 55, 66, 3, 88, 99, 22, 22]) == 109
    @test sum_odd_at_odd([31, 42, 53, 5, 87, 97]) == 171
    @test sum_odd_at_odd([2, 11, 0, 4, 10, 4, 4, 6, 9, 77, 11, 10, 6, 10]) == 20
    @test sum_odd_at_odd([45, 21, 33, 65, 55, 64, 88, 99, 22, 65]) == 133
    @test sum_odd_at_odd([2, 2, 31, 2, 5, 5, 5, 5]) == 41
    @test sum_odd_at_odd([75, 1, 2, 3, 4, 5, 22, 6, 7, 9, 2]) == 82
    @test sum_odd_at_odd([4, 1, 55, 2, 2, 1, 0, 1, 1, 5, 5, 33, 1]) == 62
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 97, 1, 1, 1, 1, 1, 1]) == 104
    @test sum_odd_at_odd([65, 67, 11, 23, 98, 33, 44, 55, 66, 77, 88, 77, 99, 67]) == 175
    @test sum_odd_at_odd([4, 3, 4, 4, 6, 9, 12, 6, 8, 11, 10, 8, 9, 6]) == 9
    @test sum_odd_at_odd([2, 11, 0, 4, 10, 4, 4, 6, 9, 11, 10, 8]) == 9
    @test sum_odd_at_odd([12, 11, 22, 33, 6, 65, 55, 98, 66, 89, 88, 22, 23, 65, 88, 88]) == 78
    @test sum_odd_at_odd([99, 4, 1, 4, 1, 4, 1, 4]) == 102
    @test sum_odd_at_odd([4, 2, 4, 4, 6, 9, 12, 8, 11, 12, 10, 8]) == 11
    @test sum_odd_at_odd([11, 12, 32, 56, 44, 6, 64, 55, 66, 88, 99, 64, 22, 22]) == 110
    @test sum_odd_at_odd([2, 2, 2, 1, 22, 1, 5, 5]) == 5
    @test sum_odd_at_odd([1, 1, 1, 1, 2, 1, 1, 22, 1, 1, 1, 1, 22]) == 5
    @test sum_odd_at_odd([1, 11, 1, 1, 4, 1, 4, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([3, 3, 4, 4, 119, 12, 33, 9]) == 155
    @test sum_odd_at_odd([1, 1, 1, 5, 1, 1, 1, 5, 1, 1]) == 5
    @test sum_odd_at_odd([3, 4, 4, 6, 9, 8, 11, 10, 8, 9]) == 23
    @test sum_odd_at_odd([1, 0, 1, 1, 1, 1, 1, 1, 5, 1, 8, 1, 1, 1, 1]) == 11
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 97, 1, 1, 1]) == 101
    @test sum_odd_at_odd([86, 2, 3, 65, 5, 6, 42, 53, 77, 2, 9, 10]) == 94
    @test sum_odd_at_odd([11, 12, 32, 56, 44, 6, 64, 55, 66, 88, 99, 22, 22, 22]) == 110
    @test sum_odd_at_odd([89, 2, 4, 2, 4, 5, 1, 6, 2]) == 90
    @test sum_odd_at_odd([2, 1, 3, 1, 119, 5, 5, 5]) == 127
    @test sum_odd_at_odd([2, 5, 2, 2, 33, 1, 1, 5, 5, 5, 42, 1, 1, 5, 5, 1, 2, 1]) == 45
    @test sum_odd_at_odd([11, 22, 33, 100, 55, 66, 77, 88, 99, 66]) == 275
    @test sum_odd_at_odd([2, 5, 2, 2, 33, 1, 5, 5, 5, 42, 1, 1, 5, 5]) == 49
    @test sum_odd_at_odd([2, 3, 5, 6, 9, 8, 11, 10]) == 25
    @test sum_odd_at_odd([1, 2, 3, 4, 5, 6, 7, 2]) == 16
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 5, 5, 98, 2]) == 7
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 8, 1, 1, 22, 1, 1, 1, 2]) == 6
    @test sum_odd_at_odd([2, 5, 2, 2, 33, 1, 1, 5, 5, 5, 42, 1, 5, 5]) == 44
    @test sum_odd_at_odd([23, 2, 3, 65, 5, 6, 42, 53, 77, 2, 9, 10]) == 117
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 75, 6, 7, 8]) == 82
    @test sum_odd_at_odd([2, 3, 4, 5, 88, 6, 9, 8, 11, 10, 86]) == 20
    @test sum_odd_at_odd([11, 22, 9, 33, 100, 55, 66, 77, 88, 99, 66]) == 20
    @test sum_odd_at_odd([2, 4, 3, 4, 7, 1, 5, 2]) == 15
    @test sum_odd_at_odd([2, 4, 2, 4, 5, 1, 4, 2, 4]) == 5
    @test sum_odd_at_odd([0, 1, 2, 2, 3, 4, 5, 6, 7, 9, 2]) == 15
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 5, 56, 2]) == 2
    @test sum_odd_at_odd([2, 2, 1, 30, 2, 5, 5, 5]) == 6
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 5, 5, 98, 2, 2]) == 7
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 5, 5, 1]) == 6
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 56, 1, 1, 22, 1, 1, 1, 1, 2]) == 6
    @test sum_odd_at_odd([2, 1, 3, 1, 119, 5, 5, 23, 5]) == 132
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 97, 1, 1, 0, 1, 1, 1, 1]) == 104
    @test sum_odd_at_odd([2, 1, 1, 1, 2, 1, 1, 1, 97, 1, 1, 97]) == 100
    @test sum_odd_at_odd([65, 11, 22, 33, 44, 65, 55, 66, 77, 88, 77, 99]) == 274
    @test sum_odd_at_odd([33, 1, 1, 1, 1, 1, 1, 1, 1, 1, 99, 1]) == 136
    @test sum_odd_at_odd([0, 2, 3, 77, 67, 6, 8, 9, 10]) == 70
    @test sum_odd_at_odd([11, 12, 32, 56, 6, 64, 55, 66, 88, 99, 64, 22, 22]) == 66
    @test sum_odd_at_odd([108, 0, 1, 2, 3, 3, 4, 5, 6, 7, 9, 2]) == 13
    @test sum_odd_at_odd([2, 2, 34, 1, 1, 1, 5, 5, 5, 5, 5, 5]) == 16
    @test sum_odd_at_odd([3, 3, 9, 4, 4, 6, 8, 9, 12, 8, 11, 10, 10, 8, 10, 12]) == 23
    @test sum_odd_at_odd([2, 11, 0, 4, 10, 56, 4, 6, 8, 11, 10, 8]) == 0
    @test sum_odd_at_odd([31, 42, 53, 64, 5, 76, 86, 97, 108, 119, 86]) == 89
    @test sum_odd_at_odd([2, 1, 1, 1, 1, 4, 6, 5, 5, 5, 5, 1]) == 12
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 1, 1, 1, 86, 1, 0, 1]) == 7
    @test sum_odd_at_odd([2, 2, 31, 2, 4, 5, 5, 5, 5]) == 41
    @test sum_odd_at_odd([2, 11, 0, 4, 4, 6, 9, 8, 11, 10, 8, 8, 0, 2]) == 20
    @test sum_odd_at_odd([2, 75, 56, 4, 11, 6, 44, 11, 10, 44]) == 11
    @test sum_odd_at_odd([2, 5, 2, 2, 1, 1, 5, 21, 5, 5, 1]) == 12
    @test sum_odd_at_odd([3, 3, 9, 4, 4, 6, 8, 9, 12, 8, 11, 10, 10, 8, 10, 12, 3]) == 26
    @test sum_odd_at_odd([2, 1, 3, 1, 1, 5, 5, 5, 1]) == 10
    @test sum_odd_at_odd([11, 22, 44, 54, 66, 88, 99, 22, 22, 33, 22, 22]) == 110
    @test sum_odd_at_odd([4, 4, 77, 4, 6, 9, 12, 8, 11, 33, 8, 33, 9, 11]) == 97
    @test sum_odd_at_odd([55, 3, 4, 4, 6, 9, 12, 8, 11, 10, 10, 8, 10, 12, 3]) == 69
    @test sum_odd_at_odd([22, 33, 100, 65, 55, 66, 56, 99, 21, 0, 22, 100, 33, 88]) == 109
    @test sum_odd_at_odd([2, 1, 3, 1, 77, 3, 5, 5]) == 85
    @test sum_odd_at_odd([1, 0, 1, 108, 1, 1, 1, 1, 5, 1, 8, 1, 1, 1, 1, 1]) == 11
    @test sum_odd_at_odd([11, 12, 22, 33, 44, 55, 66, 77, 88, 99, 54, 55]) == 11
    @test sum_odd_at_odd([2, 10, 3, 5, 5, 6, 7, 8, 9, 31, 10]) == 24
    @test sum_odd_at_odd([33, 1, 1, 1, 1, 0, 1, 1, 1, 1, 99, 1]) == 136
    @test sum_odd_at_odd([65, 11, 22, 33, 44, 65, 55, 66, 76, 88, 78, 99]) == 120
    @test sum_odd_at_odd([11, 33, 44, 55, 66, 88, 99, 0, 22, 33, 88, 33]) == 110
    @test sum_odd_at_odd([12, 22, 34, 86, 55, 44, 32, 76, 99, 77, 77, 55]) == 231
    @test sum_odd_at_odd([11, 22, 33, 44, 6, 55, 66, 99, 22, 22, 22, 6]) == 44
    @test sum_odd_at_odd([2, 11, 3, 5, 88, 9, 8, 1, 10]) == 3
    @test sum_odd_at_odd([33, 1, 2, 3, 4, 5, 6, 7, 9, 2]) == 42
    @test sum_odd_at_odd([0, 1, 2, 0, 4, 5, 6, 7, 8, 0]) == 0
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 10]) == 1
    @test sum_odd_at_odd([31, 42, 53, 86, 97, 108]) == 181
    @test sum_odd_at_odd([3, 3, 3, 4, 4, 6, 9, 12, 8, 12, 10, 8, 9, 11, 9, 8]) == 33
    @test sum_odd_at_odd([11, 11, 22, 33, 44, 55, 66, 77, 88, 99]) == 11
    @test sum_odd_at_odd([1, 1, 2, 1, 1, 1, 1, 22, 1, 1, 1, 1, 2, 1, 1]) == 6
    @test sum_odd_at_odd([75, 1, 2, 4, 6, 7, 9, 2, 4]) == 84
    @test sum_odd_at_odd([2, 65, 4, 6, 44, 11, 10, 44]) == 0
    @test sum_odd_at_odd([2, 7, 11, 4, 4, 6, 9, 7, 8, 11, 10, 8]) == 20
    @test sum_odd_at_odd([1, 1, 1, 44, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 1, 1, 55, 1, 97, 1, 1, 1]) == 157
    @test sum_odd_at_odd([3, 4, 6, 8, 11, 10]) == 14
    @test sum_odd_at_odd([3, 4, 6, 9, 108, 5, 8, 11, 33, 8]) == 36
    @test sum_odd_at_odd([65, 89, 11, 65, 22, 33, 44, 55, 66, 77, 77, 99, 10, 77, 88]) == 153
    @test sum_odd_at_odd([99, 1, 4, 1, 1, 5, 4, 99]) == 100
    @test sum_odd_at_odd([2, 2, 44, 1, 1, 5, 86, 5, 5]) == 6
    @test sum_odd_at_odd([11, 12, 22, 33, 44, 55, 66, 77, 88, 66, 99, 54, 55]) == 165
    @test sum_odd_at_odd([11, 53, 22, 33, 44, 65, 55, 66, 88, 56, 99, 0, 22, 33, 88]) == 165
    @test sum_odd_at_odd([55, 3, 4, 4, 6, 9, 12, 8, 11, 10, 10, 8, 10, 12, 3, 11]) == 69
    @test sum_odd_at_odd([3, 3, 4, 4, 4, 12, 8, 33, 33, 8]) == 36
    @test sum_odd_at_odd([2, 5, 2, 2, 1, 1, 1, 5, 5, 5, 1, 1, 5, 5, 5]) == 18
    @test sum_odd_at_odd([2, 4, 2, 4, 5, 1, 5, 30]) == 10
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 5, 5, 98, 2, 98]) == 7
    @test sum_odd_at_odd([2, 4, 77, 76, 5, 5, 1, 4, 2, 4]) == 83
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 2, 1, 1, 1, 32, 1, 1]) == 6
    @test sum_odd_at_odd([22, 33, 44, 88, 99, 33]) == 99
    @test sum_odd_at_odd([22, 33, 88, 5, 33, 33]) == 33
    @test sum_odd_at_odd([11, 22, 33, 44, 54, 66, 88, 99, 22, 22, 66, 33, 22, 22, 22, 33, 99]) == 143
    @test sum_odd_at_odd([3, 3, 3, 4, 4, 6, 9, 12, 8, 11, 10, 8, 9, 12]) == 24
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 9, 8, 11]) == 0
    @test sum_odd_at_odd([2, 4, 3, 2, 4, 5, 1, 4, 2, 4]) == 4
    @test sum_odd_at_odd([1, 55, 2, 86, 1, 1, 1, 5, 5, 1, 1]) == 9
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 5, 5, 5, 1, 1, 5, 1]) == 12
    @test sum_odd_at_odd([0, 1, 2, 0, 4, 5, 5, 7, 8, 0]) == 5
    @test sum_odd_at_odd([3, 3, 9, 4, 4, 6, 7, 9, 12, 8, 11, 10, 10, 10, 8, 10, 12, 8]) == 30
    @test sum_odd_at_odd([11, 22, 33, 44, 65, 55, 66, 88, 99, 0, 22, 31, 33, 88]) == 241
    @test sum_odd_at_odd([2, 1, 1, 1, 2, 1, 1, 1, 97, 87, 1, 1, 97]) == 197
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1]) == 6
    @test sum_odd_at_odd([86, 2, 21, 4, 65, 6, 7, 8, 9, 10, 7, 10]) == 109
    @test sum_odd_at_odd([65, 22, 33, 55, 66, 77, 88, 65]) == 98
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 1, 5, 5, 98, 2]) == 7
    @test sum_odd_at_odd([1, 1, 1, 2, 2, 1, 1, 1, 97, 1, 1, 1]) == 101
    @test sum_odd_at_odd([65, 10, 22, 4, 33, 44, 55, 76, 66, 77, 88, 22, 33]) == 186
    @test sum_odd_at_odd([55, 3, 4, 4, 6, 9, 12, 8, 11, 10, 8, 10, 12, 3, 55]) == 121
    @test sum_odd_at_odd([1, 0, 0, 108, 1, 1, 1, 1, 5, 1, 8, 1, 1, 1, 1, 1]) == 10
    @test sum_odd_at_odd([11, 12, 22, 33, 44, 55, 66, 77, 89, 99, 55, 22]) == 155
    @test sum_odd_at_odd([2, 11, 0, 4, 10, 4, 6, 9, 8, 11, 10, 8, 8]) == 0
    @test sum_odd_at_odd([11, 22, 33, 1, 44, 65, 55, 66, 88, 56, 99, 0, 22, 33, 88]) == 198
    @test sum_odd_at_odd([2, 2, 1, 2, 1, 5, 5, 5, 5]) == 12
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 8]) == 0
    @test sum_odd_at_odd([0, 1, 3, 4, 5, 6, 7, 8, 10, 1]) == 15
    @test sum_odd_at_odd([0, 1, 1, 4, 1, 4, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([1, 4, 1, 4, 2, 1, 4, 1, 4, 4, 4, 1]) == 2
    @test sum_odd_at_odd([31, 42, 53, 5, 87, 97, 87, 53]) == 258
    @test sum_odd_at_odd([99, 1, 4, 1, 4, 1, 4, 10, 1, 4]) == 100
    @test sum_odd_at_odd([3, 3, 3, 5, 4, 6, 9, 12, 8, 12, 10, 8, 9, 11]) == 24
    @test sum_odd_at_odd([1, 3, 4, 2, 4, 5, 1, 5, 4]) == 2
    @test sum_odd_at_odd([2, 64, 5, 2, 2, 1, 1, 1, 5, 21, 5, 5, 1]) == 17
    @test sum_odd_at_odd([12, 33, 1, 2, 4, 3, 5, 6, 7, 9, 2]) == 13
    @test sum_odd_at_odd([2, 1, 1, 5, 5, 5]) == 6
    @test sum_odd_at_odd([11, 22, 33, 44, 6, 65, 55, 66, 88, 99, 22]) == 99
    @test sum_odd_at_odd([31, 42, 53, 31, 76, 86, 97, 108, 119]) == 300
    @test sum_odd_at_odd([75, 1, 2, 4, 5, 6, 7, 9, 2, 4, 1, 2, 7]) == 95
    @test sum_odd_at_odd([1, 1, 3, 1, 2, 1, 1, 1, 1, 1, 97, 1, 1, 1]) == 104
    @test sum_odd_at_odd([1, 1, 1, 1, 1]) == 3
    @test sum_odd_at_odd([3, 1, 1, 1, 5, 5, 5, 1]) == 14
    @test sum_odd_at_odd([11, 22, 33, 100, 55, 66, 77, 88]) == 176
    @test sum_odd_at_odd([2, 10, 3, 5, 5, 6, 7, 8, 9, 31, 10, 31]) == 24
    @test sum_odd_at_odd([2, 3, 4, 6, 8, 9, 31, 9]) == 31
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5]) == 17
    @test sum_odd_at_odd([0, 74, 53, 2, 3, 5, 6, 8, 9, 10]) == 65
    @test sum_odd_at_odd([2, 2, 44, 1, 1, 5, 5]) == 6
    @test sum_odd_at_odd([2, 1, 4, 1, 4, 5, 1, 108]) == 1
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 75, 12, 8, 11, 34, 8, 3]) == 81
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 1, 97, 108, 1, 1, 0, 1, 1, 1]) == 7
    @test sum_odd_at_odd([3, 5, 4, 6, 9, 119, 8, 12, 10, 8, 11]) == 23
    @test sum_odd_at_odd([65, 11, 22, 33, 65, 44, 65, 55, 66, 77, 88, 77, 99, 77, 66]) == 294
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 8, 9, 31, 98]) == 9
    @test sum_odd_at_odd([3, 4, 4, 6, 1, 9, 8, 11, 10, 8, 9]) == 13
    @test sum_odd_at_odd([33, 31, 42, 53, 5, 86, 97]) == 135
    @test sum_odd_at_odd([2, 1, 1, 1, 4, 6, 5, 5, 5, 5, 1]) == 12
    @test sum_odd_at_odd([11, 22, 32, 44, 65, 55, 66, 3, 88, 99, 22, 22]) == 76
    @test sum_odd_at_odd([12, 33, 44, 55, 66, 77, 88, 99]) == 0
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 32, 9, 9]) == 9
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 8, 9, 31, 10, 31]) == 9
    @test sum_odd_at_odd([86, 2, 3, 119, 4, 4, 5, 6, 7, 8, 9, 10]) == 24
    @test sum_odd_at_odd([3, 3, 4, 4, 7, 6, 6, 9, 11, 10, 44, 44]) == 21
    @test sum_odd_at_odd([33, 1, 1, 1, 1, 0, 1, 1, 1, 1, 99, 1, 1]) == 137
    @test sum_odd_at_odd([2, 1, 4, 4, 5, 1, 108, 1]) == 5
    @test sum_odd_at_odd([86, 33, 1, 2, 4, 3, 5, 6, 7, 9, 2]) == 13
    @test sum_odd_at_odd([3, 3, 4, 4, 6, 9, 12, 8, 11, 33, 8, 12, 33]) == 47
    @test sum_odd_at_odd([22, 33, 44, 88, 99, 32]) == 99
    @test sum_odd_at_odd([3, 3, 3, 4, 6, 9, 12, 8, 12, 10, 8, 9, 9, 11]) == 15
    @test sum_odd_at_odd([1]) == 1
    @test sum_odd_at_odd([2, 4, 6]) == 0
    @test sum_odd_at_odd([2, 4, 6, 1, 3, 5]) == 3
    @test sum_odd_at_odd([3, 5, 7, 9, 11]) == 21
    @test sum_odd_at_odd([1, -2, 5, 0, -3]) == 3
    @test sum_odd_at_odd([2, 5, 4, 6, 8]) == 0
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([11, 89, 22, 33, 44, 55, 66, 77, 88, 99]) == 11
    @test sum_odd_at_odd([11, 89, 22, 33, 44, 55, 66, 88, 99]) == 110
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 119, 75]) == 203
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 7, 8, 9, 5]) == 5
    @test sum_odd_at_odd([31, 42, 53, 64, 76, 75, 86, 97, 108, 119]) == 84
    @test sum_odd_at_odd([1, 1, 2, 1, 1, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([2, 3, 4, 6, 9, 8, 11, 10, 11]) == 31
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 120, 75]) == 84
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([2, 3, 5, 6, 6, 44, 8, 8, 5]) == 10
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([31, 42, 53, 75, 97, 120, 75]) == 256
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 2, 1, 1, 1]) == 4
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 0, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 120, 75, 75]) == 159
    @test sum_odd_at_odd([1, 2, 1, 2, 1, 0, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 1, 1, 1, 1, 9, 1]) == 6
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 1, 2]) == 0
    @test sum_odd_at_odd([31, 42, 3, 64, 75, 86, 97, 108, 119]) == 325
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2]) == 4
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 99, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([0, 1, 44, 3, 4, 5, 6, 7, 43, 8]) == 43
    @test sum_odd_at_odd([31, 42, 53, 86, 97, 118, 75]) == 256
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 52, 119, 75]) == 159
    @test sum_odd_at_odd([31, 42, 53, 87, 97, 118, 75]) == 256
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 52, 119, 75, 75]) == 159
    @test sum_odd_at_odd([0, 1, 44, 3, 4, 5, 6, 7, 43]) == 43
    @test sum_odd_at_odd([31, 42, 53, 64, 76, 75, 86, 97, 7, 108, 119]) == 210
    @test sum_odd_at_odd([31, 42, 53, 86, 97, 118]) == 181
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 99, 1, 1, 1, 0]) == 5
    @test sum_odd_at_odd([100, 1, 2, 1, 1, 1, 99, 1, 1, 1, 0]) == 101
    @test sum_odd_at_odd([31, 42, 53, 87, 97, 118]) == 181
    @test sum_odd_at_odd([2, 3, 5, 6, 6, 44, 8, 5]) == 5
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 9, 8, 11, 10, 11]) == 0
    @test sum_odd_at_odd([31, 120, 42, 53, 75, 86, 97, 52, 119, 75, 75]) == 397
    @test sum_odd_at_odd([100, 52, 1, 2, 1, 1, 1, 99, 1, 1, 1, 0]) == 5
    @test sum_odd_at_odd([100, 52, 1, 2, 1, 1, 1, 99, 1, 1, 1, 0, 1]) == 6
    @test sum_odd_at_odd([3, 3, 5, 6, 6, 44, 8, 8, 5]) == 13
    @test sum_odd_at_odd([31, 120, 42, 53, 75, 86, 97, 52, 119, 75, 75, 75]) == 397
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 42, 1, 2]) == 0
    @test sum_odd_at_odd([31, 120, 42, 55, 53, 75, 86, 97, 52, 119, 75, 75]) == 159
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 120, 76, 75, 120]) == 159
    @test sum_odd_at_odd([31, 42, 42, 53, 75, 86, 97, 120, 75]) == 278
    @test sum_odd_at_odd([31, 42, 3, 64, 87, 75, 86, 97, 108, 119]) == 121
    @test sum_odd_at_odd([100, 1, 2, 1, 1, 1, 99, 1, 1, 1, 0, 88]) == 101
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 99, 1, 66, 1, 0]) == 5
    @test sum_odd_at_odd([31, 120, 42, 53, 75, 86, 97, 52, 119, 75, 75, 120, 53]) == 450
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 0, 1, 1, 1]) == 5
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 96, 120, 76, 75, 120, 75]) == 234
    @test sum_odd_at_odd([100, 1, 2, 2, 1, 1, 1, 99, 1, 1, 1, 0, 88]) == 4
    @test sum_odd_at_odd([100, 52, 1, 2, 1, 1, 1, 99, 100, 1, 1, 0, 1]) == 5
    @test sum_odd_at_odd([0, 1, 3, 4, 5, 6, 7, 43, 8]) == 15
    @test sum_odd_at_odd([1, 31, 2, 1, 1, 1, 99, 1, 1, 1, 1, 1]) == 103
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 2]) == 0
    @test sum_odd_at_odd([31, 4, 42, 42, 53, 75, 97, 120, 75]) == 256
    @test sum_odd_at_odd([1, 2, 1, 2, 1, 0, 1, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([100, 2, 3, 5, 6, 6, 44, 8, 8, 5]) == 3
    @test sum_odd_at_odd([1, 2, 1, 89, 1, 99, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([31, 75, 42, 53, 87, 97, 118, 75]) == 118
    @test sum_odd_at_odd([31, 42, 75, 86, 32, 97, 120, 76, 75, 120]) == 181
    @test sum_odd_at_odd([4, 2, 3, 4, 6, 7, 8, 9, 5]) == 8
    @test sum_odd_at_odd([31, 42, 3, 64, 75, 86, 97, 108, 119, 97]) == 325
    @test sum_odd_at_odd([31, 43, 53, 75, 97, 120, 75]) == 256
    @test sum_odd_at_odd([31, 42, 53, 75, 97, 120, 75, 75]) == 256
    @test sum_odd_at_odd([3, 3, 5, 6, 6, 44, 8, 5]) == 8
    @test sum_odd_at_odd([31, 42, 87, 53, 75, 86, 97, 120, 75, 75]) == 365
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 88, 1, 1, 1]) == 5
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 1, 1, 1, 1, 44, 1]) == 6
    @test sum_odd_at_odd([31, 42, 53, 64, 75, 86, 97, 108, 119, 53]) == 375
    @test sum_odd_at_odd([0, 1, 2, 2, 3, 4, 5, 6, 7, 8, 1, 2]) == 16
    @test sum_odd_at_odd([31, 96, 3, 120, 42, 53, 75, 86, 97, 52, 119, 75, 75, 75]) == 400
    @test sum_odd_at_odd([0, 0, 0, 0, 0, 75]) == 0
    @test sum_odd_at_odd([2, 4, 3, 4, 5, 7, 8, 9, 10]) == 8
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 7, 7, 9, 5]) == 12
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 75]) == 159
    @test sum_odd_at_odd([31, 42, 42, 53, 75, 86, 97, 120, 75, 42]) == 278
    @test sum_odd_at_odd([0, 1, 118, 2, 3, 4, 5, 6, 7, 8]) == 15
    @test sum_odd_at_odd([2, 3, 5, 75, 32, 9, 8, 11, 10, 11]) == 5
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 6]) == 0
    @test sum_odd_at_odd([1, 1, 1, 119, 1, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([1, 2, 1, 1, 119, 88, 1, 1]) == 122
    @test sum_odd_at_odd([31, 120, 42, 55, 53, 75, 86, 108, 52, 119, 75, 75]) == 159
    @test sum_odd_at_odd([31, 120, 42, 55, 53, 75, 86, 52, 119, 75, 75]) == 278
    @test sum_odd_at_odd([100, 2, 3, 5, 6, 6, 53, 44, 8, 8, 53, 5, 44, 44]) == 109
    @test sum_odd_at_odd([89, 1, 2, 3, 4, 5, 6, 7]) == 89
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 0, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([31, 42, 53, 97, 120, 75, 75]) == 159
    @test sum_odd_at_odd([1, 2, 1, 0, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([1, 1, 2, 1, -1, 1, 1, 1, 1, 1, 1]) == 3
    @test sum_odd_at_odd([31, 42, 42, 53, 75, 86, 97, 97, 119, 75]) == 322
    @test sum_odd_at_odd([0, 0, 0, 0, -1, 75]) == -1
    @test sum_odd_at_odd([1, 2, 0, 1, 89, 1, 99, 1, 1, 1, 1, 1, 1]) == 192
    @test sum_odd_at_odd([1, 2, 1, 1, 119, 88, 1, 1, 119]) == 241
    @test sum_odd_at_odd([89, 3, 64, 75, 86, 97, 108, 119, 97]) == 186
    @test sum_odd_at_odd([2, 2, 2, 76, 1, 1, 1, 5, 5, 5, 5]) == 12
    @test sum_odd_at_odd([1, 1, 10, 1, 1, 1, 1, 1, 0]) == 3
    @test sum_odd_at_odd([31, 42, 3, 64, 75, 86, 97, 119, 86]) == 206
    @test sum_odd_at_odd([1, 1, 2, 1, 1, 1, 1, 0, 1]) == 4
    @test sum_odd_at_odd([0, 1, 2, 3, 10, 4, 5, 6, 7, 8, 1, 2, 2]) == 13
    @test sum_odd_at_odd([1, 2, 1, 44, 2, 1, 0, 1, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([31, 42, 118, 53, 75, 86, 96, 120, 76, 75, 22, 120, 75, 120]) == 181
    @test sum_odd_at_odd([0, 1, 118, 2, 3, 4, 5, 10, 8]) == 8
    @test sum_odd_at_odd([11, 89, 22, 33, 44, 55, 66, 10, 77, 88, 99, 66]) == 187
    @test sum_odd_at_odd([1, 1, 2, 1, -1, 1, 6, 1, 1, 1, 1]) == 2
    @test sum_odd_at_odd([0, 1, 118, 2, 3, 4, 5, 10, 8, 1]) == 8
    @test sum_odd_at_odd([30, 31, 54, 42, 53, 86, 97, 118, 75, 97]) == 225
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 9, 8, 11, 10, 8]) == 0
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 43, 97, 120, 75]) == 256
    @test sum_odd_at_odd([1, 2, 1, 1, 119, 2, 88, 1, 1]) == 122
    @test sum_odd_at_odd([1, 2, 1, 2, 1, 1, 1, 1, 1, 9, 1]) == 6
    @test sum_odd_at_odd([31, 42, 42, 53, 75, 86, 98, 120, 75, 42]) == 181
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 7, 7, 8, 9, 10]) == 7
    @test sum_odd_at_odd([1, 2, 1, 89, 1, 99, 1, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([89, 1, 2, 3, 4, 6, 7]) == 96
    @test sum_odd_at_odd([31, 120, 42, 53, 75, 86, 97, 52, 89, 119, 75, 75]) == 367
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 0]) == 0
    @test sum_odd_at_odd([11, 32, 89, 22, 33, 44, 55, 66, 77, 77, 88, 99, 11]) == 276
    @test sum_odd_at_odd([86, 42, 3, 64, 75, 86, 97, 108, 66, 97]) == 175
    @test sum_odd_at_odd([0, 1, 3, 4, 5, 7, 7, 43, 8]) == 15
    @test sum_odd_at_odd([31, 4, 42, 42, 53, 75, 97, 120, 75, 75]) == 256
    @test sum_odd_at_odd([1, 1, 2, 1, 0, 1, 0]) == 1
    @test sum_odd_at_odd([1, 1, 96, 55, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([1, 1, 10, 1, 1, 1, 1, 1, 0, 1]) == 3
    @test sum_odd_at_odd([1, 1, 2, 1, 0, 1, 1, 1, 0, 1, 1]) == 3
    @test sum_odd_at_odd([31, 4, 42, 42, 22, 53, 75, 97, 120, 75, 22, 22]) == 106
    @test sum_odd_at_odd([31, 42, 3, 64, 87, 75, 86, 97, 108, 119, 31]) == 152
    @test sum_odd_at_odd([0, 1, 2, 3, 5, 6, 7]) == 12
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 0, 22, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 10, 42, 1, 2]) == 0
    @test sum_odd_at_odd([1, 1, 2, 1, 0, 1, 89, 1, 1, 0, 1, 1]) == 92
    @test sum_odd_at_odd([1, 2, 1, 1, 120, 119, 88, 1, 1, 119]) == 3
    @test sum_odd_at_odd([1, 1, 119, 88, 1, 1]) == 121
    @test sum_odd_at_odd([31, 43, 7, 53, 75, 86, 97, 120, 75, 75]) == 285
    @test sum_odd_at_odd([100, 52, 1, 2, 1, 1, 1, 99, 1, 1, 1, 0, 1, 1]) == 6
    @test sum_odd_at_odd([31, 75, 10, 53, 87, 97, 118, 75]) == 118
    @test sum_odd_at_odd([89, 1, 2, 4, 5, 6, 7]) == 101
    @test sum_odd_at_odd([31, 42, 3, 64, 87, 75, 97, 108, 119]) == 337
    @test sum_odd_at_odd([1, 2, 1, 44, 2, 1, 0, 1, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([1, 2, 1, 1, 120, 119, 1, 1, 119]) == 122
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 120, 76, 75, 119]) == 159
    @test sum_odd_at_odd([3, 3, 5, 6, 7, 44, 8, 5]) == 15
    @test sum_odd_at_odd([1, 2, 1, 0, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([86, 2, 1, 1, 1, 1, 1, 1, 66, 1, 44, 1, 1]) == 4
    @test sum_odd_at_odd([0, 0, 0, 0, 0, 32, 0]) == 0
    @test sum_odd_at_odd([31, 120, 2, 42, 55, 54, 53, 75, 86, 52, 119, 75, 75]) == 333
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 76, 75, 120]) == 84
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 2, 2, 75, 1, 1, 2]) == 4
    @test sum_odd_at_odd([2, 31, 42, 53, 75, 86, 97]) == 172
    @test sum_odd_at_odd([31, 4, 42, 42, 22, 53, 75, 97, 120, 75, 22, 22, 31]) == 137
    @test sum_odd_at_odd([30, 2, 4, 6, 7]) == 7
    @test sum_odd_at_odd([65, 89, 3, 64, 75, 86, 97, 108, 119, 98, 97, 75]) == 456
    @test sum_odd_at_odd([2, 44, 4, 3, 4, 5, 7, 8, 9, 10]) == 16
    @test sum_odd_at_odd([1, 2, 1, 1, 120, 119, 1, 1, 119, 1]) == 122
    @test sum_odd_at_odd([100, 1, 2, 2, 1, 1, 1, 99, 1, 1, 1, 0]) == 4
    @test sum_odd_at_odd([76, 31, 42, 53, 75, 86, 97, 120, 76, 75, 120]) == 172
    @test sum_odd_at_odd([31, 42, 53, 86, 97, 87, 118]) == 181
    @test sum_odd_at_odd([89, 2, 3, 4, 5, 6, 7]) == 104
    @test sum_odd_at_odd([86, 2, 1, 1, 1, 1, 1, 1, 4, 1, 44, 1, 1]) == 4
    @test sum_odd_at_odd([1, 43, 1, 44, 2, 1, 0, 1, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([31, 64, 42, 43, 53, 75, 97, 120, 75]) == 256
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 0, 5, 5]) == 6
    @test sum_odd_at_odd([3, 3, 5, 6, 6, 44, 8, 8, 5, 3]) == 13
    @test sum_odd_at_odd([1, 99, 31, 2, 1, 1, 1, 99, 1, 1, 108, 1, 1]) == 36
    @test sum_odd_at_odd([89, 3, 33, 64, 75, 86, 97, 108, 119, 97, 75]) == 488
    @test sum_odd_at_odd([31, 120, 42, 55, 53, 75, 86, 108, 52, 119, 75, 108, 42, 75]) == 159
    @test sum_odd_at_odd([1, 1, 1, 119, 0, 1, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([30, 42, 3, 64, 87, 75, 86, 97, 108, 119]) == 90
    @test sum_odd_at_odd([0, 1, 2, 3, 10, 4, 5, 7, 8, 1, 2, 2]) == 5
    @test sum_odd_at_odd([31, 42, 53, 64, 76, 75, 86, 97, 7, 108, 119, 75]) == 210
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 76, 75, 120, 31]) == 84
    @test sum_odd_at_odd([1, 31, 2, 1, 1, 1, 99, 1, 1, 1, 1, 119]) == 103
    @test sum_odd_at_odd([100, 2, 3, 5, 6, 6, 53, 44, 8, 53, 5, 44, 44]) == 61
    @test sum_odd_at_odd([0, 7, 1, 2, 4, 5, 6, 7, 8, 1, 2, 0]) == 1
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 1, 77, 5, 5, 5]) == 83
    @test sum_odd_at_odd([31, 42, 53, 53, 87, 97, 118, 53]) == 171
    @test sum_odd_at_odd([89, 1, 1, 3, 4, 5, 6, 7]) == 90
    @test sum_odd_at_odd([76, 89, 31, 42, 53, 30, 75, 86, 97, 120, 76, 75, 120, 97]) == 256
    @test sum_odd_at_odd([31, 53, 64, 76, 75, 86, 97, 7, 107, 119, 75, 75]) == 385
    @test sum_odd_at_odd([1, 1, 1, 120, 119, 1, 1, 119]) == 122
    @test sum_odd_at_odd([0, 1, 118, 2, 3, 4, 5, 6, 7, 8, 7]) == 22
    @test sum_odd_at_odd([31, 42, 55, 75, 86, 97, 77, 120, 42]) == 163
    @test sum_odd_at_odd([86, 42, 118, 53, 75, 86, 96, 120, 76, 75, 22, 120, 75, 120]) == 150
    @test sum_odd_at_odd([31, 76, 42, 55, 75, 86, 97, 77, 120, 42, 86]) == 203
    @test sum_odd_at_odd([100, 1, 2, 2, 1, 1, 1, 99, 1, 1, 1, 0, 88, 1]) == 4
    @test sum_odd_at_odd([1, 1, 119, 88, 1, 0, 1]) == 122
    @test sum_odd_at_odd([1, 2, 0, 1, 89, 1, 99, 1, 2, 1, 1, 1, 1]) == 191
    @test sum_odd_at_odd([31, 43, 7, 53, 75, 75, 86, 6, 120, 75, 75]) == 188
    @test sum_odd_at_odd([31, 75, 10, 53, 87, 97, 118, 75, 31]) == 149
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 31, 7, 8, 1, 2, 2]) == 8
    @test sum_odd_at_odd([2, 3, 65, 4, 6, 7, 7, 9, 5]) == 77
    @test sum_odd_at_odd([77, 52, 1, 2, 1, 1, 1, 99, 33, 1, 1, 1, 0, 1]) == 114
    @test sum_odd_at_odd([11, 1, 2, 1, 1, 1, 99, 1, 1, 1, 0]) == 112
    @test sum_odd_at_odd([42, 53, 75, 86, 97, 76, 75, 120]) == 247
    @test sum_odd_at_odd([3, 3, 6, 44, 8, 22, 5, 3]) == 8
    @test sum_odd_at_odd([89, 1, 1, 3, 4, 5, 6, 7, 1, 7]) == 91
    @test sum_odd_at_odd([42, 96, 53, 97, 120, 75, 75, 120]) == 128
    @test sum_odd_at_odd([31, 120, 42, 53, 75, 86, 97, 76, 75, 75]) == 278
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 1]) == 3
    @test sum_odd_at_odd([1, 1, 2, 1, -1, 1, 6, 1, 1, 1, 1, 2]) == 2
    @test sum_odd_at_odd([100, 1, 2, 2, 1, 1, 1, 99, 1, 1, 1, 0, 88, 1, 2]) == 4
    @test sum_odd_at_odd([31, 66, 120, 42, 55, 53, 75, 86, 108, 52, 119, 75, 108, 42, 75]) == 355
    @test sum_odd_at_odd([1, 119, 88, 1, 1]) == 2
    @test sum_odd_at_odd([1, 1, 2, 1, 1, 1, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 1, 5, 1]) == 6
    @test sum_odd_at_odd([1, 1, 1, 119, 1, 1, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([1, 2, 1, 1, 119, 88, 1, 1, 119, 1]) == 241
    @test sum_odd_at_odd([31, 42, 3, 87, 31, 86, 97, 108, 119]) == 281
    @test sum_odd_at_odd([1, 1, 96, 55, 1, 1, 1, 22, 2, 1, 1, 1, 1, 1, 55]) == 60
    @test sum_odd_at_odd([31, 42, 75, 86, 32, 97, 120, 76, 99, 120]) == 205
    @test sum_odd_at_odd([31, 42, 3, 64, 87, 75, 86, 97, 119]) == 240
    @test sum_odd_at_odd([1, 2, 0, 1, 89, 1, 99, 1, 2, 1, 1, 1, 1, 98]) == 191
    @test sum_odd_at_odd([1, 1, 1, 119, 2, 1, 119]) == 121
    @test sum_odd_at_odd([119, 31, 42, 53, 64, 75, 86, 97, 108, 1, 119]) == 238
    @test sum_odd_at_odd([11, 32, 89, 22, 33, 44, 55, 66, 77, 77, 88, 11]) == 265
    @test sum_odd_at_odd([97, 52, 1, 2, 1, 0, 1, 0]) == 100
    @test sum_odd_at_odd([2, 4, 3, 4, 5, 7, 8, 9]) == 8
    @test sum_odd_at_odd([1, 1, 1, 120, 119, 1, 1, 119, 1]) == 123
    @test sum_odd_at_odd([1, 2, 1, 0, 1, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([2, 2, 2, 1, 1, 5, 5, 5]) == 6
    @test sum_odd_at_odd([1, 2, 9, 2, 1, 0, 1, 1, 1, 1, 1, 1]) == 14
    @test sum_odd_at_odd([0, 0, 0, 0, 0, 32, -1, 0]) == -1
    @test sum_odd_at_odd([2, 42, 2, 1, 1, 0, 5, 5]) == 6
    @test sum_odd_at_odd([0, 1, 2, 1, -1, 1, 1, 1, 1, 1, 1, 1]) == 2
    @test sum_odd_at_odd([1, 31, 2, 1, 1, 1, 99, 1, 1, 1, 1, 53, 1]) == 104
    @test sum_odd_at_odd([2, 31, 42, 22, 53, 75, 86, 97]) == 53
    @test sum_odd_at_odd([11, 31, 2, 1, 1, 1, 99, 1, 1, 1, 1, 53, 1]) == 114
    @test sum_odd_at_odd([42, 53, 75, 86, 119, 97, 76, 75, 120, 120]) == 194
    @test sum_odd_at_odd([0, 4, 1, 118, 2, 3, 4, 5, 10, 8]) == 1
    @test sum_odd_at_odd([89, 1, 2, 3, 4, 6, 7, 4]) == 96
    @test sum_odd_at_odd([2, 42, 42, 1, 1, 0, 5, 5]) == 6
    @test sum_odd_at_odd([31, 42, 5, 97, 120, 75, 75, 97]) == 111
    @test sum_odd_at_odd([31, 41, 3, 87, 31, 86, 97, 108, 119]) == 281
    @test sum_odd_at_odd([100, 1, 2, 1, 1, 1, 1, 0]) == 2
    @test sum_odd_at_odd([100, 1, 2, 1, 1, 1, 99, 1, 1, 1, 0, 88, 1]) == 102
    @test sum_odd_at_odd([0, 1, 118, 2, 3, 4, 5, 6, 7, 8, 8, 118, 1]) == 16
    @test sum_odd_at_odd([31, 42, 42, 53, 75, 86, 97, 97, 119, 75, 97]) == 419
    @test sum_odd_at_odd([22, 42, 53, 75, 86, 97, 120, 75]) == 53
    @test sum_odd_at_odd([1, 2, 1, 1, 120, 64, 88, 1, 1, 119]) == 3
    @test sum_odd_at_odd([1, 2, 42, 1, 89, 66, 99, 1, 1, 1, 1, 1, 1]) == 192
    @test sum_odd_at_odd([2, 1, 1, 88, 1, 1, 1]) == 3
    @test sum_odd_at_odd([100, 2, 3, 5, 6, 6, 44, 8, 75, 5]) == 78
    @test sum_odd_at_odd([100, 1, 2, 1, 1, 1, 99, 1, 1, 1, 0, 88, 99]) == 200
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 6]) == 9
    @test sum_odd_at_odd([89, 1, 2, 3, 4, 5, 7]) == 96
    @test sum_odd_at_odd([1, 1, 96, 55, 1, 1, 1, 22, 2, 1, 1, 1, 1, 1, 55, 2]) == 60
    @test sum_odd_at_odd([1, 1, 2, 1, 86, 1, 1, 0, 77, 1, 1]) == 80
    @test sum_odd_at_odd([42, 53, 75, 86, 97, 120, 75, 75]) == 247
    @test sum_odd_at_odd([1, 1, 96, 55, 1, 0, 1, 22, 2, 1, 1, 1, 1, 1, 55, 2]) == 60
    @test sum_odd_at_odd([4, 41, 2, 3, 4, 6, 7, 8, 9, 5]) == 16
    @test sum_odd_at_odd([30, 31, 54, 42, 53, 86, 97, 118, 75, 97, 118]) == 225
    @test sum_odd_at_odd([0, 1, 44, 3, 4, 5, 6, 7, 66, 3]) == 0
    @test sum_odd_at_odd([1, 1, 1, 1, 2, 2, 75, 0, 1, 2]) == 78
    @test sum_odd_at_odd([42, 3, 64, 75, 86, 97, 119, 86]) == 119
    @test sum_odd_at_odd([76, 31, 42, 53, 75, 53, 97, 120, 76, 75, 120]) == 172
    @test sum_odd_at_odd([31, 4, 42, 42, 53, 75, 5, 97, 120, 75, 75]) == 164
    @test sum_odd_at_odd([31, 75, 10, 52, 87, 97, 118, 3, 75]) == 193
    @test sum_odd_at_odd([3, 3, 5, 6, 6, 44, 8, 88, 5]) == 13
    @test sum_odd_at_odd([1, 2, 1, 44, 2, 1, 0, 1, 1, 1, 2, 1]) == 3
    @test sum_odd_at_odd([0, 1, 2, 3, 4, 5, 6, 1, 10, 42, 1, 2]) == 1
    @test sum_odd_at_odd([30, 31, 54, 42, 53, 86, 97, 118, 97]) == 247
    @test sum_odd_at_odd([30, 31, 54, 42, 53, 86, 97, 118, 75, 118]) == 225
    @test sum_odd_at_odd([31, 42, 32, 75, 86, 32, 97, 120, 76, 75, 120, 42, 76]) == 128
    @test sum_odd_at_odd([1, 1, 1, 1, 2, 1, 0, 1, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([31, 120, 42, 55, 53, 75, 86, 52, 22, 30, 75, 75]) == 159
    @test sum_odd_at_odd([1, 1, 2, 1, -1, 1, 6, 1, 1, 1]) == 1
    @test sum_odd_at_odd([11, 89, 22, 33, 44, 66, 88, 99]) == 11
    @test sum_odd_at_odd([31, 42, 87, 22, 53, 75, 86, 97]) == 171
    @test sum_odd_at_odd([42, 53, 75, 86, 119, 97, 76, 75, 120]) == 194
    @test sum_odd_at_odd([31, 42, 53, 86, 97, 87, 118, 42]) == 181
    @test sum_odd_at_odd([31, 120, 42, 55, 53, 75, 86, 52, 22, 30, 75, 87, 75]) == 234
    @test sum_odd_at_odd([31, 120, 42, 41, 53, 75, 86, 97, 52, 119, 75, 75, 75]) == 234
    @test sum_odd_at_odd([0, 1, 118, 2, 117, 3, 4, 5, 10, 8, 1]) == 118
    @test sum_odd_at_odd([1, 2, 1, 2, 1, 1, 119, 1, 1, 1, 1, 1]) == 124
    @test sum_odd_at_odd([0, 1, 4, 5, 7, 7, 43, 8, 8]) == 50
    @test sum_odd_at_odd([1, 1, 10, 1, 2, 1, 1, 1, 1]) == 3
    @test sum_odd_at_odd([1, 2, 1, 44, 2, 1, 0, 1, 1, 1, 2, 1, 0]) == 3
    @test sum_odd_at_odd([11, 1, 2, 1, 1, 1, 99, 1, 1, 1, 0, 2]) == 112
    @test sum_odd_at_odd([31, 42, 42, 53, 75, 86, 97, 97, 119, 75, 97, 53]) == 419
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 52, 119, 75, 75, 75]) == 234
    @test sum_odd_at_odd([31, 42, 3, 64, 88, 75, 97, 108, 119]) == 250
    @test sum_odd_at_odd([0, 43, 0, 0, 0, 43, 0, 75]) == 0
    @test sum_odd_at_odd([89, 1, 2, 4, 4, 6, 7, 1]) == 96
    @test sum_odd_at_odd([2, 4, 3, 44, 4, 5, 7, 8, 8]) == 10
    @test sum_odd_at_odd([31, 4, 41, 42, 22, 53, 75, 97, 120, 75, 22]) == 147
    @test sum_odd_at_odd([1, 2, 1, -1, 1, 6, 1, 1, 1]) == 5
    @test sum_odd_at_odd([1, 1, 2, 1, 0, 1, 0, 1]) == 1
    @test sum_odd_at_odd([1, 2, 1, 89, 1, 2, 98, 1, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([1, 31, 2, 1, 1, 1, 99, 1, 1, 41, 1, 1, 53, 1, 2]) == 156
    @test sum_odd_at_odd([0, 1, 8, 3, 4, 5, 6, 7, 43]) == 43
    @test sum_odd_at_odd([0, 7, 1, 2, 4, 5, 86, 7, 8, 1, 2, 0]) == 1
    @test sum_odd_at_odd([0, 1, 2, 2, 4, 5, 6, 7, 8, 1, 2, 0]) == 0
    @test sum_odd_at_odd([30, 42, 5, 97, 120, 75, 75, 97]) == 80
    @test sum_odd_at_odd([30, 31, 54, 42, 53, 97, 118, 97]) == 53
    @test sum_odd_at_odd([1, 1, 2, 1, 1, 0]) == 2
    @test sum_odd_at_odd([31, 120, 42, 55, 53, 75, 86, 52, 23, 30, 75, 75, 75]) == 257
    @test sum_odd_at_odd([1, 1, 1, 2, 1, -1, 1, 6, 1, 1, 1, 1, 2, 2]) == 6
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 52, 119]) == 84
    @test sum_odd_at_odd([1, 1, 2, 1, -1, 1, 1, 1, 1, 1, 1, 1]) == 3
    @test sum_odd_at_odd([65, 89, 3, 64, 75, 86, 97, 108, 119, 98, 97, 75, 3, 3]) == 459
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 1, 1, 1, 1, 44, 1, 1]) == 6
    @test sum_odd_at_odd([31, 42, 87, 53, 75, 86, 97, 120, 75, 53]) == 365
    @test sum_odd_at_odd([1, 1, 1, 120, 119, 119, 1, 1, 119, 1]) == 241
    @test sum_odd_at_odd([1, 2, 1, 44, 2, 1, 0, 119, 1, 1, 9, 1, 1]) == 13
    @test sum_odd_at_odd([0, 1, 2, 2, 4, 5, 31, 7, 8, 1, 2, 0]) == 31
    @test sum_odd_at_odd([30, 65, 31, 54, 42, 53, 86, 97, 118, 75, 97]) == 128
    @test sum_odd_at_odd([1, 2, 1, 1, 0, 99, 1, 1, 1, 0]) == 4
    @test sum_odd_at_odd([1, 1, 119, 44, 1, 1]) == 121
    @test sum_odd_at_odd([42, 96, 97, 120, 75, 75, 120]) == 172
    @test sum_odd_at_odd([2, 3, 4, 5, 6, 9, 8, 11, 10, 8, 6]) == 0
    @test sum_odd_at_odd([1, 2, 42, 1, 100, 89, 66, 99, 1, 1, 1, 1, 1, 1, 1, 99]) == 5
    @test sum_odd_at_odd([1, 1, 96, 55, 1, 0, 1, 22, 2, 1, 1, 1, 1, 1, 55, 2, 1]) == 61
    @test sum_odd_at_odd([31, 120, 42, 41, 53, 75, 86, 97, 52, 119, 75, 75, 51, 75]) == 210
    @test sum_odd_at_odd([1, 30, 1, 2, 1, 0, 22, 76, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([0, 2, 3, 4, 6, 7, 8, 9, 10]) == 3
    @test sum_odd_at_odd([1, 31, 2, 1, 1, 1, 99, 1, 1, 1, 1, 119, 1]) == 104
    @test sum_odd_at_odd([3, 2, 2, 2, 1, 1, 1, 5, 1]) == 6
    @test sum_odd_at_odd([76, 89, 31, 42, 53, 30, 75, 86, 97, 120, 76, 75, 120, 97, 120]) == 256
    @test sum_odd_at_odd([75, 120, 42, 53, 75, 86, 97, 52, 119, 75, 75, 75]) == 441
    @test sum_odd_at_odd([100, 1, 2, 1, 1, 99, 1, 1, 1, 0, 88, 99, 1]) == 4
    @test sum_odd_at_odd([1, 1, 2, 1, -1, 1, 1, 1, 1, 1, 1, 1, 1]) == 4
    @test sum_odd_at_odd([2, 42, 2, 1, 1, 0, 5]) == 6
    @test sum_odd_at_odd([2, 2, 1, 1, 1, 5, 2, 5]) == 2
    @test sum_odd_at_odd([1, 1, 1, 120, 119, 119, 1, 2, 1, 119, 1]) == 124
    @test sum_odd_at_odd([31, 42, 53, 64, 76, 75, 86, 97, 7, 108, 118, 119]) == 91
    @test sum_odd_at_odd([86, 42, 118, 53, 75, 86, 96, 31, 76, 75, 22, 120, 75, 120]) == 150
    @test sum_odd_at_odd([30, 2, 4, 6, 7, 4]) == 7
    @test sum_odd_at_odd([120, 31, 42, 53, 87, 97, 118, 87]) == 87
    @test sum_odd_at_odd([31, 120, 42, 55, 53, 75, 86, 52, 52, 30, 75, 87, 75, 87]) == 234
    @test sum_odd_at_odd([30, 65, 31, 54, 64, 42, 53, 86, 97, 118, 75, 97, 75]) == 331
    @test sum_odd_at_odd([1, 1, 1, 1, 1, 2, 2, 75, 1, 1, 2, 76, 1]) == 5
    @test sum_odd_at_odd([31, 42, 66, 53, 10, 87, 97, 118, 53]) == 181
    @test sum_odd_at_odd([1, 0, 2, 1, 1, 1, 99, 1, 1, 1, 0]) == 102
    @test sum_odd_at_odd([42, 3, 64, 87, 75, 86, 97, 108]) == 172
    @test sum_odd_at_odd([2, 2, 2, 1, 0, 1, 5, 5]) == 5
    @test sum_odd_at_odd([1, 1, 2, 1, 1, 1, 1, 0, 1, 1, 1]) == 5
    @test sum_odd_at_odd([41, 1, 3, 4, 5, 7, 7, 43, 8]) == 56
    @test sum_odd_at_odd([1, 31, 2, 5, 1, 1, 99, 1, 1, 1, 1, 119, 1]) == 104
    @test sum_odd_at_odd([1, 2, 1, 1, 120, 119, 1, 1, 89, 1]) == 92
    @test sum_odd_at_odd([1, 1, 1, 44, 120, 119, 1, 1, 119, 1]) == 122
    @test sum_odd_at_odd([1, 2, 1, 22, 2, 1, 0, 119, 1, 1, 9, 1, 1]) == 13
    @test sum_odd_at_odd([31, 42, 5, 97, 120, 75, 75, 88]) == 111
    @test sum_odd_at_odd([31, 42, 3, 64, 88, 75, 97, 108, 31]) == 162
    @test sum_odd_at_odd([89, 2, 3, 119, 1, 5, 6, 7]) == 93
    @test sum_odd_at_odd([1, 1, 1, 1, 2, 2, 74, 75, 0, 1, 2]) == 2
    @test sum_odd_at_odd([118, 96, 53, 97, 120, 75, 75, 120]) == 128
    @test sum_odd_at_odd([1, 1, 2, 1, -1, 1, 6, 1, 66, 1, 1, 1]) == 1
    @test sum_odd_at_odd([42, 53, 86, 119, 97, 76, 75, 120]) == 172
    @test sum_odd_at_odd([1, 1, 2, 1, 86, 1, 1, 0, 77, 1, 1, 86]) == 80
    @test sum_odd_at_odd([0, 1, 44, 4, 5, 6, 7, 66, 3]) == 15
    @test sum_odd_at_odd([1, 2, 1, 43, 1, 1, 88, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([31, 120, 42, 41, 53, 75, 86, 97, 52, 119, 75, 75, 75, 53]) == 234
    @test sum_odd_at_odd([31, 120, 42, 53, 75, 86, 97, 52, 89, 119, 90, 75, 75]) == 367
    @test sum_odd_at_odd([31, 4, 42, 42, 53, 75, 97, 120, 75, 75, 53]) == 309
    @test sum_odd_at_odd([30, 42, 3, 64, 87, 75, 86, 97, 119]) == 209
    @test sum_odd_at_odd([1, 2, 42, 1, 6, 66, 99, 1, 1, 1, 1, 1, 1]) == 103
    @test sum_odd_at_odd([1, 2, 1, 1, 120, 76, 119, 1, 1, 119, 1]) == 123
    @test sum_odd_at_odd([0, 1, 2, 2, 3, 4, 5, 6, 7, 31, 8, 1, 2, 8]) == 15
    @test sum_odd_at_odd([89, 4, 5, 6, 7, 6]) == 101
    @test sum_odd_at_odd([89, 3, 52, 64, 75, 86, 97, 108, 119, 97, 75, 89]) == 455
    @test sum_odd_at_odd([30, 31, 54, 42, 53, 86, 97, 118, 75, 97, 118, 54]) == 225
    @test sum_odd_at_odd([100, 1, 2, 1, 1, 1, 1, 0, 0]) == 2
    @test sum_odd_at_odd([100, 52, 1, 2, 1, 1, 1, 99, 1, 2, 1, 1, 0, 1]) == 5
    @test sum_odd_at_odd([100, 52, 1, 2, 1, 1, 1, 31, 99, 1, 1, 1, 0, 1]) == 103
    @test sum_odd_at_odd([1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1]) == 6
    @test sum_odd_at_odd([31, 42, 3, 64, 87, 75, 64, 86, 97, 108, 119, 31]) == 337
    @test sum_odd_at_odd([1, 2, 1, 1, 1, 88, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([1, 1, 2, 1, 0, 1, 0, 97]) == 1
    @test sum_odd_at_odd([30, 42, 3, 64, 87, 2, 75, 86, 97, 119, 3]) == 265
    @test sum_odd_at_odd([1, 2, 1, 89, 1, 99, 10, 1, 1, 1, 1, 1]) == 5
    @test sum_odd_at_odd([31, 120, 2, 42, 55, 54, 53, 75, 119, 75, 75, 120]) == 333
    @test sum_odd_at_odd([1, 1, 119, 0, 1, 1, 1, 1, 1, 1]) == 123
    @test sum_odd_at_odd([4, 3, 4, 5, 7, 8, 9]) == 16
    @test sum_odd_at_odd([31, 120, 42, 75, 120, 41, 53, 75, 86, 97, 52, 119, 75, 75, 75, 53]) == 234
    @test sum_odd_at_odd([1, 2, 1, 43, 1, 1, 88, 1, 1, 1]) == 4
    @test sum_odd_at_odd([31, 42, 53, 75, 86, 97, 52, 75, 53]) == 137
    @test sum_odd_at_odd([4, 41, 2, 3, 4, 6, 7, 8, 9, 5, 9]) == 25
    @test sum_odd_at_odd([1, 119, 88, 1, 1, 1]) == 2
    @test sum_odd_at_odd([31, 120, 76, 42, 41, 53, 75, 86, 97, 52, 119, 75, 75, 51, 75]) == 513
    @test sum_odd_at_odd([30, 42, 3, 64, 87, 75, 86, 108, 119]) == 209
    @test sum_odd_at_odd([86, 2, 2, 1, 1, 1, 1, 1, 1, 4, 107, 44, 1, 1]) == 111
end
