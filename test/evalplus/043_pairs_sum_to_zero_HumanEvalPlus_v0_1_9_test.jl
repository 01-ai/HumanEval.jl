@testitem "043_pairs_sum_to_zero_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "043_pairs_sum_to_zero.jl"))
    @test pairs_sum_to_zero([0, 0]) == true
    @test pairs_sum_to_zero([0, 1, -1]) == true
    @test pairs_sum_to_zero([1, -1]) == true
    @test pairs_sum_to_zero([1, -1, 0]) == true
    @test pairs_sum_to_zero([2, 4, -2, -4]) == true
    @test pairs_sum_to_zero([2, 4, -2, -4, 0]) == true
    @test pairs_sum_to_zero([2, 4, -2, -4, 6, -6]) == true
    @test pairs_sum_to_zero([-2, 2, -4, 4]) == true
    @test pairs_sum_to_zero(Int64[]) == false
    @test pairs_sum_to_zero([2, 3, 4, 5, -9]) == false
    @test pairs_sum_to_zero([2, -4, 4, -2]) == true
    @test pairs_sum_to_zero([2, 4, -2, -4, -2]) == true
    @test pairs_sum_to_zero([2, -4, 5, 4, -2, -4, 6, -6, 2]) == true
    @test pairs_sum_to_zero([0]) == false
    @test pairs_sum_to_zero([2, 4, -4, 6, -6]) == true
    @test pairs_sum_to_zero([2, 4, -2, -4, 1, -2]) == true
    @test pairs_sum_to_zero([2, 4, 5, -4, 5]) == true
    @test pairs_sum_to_zero([2, 4, -4, 6, -9]) == true
    @test pairs_sum_to_zero([2, -4, 4]) == true
    @test pairs_sum_to_zero([2, 5, 4, -2, -4, 6, -6, 2]) == true
    @test pairs_sum_to_zero([2, 4, -2, -4, 1, -2, -2]) == true
    @test pairs_sum_to_zero([-2, 2, -4]) == true
    @test pairs_sum_to_zero([-1, 75, -2, -6, -1, 26, -54]) == false
    @test pairs_sum_to_zero([0, 0, 0]) == true
    @test pairs_sum_to_zero([-2, 2, -4, 75, 4, 4]) == true
    @test pairs_sum_to_zero([2, 3, -2, -4, 0]) == true
    @test pairs_sum_to_zero([0, 1]) == false
    @test pairs_sum_to_zero([2, 3, 0, 0]) == true
    @test pairs_sum_to_zero([5, 2, -4, 4]) == true
    @test pairs_sum_to_zero([2, 4, 5, -4, 5, 4]) == true
    @test pairs_sum_to_zero([-2, -1, 6, 75, 4, 4]) == false
    @test pairs_sum_to_zero([-2, -4, 2, -4]) == true
    @test pairs_sum_to_zero([2, 3, 4, 5, -9, 3]) == false
    @test pairs_sum_to_zero([1, 1, 1, 1, 0, 0]) == true
    @test pairs_sum_to_zero([-2, -4]) == false
    @test pairs_sum_to_zero([-2, 75, -2]) == false
    @test pairs_sum_to_zero([2, 2, 4, 5, -4, 5]) == true
    @test pairs_sum_to_zero([-54, 5, 4, -2, -4, 6, -6, 2]) == true
    @test pairs_sum_to_zero([-54, 5, 5, 4, -2, -4, 6, -6, 2, 2]) == true
    @test pairs_sum_to_zero([-4, 5]) == false
    @test pairs_sum_to_zero([2, 5, 4, -4, 6, -6, 2, 2]) == true
    @test pairs_sum_to_zero([2, 4, -2, -4, 1, -2, 1]) == true
    @test pairs_sum_to_zero([2, 3, 0]) == false
    @test pairs_sum_to_zero([2, 3, 4, 5, -9, 3, -9]) == false
    @test pairs_sum_to_zero([1, 1, 1, 1, 0, 0, 1]) == true
    @test pairs_sum_to_zero([2, -4, 5, 4, -2, 6, 75, 2]) == true
    @test pairs_sum_to_zero([2, 3, -4]) == false
    @test pairs_sum_to_zero([-4, 5, -4]) == false
    @test pairs_sum_to_zero([5]) == false
    @test pairs_sum_to_zero([2, 4, 5, -9, 3]) == false
    @test pairs_sum_to_zero([-6, -54, 5, 4, -2, -4, 6, -6, 2]) == true
    @test pairs_sum_to_zero([-2, 2, 1, -4, 4]) == true
    @test pairs_sum_to_zero([2, 4, -4, 0]) == true
    @test pairs_sum_to_zero([2, 3, -2, 0]) == true
    @test pairs_sum_to_zero([2, 4, 5, -9, 3, 4]) == false
    @test pairs_sum_to_zero([-2, -1, 6, 75, 4, 4, 75]) == false
    @test pairs_sum_to_zero([2, -4]) == false
    @test pairs_sum_to_zero([2, 4, -2, -4, -3]) == true
    @test pairs_sum_to_zero([-4, 5, -3, -4, -4]) == false
    @test pairs_sum_to_zero([0, 0, -1]) == true
    @test pairs_sum_to_zero([-1]) == false
    @test pairs_sum_to_zero([-2]) == false
    @test pairs_sum_to_zero([2, 6, 4, -2, -4, 6, -6, 2]) == true
    @test pairs_sum_to_zero([2, 4, -4, -5, 0, 2]) == true
    @test pairs_sum_to_zero([0, 0, -1, 0]) == true
    @test pairs_sum_to_zero([-4, 5, -4, -4]) == false
    @test pairs_sum_to_zero([0, 1, 0, 1, 1, 1, 0, 0, 1]) == true
    @test pairs_sum_to_zero([-2, 75, 75]) == false
    @test pairs_sum_to_zero([2, 6, 4, -2, -4, 6, -6, 2, -4]) == true
    @test pairs_sum_to_zero([5, 5, 2, -4, 4]) == true
    @test pairs_sum_to_zero([2, -2, -6, 0, 2]) == true
    @test pairs_sum_to_zero([-2, 75, 75, -2]) == false
    @test pairs_sum_to_zero([-2, 2, 1, 1, -4, 4]) == true
    @test pairs_sum_to_zero([2, 2, 4, -4, 5]) == true
    @test pairs_sum_to_zero([2, 6, 4, -2, -4, 6, -6, 2, -4, 6]) == true
    @test pairs_sum_to_zero([2, 4, 5, -9]) == false
    @test pairs_sum_to_zero([5, 2, 4, -4, 5, 4]) == true
    @test pairs_sum_to_zero([1, 1, 1, 0, 0, 0, 1]) == true
    @test pairs_sum_to_zero([1, -54, -1]) == true
    @test pairs_sum_to_zero([2]) == false
    @test pairs_sum_to_zero([-1, 75, -2, -6, -1, 26, -54, 75]) == false
    @test pairs_sum_to_zero([2, 3, 4, -9, 3]) == false
    @test pairs_sum_to_zero([2, 3, -8, 4, 2, -9, 3]) == false
    @test pairs_sum_to_zero([-2, -2, 26]) == false
    @test pairs_sum_to_zero([-1, 5]) == false
    @test pairs_sum_to_zero([5, 5]) == false
    @test pairs_sum_to_zero([26, -2, 2, -4]) == true
    @test pairs_sum_to_zero([-2, 2, 1, -4, -4, 4]) == true
    @test pairs_sum_to_zero([2, 4, 6, -4, 5, 4, 4]) == true
    @test pairs_sum_to_zero([-4, 5, -2, -3, -4, -4]) == false
    @test pairs_sum_to_zero([-2, 0, -4]) == false
    @test pairs_sum_to_zero([2, 6, 4, -2, 6, -6, 2, -4, 6]) == true
    @test pairs_sum_to_zero([4, -2, -4]) == true
    @test pairs_sum_to_zero([-4, 5, -3, -4, -4, 5]) == false
    @test pairs_sum_to_zero([-4]) == false
    @test pairs_sum_to_zero([2, 6, 4, 3, -4, 6, -6, 2, -4, -4]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5]) == true
    @test pairs_sum_to_zero([1, 2, 3, -1, -2, -3, -4, -5, 6, 7, 8, 9, -6]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([10, -10, 5, -5, 3, -3, 1, -1]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10, 10]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, -7, -8, -9, -10, -11, -12]) == false
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -6, -9, 2, 14]) == false
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, 6, -7, -8, -9, -10, -11, -12, 5]) == false
    @test pairs_sum_to_zero([10, 5, -5, 3, -3, 2, -1]) == true
    @test pairs_sum_to_zero([10, -2, -10, 5, -5, 3, -3, 1, -1]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, 6, -7, -8, 6000, -10, -11, -12, 5]) == false
    @test pairs_sum_to_zero([10, 5, 3, 5000, -3, 2, -1, 2]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -3, 2, -1, 3]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, 6, -5000, -7, -8, 6000, -10, -11, -12, 5, -8]) == false
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, -1, 0, 0]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, 6, -7, -8, 6000, -10, -11, 5000, 5]) == false
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, 1, -4]) == true
    @test pairs_sum_to_zero([0, 1, 0, 0, 0, 0, 0, 0, -1, 0, 0]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -9, 2, 14]) == false
    @test pairs_sum_to_zero([0, 1, 0, 0, 0, 100, 0, 0, 0, -1, 0, 0, -1]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, 1, -4, -2]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -3, 2, -6, -1, 3, 5]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, -3, -6, -1, 3, 5]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -3, 2, -6, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 1, 2, 1, 1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, 10, -7, -8, 6000, -10, -11, -12, 5]) == true
    @test pairs_sum_to_zero([1, 2, 3, 2, -70, 5, 6, -5000, -7, -8, 6000, -10, -11, -12, 5, -8]) == false
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, -4000, -7000, 8000, -8000, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 1, 0, 0]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -10, -9, -8, -7, -6, -4, -3, -2, -1]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -3, -12, -6, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 1, 1, 1, -1, 80, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 1, 0, 0, 9000, 0]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -3, 2, 7000, -1, 3, 6]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, 10, -7, -8, 6000, -10, -11, -12]) == true
    @test pairs_sum_to_zero([0, 5, 1, -1, -2, 3, -3, 4, -4, 5, -5, -2]) == true
    @test pairs_sum_to_zero([10, 5, -5, 2, -3, 2, -1]) == true
    @test pairs_sum_to_zero([10, 3, 5000, -3, 2, -1, 2]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, 0, 0, 100, 0, 0, 0, -1, 0, 0, -1]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -9, -13, 10, -7, -8, 6000, -10, -12, 5]) == true
    @test pairs_sum_to_zero([3, -6000, 5, -5, 3, -3, 2, -1, 3]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -9, -13, 10, -7, -8, 6000, -10, -12, 5, -9]) == true
    @test pairs_sum_to_zero([10, 5, -5, 3, -3, -12, -6, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, -4000, 5000, -5000, 6000, -6000, -4000, -7000, 8000, -8000, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([10, -2, -10, 5, -5, 3, -3, 1, 30, -1, -1]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, -9, 2, 14]) == false
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 1, 0, 0, 9000, 0, 0]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([3, -6000, 5, 3, -3, 2, 2, -1, 3]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, -1, 80, -1, -2, -1, -1, -2]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, 1, -4, -2, 10]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 1, 1, 1, -1, 80, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, 6, -7, -8, 6000, -10, -12, 5000, 5, 5]) == false
    @test pairs_sum_to_zero([10, 5, 3, 5000, -3, -30, 2, -1, 2, -3]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, -1, 80, -1, -2, -2, -1, -1, -2]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -12, -6, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([11, 90, 3, 5000, -3, 2, -1, 2]) == true
    @test pairs_sum_to_zero([1, 1, 6, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 5, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 6, -5000, -7, -8, 6000, -10, -11, -12, -8]) == false
    @test pairs_sum_to_zero([10, 4, 5, -5, 3, -3, -12, -6, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([0, 1, 0, 0, 0, 0, 0, 1, 0, 0]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 1, 1, 1, -1, 80, -1, -1, -2, -1, -1]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -9, 10, -7, -8, 6000, -10, -12, 5, -9, -70]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 1, 80, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([0, 1, 7000, -1, 0, 0, 100, 0, 0, 0, -90, -1, 0, 0, -1]) == true
    @test pairs_sum_to_zero([1, -10, 3, -70, 6, -5000, -7, -8, 6000, -10, -11, -12, -8]) == false
    @test pairs_sum_to_zero([1, 2, 3, 5, 10, -7, -8, 6000, -10, -11, -12]) == true
    @test pairs_sum_to_zero([10, 4, 5, -5, 3, -3, -12, -7, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([0, 1, 0, 0, 0, 100, 0, 0, 0, -1, 0, -1, -1]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([0, 1, -1, -2, 3, -3, 4, -4, 5, -5]) == true
    @test pairs_sum_to_zero([1, 2, 3, -69, 5, 10, -7, -8, 6000, -10, -11, -12]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 1, 1, 1, -1, 80, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([0, 1, 0, 0, 0, 0, 1, 0, 0]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -12, -6, -1, 3, 5, 3, -5]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, 8, -1, 80, -1, -2, -2, -1, -1, -2]) == true
    @test pairs_sum_to_zero([1, 3, -70, 5, -9, 10, -7, -8, 6000, -10, -12, 5, -9, -10]) == true
    @test pairs_sum_to_zero([3, 10, -5, 3, 4, -3, 2, -1, 3, 3]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -6, 3, 5, 3, -5]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, 0, 0, 100, 0, 0, 0, -1, 0, 0, -1, 0]) == true
    @test pairs_sum_to_zero([1, 3, -70, 6, -9, 10, -7, -8, 6000, -10, -12, 5, 1000, -9, -10, 1000]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, -3, 1, -4, -2]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, -3, 1, -4, -2, 10]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, -5, 2, 1, -1, 80, -1, 9000, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([10, 10, -2, -10, 5, -5, 3, -3, 1, -1]) == true
    @test pairs_sum_to_zero([2, 2, 3, -70, 6, -8, -9, -10, -11, -12, 5]) == false
    @test pairs_sum_to_zero([9, 5, 3, -3, -12, -6, 3, 5, 3]) == true
    @test pairs_sum_to_zero([0, 1, 0, 0, 100, 0, 0, 0, -1, 0, -1, -1, 0, 1]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -8, -7, -6, -4, -3, -2, -1]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -9, 9, -7, -6000, 6000, -10, -12, 5, -9, -70]) == true
    @test pairs_sum_to_zero([10, -2, 5, 4, -5, 3, -3, 4000, 1, -2, 10]) == true
    @test pairs_sum_to_zero([3, 10, -5, 3, 4, -3, 2, 10, 3, -1, 3, -1000, 3]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1, 80, 1]) == true
    @test pairs_sum_to_zero([1, 3, -70, 6, -9, 10, -7, -8, 6000, -10, -12, 5, 1000, -9, -10, 1000, -9, 5]) == true
    @test pairs_sum_to_zero([9, 5, 3, -9, -3, -12, -1, 3, 5, 3, -5]) == true
    @test pairs_sum_to_zero([10, -2, 5, -5, 3, -3, -3, 1, -4, -2]) == true
    @test pairs_sum_to_zero([10, -2, 5, 4, -5, 3, -3, 4000, 1, -2, 10, 5]) == true
    @test pairs_sum_to_zero([4, 1, -2, 1, 1, 1, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1, 80, 1]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -9, -100, -7, -8, 6000, -10, 2000, 5, -9, -70]) == false
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, 8, -1, 10000, 80, -1, -2, -2, -1, -1, -2]) == true
    @test pairs_sum_to_zero([3, 10, 4, 5, -5, 3, -3, 2, -6, -1, 2, 5]) == true
    @test pairs_sum_to_zero([3, 5, -5, 3, -3, 2, 7000, -1, 3, 6]) == true
    @test pairs_sum_to_zero([1, -10, 3, -70, 6, -5000, -7, -8, 6000, -10, -11, -12, -8, 3]) == false
    @test pairs_sum_to_zero([10, -2, 5, -5, 3, -3, -3, 1, -4, -2, -2, -2, -5]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, -3, -1, 3, 5]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, 0, 0, 100, 0, 0, 0, -1, 0, -1, 0]) == true
    @test pairs_sum_to_zero([9, 5, 3, -9, -3, -12, -1, -10, 5, 3, -5]) == true
    @test pairs_sum_to_zero([9, 5, 3, -3, -12, -6, 5, 3]) == true
    @test pairs_sum_to_zero([3, -6000, 5, 3, -3, 2, -1, 2]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -12, -9, -100, -7, -8, 6000, -10, 2000, 5, -9, -70]) == false
    @test pairs_sum_to_zero([-8, 1, 2, 3, -70, 5, -7, -8, 6000, -10, -11, 5000, 5]) == false
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, 8, -1, 80, -1, -2, -1, -1, -2]) == true
    @test pairs_sum_to_zero([11, 90, 3, 5000, -3, 1, 2, -1, 2]) == true
    @test pairs_sum_to_zero([4, 1, -2, 1, -3, 1, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1, 80, 1]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, 0, 0, 100, 0, 0, 0, -1, 0, -1, 0, 1]) == true
    @test pairs_sum_to_zero([1, 1, 6, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([9000, 1, 2, 3, -70, 5, 10, -7, -8, 6000, -10, -11, -12, 5]) == true
    @test pairs_sum_to_zero([3, 10, 5, -70, -5, 3, -3, -12, -6, -1, 3, 5, 3, 3]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -3, 2, -6, -1, 3, 5, 3, -1]) == true
    @test pairs_sum_to_zero([81, 1, -2, 1, 1, 1, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1, 80, 1]) == true
    @test pairs_sum_to_zero([9, 5, 3, -9, -3, -12, -1, 3, 5, 3, -9]) == true
    @test pairs_sum_to_zero([4, 1, -1, 1, 1, 1, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1, 80, 1]) == true
    @test pairs_sum_to_zero([10, -2, 5, 4, -5, 3, 11, -3, 4000, 30, 10]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 1, 2, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, -3000, -4000, 5000, -5000, 6000, -6000, -4000, -7000, 8000, -8000, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, -7, -8, -10, -10, -3, -11, -12]) == true
    @test pairs_sum_to_zero([7, 1, 1, 6, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 2, 3, 3, 5, -7, -8, -9, -10, -11, -12]) == false
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -8, -7, -7, -4, -3, -2, -1]) == true
    @test pairs_sum_to_zero([1, 2, 3, 2, -70, 5, 6, -5000, -7, -8, 6000, -10, -11, -12, 5, -8, -12]) == false
    @test pairs_sum_to_zero([1, -2, -50, 1, 80, 10000, 1, 1, 1, -1, 80, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, -10000, 2, 1, 1, 8, -1, 80, -1, -2, -2, -1, -1, -2]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 2, 2, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 1, 2, 1, 1, -1, -1, -1, 0, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([0, 1, 7000, -1, 0, 0, 100, 0, 0, 0, -90, -1, 0, -1]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, -1, 0, 100, 0, 0, 0, -1, 0, 0, -1, 0]) == true
    @test pairs_sum_to_zero([99, 0, 1, 0, 0, 100, 0, 0, 0, -1, 0, -1, -1, 0, 1, -1, 1]) == true
    @test pairs_sum_to_zero([10, 5, -5, -3, -12, -1, 3, 5]) == true
    @test pairs_sum_to_zero([1, 3, 99, -70, 5, -9, 10, -7, -8, 6000, -10, -12, 5, -9, -10]) == true
    @test pairs_sum_to_zero([-8, 1, 2, 3, -70, 5, -7, -8, 6000, -10, -11, 5]) == false
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -3, -6, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([9, 5, 3, -9, -12, -12, -1, 3, 5, 3, -9]) == true
    @test pairs_sum_to_zero([1, 3, 99, -70, 5, -9, 10, -7, -8, 6000, -10, -12, 5, -9, -10, 99]) == true
    @test pairs_sum_to_zero([50, 70, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10, 10]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -12, -6, -1, 3, 5, 3, 3]) == true
    @test pairs_sum_to_zero([1, -10, 3, -70, 6, -5000, -7, -8, 6000, -11, -12, -8, 3]) == false
    @test pairs_sum_to_zero([10, -2, 5, 3, -3, 1, -2, 10]) == true
    @test pairs_sum_to_zero([10, 5, -5, -12, -3, 2, -1, 5]) == true
    @test pairs_sum_to_zero([1001, -1000, 2000, -2000, 3000, -3000, -4000, 5000, -5000, 6000, -6000, -4000, -7000, 8000, -8000, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, -3000, -4000, 5000, -5000, 6000, -6000, -4000, -4, 8000, -8000, 9000, -9000, 10000, -10000, -1000]) == true
    @test pairs_sum_to_zero([11, 3, 5000, -3, 2, -1, 2]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -9, 9, -6000, 6000, -10, -12, 5, -9]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 9]) == true
    @test pairs_sum_to_zero([-10, 3, -70, 6, -5000, -7, -8, 6000, -10, -11, -12, -8]) == false
    @test pairs_sum_to_zero([10, -10, 5, -5, 3, 1, -1]) == true
    @test pairs_sum_to_zero([0, 0, 7000, 0, 0, 0, 100, 0, 0, 0, -1, 0, -1, 0, 1]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -12, -6, -1, 3, 5, 3, -5, -12]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, -4000, -7000, 8000, -8000, 9000, 2001, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([4, 1, -2, 1, 1, 1, 10000, -5, 2, 1, -1, 80, -1, -1, -1, -1, -1, 1, -2]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 4, 3, -3, 2, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([5, 10, 4, 5, -5, 3, -3, -12, -7, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([1, -10, 3, -70, 6, -5000, -7, -8, 6000, -10, -11, -12, -8, 3, 1]) == false
    @test pairs_sum_to_zero([3, -70, 5, -9, 10, -7, -8, 6000, -10, -12, 5, -9, -10, -9]) == true
    @test pairs_sum_to_zero([1, 2, 4, 5, 6, -7, -8, -9, -10, -11, -12]) == false
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, -1, 0]) == true
    @test pairs_sum_to_zero([0, 1, 7000, -1, 0, 0, 100, 0, 0, 0, -90, -1, 0, 0, -1, -1]) == true
    @test pairs_sum_to_zero([10, 5, -5, -3, -12, -1, 3, 5, -3]) == true
    @test pairs_sum_to_zero([10, -2, 5, -2, -5, 3, -3, -3, -4, -2]) == true
    @test pairs_sum_to_zero([2, 3, 4, 5, 6, 7, 8, 9, 10, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 9, 7]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 1, 0, 0, 9000, 0, 0]) == true
    @test pairs_sum_to_zero([10, 4, 5, -5, 3, -3, -12, -1, 3, 5, 3, 3]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, -5]) == true
    @test pairs_sum_to_zero([1, 3, 6, -9, 10, -7, -8, 6000, -10, -12, 5, 1000, -9, -10, 1000, -9, 5]) == true
    @test pairs_sum_to_zero([5, -5, -3, -12, -1, 50, 3, 5, -3]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -8, -7, 81, -4, -3, -2, -1]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 1, 0, 0, 9000, 0]) == true
    @test pairs_sum_to_zero([10, 5, 3, 5000, 5000, -3, 2, -1, 2, 5000]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -4, -6, -1, 3, 5, 3, 5]) == true
    @test pairs_sum_to_zero([10, 4, 5, 8000, -5, 3, -3, -12, -6, -1, 3, 5, 3, 10, -12]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -8, -7, -7, -4, -4, -3, -2, -1]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, -7, -8, -10, -10, -3, -11, -12, 4]) == true
    @test pairs_sum_to_zero([10, -50, -3, 3, 1, -2, 10]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, -5, -1]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 4, 3, -3, 2, -1, 3, 6, 3]) == true
    @test pairs_sum_to_zero([9, 5, 3, 5, -9, -3, -12, -1, 3, 5, 3, -5]) == true
    @test pairs_sum_to_zero([1001, -1000, 2000, -2000, 3000, 81, -3000, -4000, 5000, -5000, 6000, -6000, -4000, -7000, 8000, -8000, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([0, 1, 7000, -1, 0, 0, 0, 0, 0, -90, -1, 0, 0, -1, -1]) == true
    @test pairs_sum_to_zero([1, 3, 6, -9, 10, -7, -8, 6000, -10, -12, 5, 1000, -9, -10, 1000, -9, 5, -9]) == true
    @test pairs_sum_to_zero([10, -2, 5, 3, -2, 10]) == false
    @test pairs_sum_to_zero([1, 2, 3, 5, -12, -9, -100, -2000, 6000, -4, 2000, 5, -9, -70]) == true
    @test pairs_sum_to_zero([1, 3, -70, 5, 10, -7, -8, 6000, -10, -11, -12, 5, 1]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, -7000, 8000, -8000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 1, 0, 0]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 1, 80, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([10, 4, 5, 8000, -5, 3, -3, -12, -6, -1, 3, 2001, 5, -6000, 10, -12]) == true
    @test pairs_sum_to_zero([1, 1, 3000, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 2, -1, -1]) == true
    @test pairs_sum_to_zero([2, 2, 3, -70, 5, -9, -13, 10, -7, -8, 6000, -10, -12, 5, -10]) == true
    @test pairs_sum_to_zero([-4, 10, 5, 3, 5000, -3, -30, 2, -1, 2, 0, -6, -3]) == true
    @test pairs_sum_to_zero([9, 5, 3, -9, -3, -12, -1, 3, 5, 3, -9, -3]) == true
    @test pairs_sum_to_zero([1, -10, 3, -70, 6, -5000, -7, -8, 1, 6000, -10, -11, -12, -8, 3, 1, -5000]) == false
    @test pairs_sum_to_zero([3, 10, 5, -70, 10, 3, -3, -12, -6, -1, 3, 5, 3, 3]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, -2, 3, -3, 4, -4, -5]) == true
    @test pairs_sum_to_zero([-11, 50, 1, 1, 80, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([4, 1, -2, 1, -3, 1, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1, -2, 81, 1]) == true
    @test pairs_sum_to_zero([10, 5, -5, 2, -3, 2, 0]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, 6, -7, -8, 6000, -10, -11, 5000, 5, -11]) == false
    @test pairs_sum_to_zero([81, 1, -2, 1, 1, 1, 10000, -5, 2, 1, 1, -1, -1, -1, -1, -1, -1, 80, 1, 1]) == true
    @test pairs_sum_to_zero([3, -70, 6, -9, 10, -7, -8, 6000, -10, -12, 5, 1000, -9, -10, 1000]) == true
    @test pairs_sum_to_zero([-8, 1, 2, 3, 3000, -70, 5, -7, -8, 6000, -10, -11, 5000]) == false
    @test pairs_sum_to_zero([11, 3, 5000, -3, 4999, 2, -1, 2, 4999]) == true
    @test pairs_sum_to_zero([1, 1, 3000, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 2, -1, -1, 1]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, -3, 1, -4, -2, 10, -3]) == true
    @test pairs_sum_to_zero([3, 10, 5, -70, 10, 3, 7, -3, -12, -6, -1, 3, 5, 3, 3, -6]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -5, 10, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, -5]) == true
    @test pairs_sum_to_zero([1000, 1000, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, 9000, -9000, 10000, -10000, 3000]) == true
    @test pairs_sum_to_zero([1, -10, 3, -70, 6, -5000, -7, -8, 6000, -10, -11, -1, -8, 3, 1]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 4, 3, -3, 2, -1, 3, 5, 3, 5]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, -3, 1, -4, -2, 4, 10]) == true
    @test pairs_sum_to_zero([-11, 50, 1, 1, 80, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([9, 5, 3, 2001, -12, -1, 3, 5, 4, -9]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, -12, -9, -100, -2000, 6000, 2000, -4, 2000, 5, -9, -70, -9]) == true
    @test pairs_sum_to_zero([-3, 10, 5, -5, -3, -6, -1, 3, 5, -5]) == true
    @test pairs_sum_to_zero([9, 1001, 5, -5, 3, -3, -12, -6, -1, 3, 5, 3, -5]) == true
    @test pairs_sum_to_zero([9000, 1, 2, 3, -70, 5, 10, -7, -8, 6000, -10, -12, -12, 5]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 2, 2, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([10, -2, 5, 3, -2, 10, 10]) == false
    @test pairs_sum_to_zero([10, -2, 5, 4, -6, 3, -3, 4000, 1, -2, 10, 5, 3]) == true
    @test pairs_sum_to_zero([3, 10, 5, 10, 3, -3, -12, -6, -1, 3, 5, 3, 3]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, -3, -6, -1, 4, 5]) == true
    @test pairs_sum_to_zero([0, 1, 7000, -1, 0, 5, 0, 100, 0, 0, 0, -90, -1, 0, -1]) == true
    @test pairs_sum_to_zero([-9, 0, 1, 0, 0, -10, 0, 1, 0, 0]) == true
    @test pairs_sum_to_zero([4, 5, -5, 3, -3, -12, -7, -1, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([-11, 50, 1, 1, 80, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([9, 5, 3, -9, -3, -12, 4, -1, 3, 5, 3, -5]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, 0, 0, 100, 0, 0, -1, 0, -1, 0, 1]) == true
    @test pairs_sum_to_zero([3, -5, 3, 4, -3, 2, -1, 3, 3]) == true
    @test pairs_sum_to_zero([0, 1, -1, 10, -2, 3, -3, -4, 5, -5]) == true
    @test pairs_sum_to_zero([3, 10, 5, -80, 2, -3, 2, 0]) == true
    @test pairs_sum_to_zero([10, -2, 5, -5, 3, -3, -3, -2, -2]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 1, 7, 0, 0, 9000, 0, 0]) == true
    @test pairs_sum_to_zero([0, 1, -1000, 0, 0, 0, 100, 0, 0, 0, -1, 0, -1, 1, 1]) == true
    @test pairs_sum_to_zero([10, 5, -5, 2, -3, 2, 0, -3]) == true
    @test pairs_sum_to_zero([2, 3, -70, 5, -9, -14, 10, -7, -8, 6000, -10, -12, 5, -9, 2]) == true
    @test pairs_sum_to_zero([10, -2, 5, 3, -2, 10, 3]) == false
    @test pairs_sum_to_zero([-70, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 3000, -5000, 6000, -6000, -4000, -7000, 8000, -8000, 9000, 2001, -9000, 10000, -10000, -3000]) == true
    @test pairs_sum_to_zero([10, 5000, -10, 5, -5, 3, -3, 1, -1]) == true
    @test pairs_sum_to_zero([11, 3, 5000, -3, 2, -3000, -1, 2]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 1, 0, 0]) == true
    @test pairs_sum_to_zero([9, 5, 3, -9, -3, -12, -5, -1, 3, 5, 3, -5, 5]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 4, 5, 6, -7, -8, 6000, -10, 5000]) == false
    @test pairs_sum_to_zero([9, 5, 50, -5, 3, -3, -12, -6, -1, 3, 5, 3, 3]) == true
    @test pairs_sum_to_zero([3, -6000, 5, -5, 3, -3, 2, 3]) == true
    @test pairs_sum_to_zero([10, -2, 5, -5, 3, -2, -3, -2, -2]) == true
    @test pairs_sum_to_zero([-10000, 3, 10, 5, -70, 10, 3, 7, -3, -12, -6, -1, 3, 5, 3, 3, -6, 5]) == true
    @test pairs_sum_to_zero([0, 2, 1, 0, 0, 0, 0, 0, 1, 0, 0]) == true
    @test pairs_sum_to_zero([9, 5, 3, -9, -3, 80, -12, -5, -1, 3, 5, 3, -5, 5]) == true
    @test pairs_sum_to_zero([11, 3, 5000, -3, 2, -3000, -1, 2, -1]) == true
    @test pairs_sum_to_zero([10, 5, -14, 3, -3, 2, -1, 5]) == true
    @test pairs_sum_to_zero([1, 2, 4, 5, 6, -7, -8, -9, -10, -11, -12, 2]) == false
    @test pairs_sum_to_zero([0, 1, 0, 0, 0, 0, 0, -1, 0, 0]) == true
    @test pairs_sum_to_zero([2, 1, 2, 3, -70, 5, 6, -9, 9, -6000, 6000, -10, -12, 5, -9]) == true
    @test pairs_sum_to_zero([1, -2, 81, 1, 1, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([10, 5, -5, -3, -12, 10000, 10, 3, 5, 3]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, -1, 0, -1]) == true
    @test pairs_sum_to_zero([1, -10, 3, -70, -5000, -7, -8, 6000, -10, 6000, -11, -12, -8]) == false
    @test pairs_sum_to_zero([10, 5, 3, 5000, 5000, -3, 2, -1, 2, 5000, 10]) == true
    @test pairs_sum_to_zero([1, 3, -70, 6, -9, 10, -7, -8, 6000, -10, -12, 5, 1000, -9, 1000, 5]) == true
    @test pairs_sum_to_zero([1, -10, 3, -70, 6, -5000, -7, -8, 5999, -10, -11, -12, -8, 3, 1]) == false
    @test pairs_sum_to_zero([1, 2, 3, -70, 6, -5000, -8, -7, -8, 6000, -10, -11, -12, -8, 2]) == false
    @test pairs_sum_to_zero([9, 5, -5, 3, -2, -5, 3, 5, 3, -5]) == true
    @test pairs_sum_to_zero([1, 3, 4, 5, 6, 7, 8, 9, 10, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, -5]) == true
    @test pairs_sum_to_zero([1, 2, -11, -70, 5, -9, -13, 10, -7, -8, 6000, -10, -12, 5]) == true
    @test pairs_sum_to_zero([10, 5, -5, -3, -12, -1, 3, 5, 5]) == true
    @test pairs_sum_to_zero([3, 10, 4, 5, -5, 3, -3, -6, -1, 2, 4, 5]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 1, 1, 1, -1, 80, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 2, 2, 1, -12, -1, -1, -1, -1, -1, -1, 1, -1, -100]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -10, -9, -8, -7, -6, -5, -4, 2000, -3, -2, -1]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -12, -6, -1, 3, 5, 3, -5, -12, 3]) == true
    @test pairs_sum_to_zero([1, -6000, 3, 4, 5, 6, -7, -8, -9, -10, -11, -12]) == false
    @test pairs_sum_to_zero([-1000, 2000, -2000, 3000, -3000, -4000, 5000, -5000, 6000, -6000, -7000, 8000, -8000, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([1, -10, 3, -70, 6, -5000, -7, -8, 5999, -10, -11, 5, -12, -8, 3, 1, 1]) == false
    @test pairs_sum_to_zero([1, 3000, 0, 2001, 1, 1, 1, 1, -1, -1, -1, -1, -1, 2, -1, -1]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, -1, -1, -1]) == true
    @test pairs_sum_to_zero([3, 10, 5, -70, 10, 3, 7, -3, -12, -6, -1, 4, 3, 5, 3, 3, -6, 4000]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, 10, -7, -8, 6000, -10, -12, -12]) == true
    @test pairs_sum_to_zero([7, 1, 1, 6, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, 6000, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4999, -70, 5, 6, -7, -8, 6000, -10, -12, 5000, 5, 5]) == false
    @test pairs_sum_to_zero([10, -2, 5, 4, -5, 3, -3, 4000, 1, -2, 9, 10, 5]) == true
    @test pairs_sum_to_zero([1001, -1000, 2000, -2000, 3000, 81, -3000, -4000, 5000, -5000, 6000, -6000, -4000, -7000, 8000, -8000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([10, 10, -2, -10, 5, -5, 3, -3, -11, -1]) == true
    @test pairs_sum_to_zero([1000, 1000, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, 2000, -7000, 8000, -8000, 9000, -9000, 10000, -10000, 3000, 8000]) == true
    @test pairs_sum_to_zero([10, 10, -2, -10, 5, -5, 3, -3, -11, -1, -10, -10]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([10, -2, 5, 3, -2, 10, 3, 3]) == false
    @test pairs_sum_to_zero([1, 2, 3, -70, 6, -5000, -8, -7, -8, 6000, -10, -11, -12, -8, 2, -8, -8]) == false
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -4, -6, -1, 3, 3, 5]) == true
    @test pairs_sum_to_zero([-8, 2, 3, 3000, -70, 5, -7, -8, 6000, -10, -11, 5000]) == false
    @test pairs_sum_to_zero([4, 1, -2, 1, 2, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1, -2, 81, 1]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 5, 1, 1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, -1, 0, 100, 0, -12, 0, -1, 0, 0, -1, 0]) == true
    @test pairs_sum_to_zero([3, -6000, 5, -5, 3, -3, 2, -1, 3, 3]) == true
    @test pairs_sum_to_zero([1, 3, 6, -9, 10, -7, -13, 6000, -10, -12, 5, 1000, -9, -10, 1000, -9, 5, -9]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 6, -5000, -8, -7, 6000, -10, -11, -12, -11, 2]) == false
    @test pairs_sum_to_zero([0, 1, 0, 0, 0, 1, 0, 0]) == true
    @test pairs_sum_to_zero([2, 1, 2, 3, -70, 5, -9, -4000, -6000, 6000, -10, -12, 5, -9]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -6, -1, 3, 5, 3, -5, -12]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, 8, -1, 80, -1, -2, -1, -2]) == true
    @test pairs_sum_to_zero([1, 2, 4, 5, 6, -7, -8, -9, -10, -11, -12, -12]) == false
    @test pairs_sum_to_zero([1, 1, 50, 51, 1, 2, 2, 1, -12, -1, -1, -1, -1, -1, -1, 1, -1, -100]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, 1, -4, 1]) == true
    @test pairs_sum_to_zero([10, 4, -2, 5, -5, -12, -1, 3, 5, 3, 3]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -6, -1, 4, 5, 3, -5, -12]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -12, -6, -1, 3, 5, 3, 5, -12, 3]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -3000, -1, 4, 5, 3, -5, -12]) == true
    @test pairs_sum_to_zero([9, -2000, 5, -5, 3, -3, -3000, -1, 4, 5, 3, -5, -12]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, -12, -9, -100, -2000, 6000, 2000, -4, 2000, 5, -9, -9]) == true
    @test pairs_sum_to_zero([1, 3, -70, 6, -9, 3000, -7, -8, 6000, -10, 5, 1000, -9, 1000, 5]) == false
    @test pairs_sum_to_zero([3, -70, 5, -9, 10, -7, 99, 6000, -10, -12, 5, -9, -10, -9]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -4, -6, -1, 3, 5, 3, 5, -4]) == true
    @test pairs_sum_to_zero([11, 90, -11, 3, 4999, 5000, -3, 2, -1, 2]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1000, -1, -1]) == true
    @test pairs_sum_to_zero([-10, 3, -70, 6, -5000, -7, -8, 6000, -10, -11, -12, -8, 3]) == false
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 5, 1, 1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, 8, -1, 80, -1, -2, -1, -1, 4999]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, -1, 0, 0]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 4, 3, -3, 2, -1, 3, 5, 3, 5, 3]) == true
    @test pairs_sum_to_zero([0, 2, 3, 2, -70, 10, 6, -5000, -7, 6000, -10, -11, -12, 5, -8]) == true
    @test pairs_sum_to_zero([1, 3, -70, 5, -9, 10, -7, -8, 6000, -10, -12, 5, -9, 10, -10]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, 0, 0, 100, 0, 0, 0, -1, 0, -1, 1, 0, 0]) == true
    @test pairs_sum_to_zero([11, 3, 5000, 2, -1, 2]) == false
    @test pairs_sum_to_zero([5, -5, -3, -12, -1, 50, 3, 5, -3, 5]) == true
    @test pairs_sum_to_zero([1, 3, -70, 90, -9, 10, -7, -8, 6000, -10, -12, 5, 1001, -9, -10, 1000]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -8, -7, -7, -4, -3, -2, -1, -1]) == true
    @test pairs_sum_to_zero([9000, 1, 2, 3, -70, 5, 10, -7, -8, 6000, -10, -11, -12, 5, -70]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 4, -9, 9, -6000, 6000, -10, -12, 5, -9]) == true
    @test pairs_sum_to_zero([3, 9, 5, -5, 3, -3, 2, -1, -10000]) == true
    @test pairs_sum_to_zero([0, 1, 0, 0, 10000, 100, 0, 0, 0, -1, 0, -1, -1]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, 3, -3, -3, 1, -4, -2]) == true
    @test pairs_sum_to_zero([1001, -1000, 2000, -2000, 81, -3000, -4000, 5000, -5000, 6000, -6000, -4000, -7000, -9000, 8000, -8000, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, -12, -9, -100, -2000, 6000, 2000, -4, 2000, 5, -9, -9, 5]) == true
    @test pairs_sum_to_zero([10, -2, 5, 4, -5, 3, -3, 4000, 1, 9, 10, 5]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, 99, -3000, 5000, -5000, 6000, -6000, -4000, -4, 8000, -8000, 9000, -9000, 10000, -10000, -1000, -1000]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, -3, 1, -4, -2, 10, -3, 5]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, 0, 100, 0, 0, 0, -1, 0, 0]) == true
    @test pairs_sum_to_zero([1, 2, 3, 2, -70, 5, 6, -5000, -7, 6000, -10, -11, -12, 5, -8, -12]) == false
    @test pairs_sum_to_zero([5, 3, -9, -3, -12, -1, 1, 3, 5, 4, -5]) == true
    @test pairs_sum_to_zero([10, -2, 5, 3, -2, 10, 3, 5]) == false
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, -1, 0, -1, -1, -1, 0, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 3000, 0, 2001, 1, 1, 1, 1, -1, -1, -1, -1, -1, 2, -1, 2]) == true
    @test pairs_sum_to_zero([10, -2, 5, 4, -5, 3, 11, -3, 4000, 30, 10, 5]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, 0, 0, 100, 1, 0, -1, 0, -2, 1, 0, 0, 7000]) == true
    @test pairs_sum_to_zero([10, 5, -5, -6000, 3, -3, 2, -1]) == true
    @test pairs_sum_to_zero([10, -2, 5, -5, 3, -3, -3, 1, 2000, -2, -2, -2, -5]) == true
    @test pairs_sum_to_zero([3, 10, 5, -70, 1, 10, 3, -3, -12, -6, -1, 3, 5, 3, 3]) == true
    @test pairs_sum_to_zero([3, 5, -5, 3, -3, 2, 7000, -1, 3, -5000, 6]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 1, 2, 1, 1, -1, -1, -1, 0, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([11, 3, 5000, -3, 2, -3000, -1, 2, -2]) == true
    @test pairs_sum_to_zero([3, -6000, 5, -5, 3, -3, 3, 2, -1, 3]) == true
    @test pairs_sum_to_zero([-1000, 2000, -2000, 3000, -3000, -4000, 5000, -5000, 6000, -6000, -7000, 8000, -8000, 9000, -9000, 6, -10000]) == true
    @test pairs_sum_to_zero([-3, 10, 5, -5, -3, -6, -1, 3, 5, -5, -1, -5]) == true
    @test pairs_sum_to_zero([50, 70, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10, 10, 50]) == true
    @test pairs_sum_to_zero([0, 1, 6999, 0, 0, 0, 100, 0, 0, -1, 0, -1, 0, 1]) == true
    @test pairs_sum_to_zero([3, -70, -9, 10, -7, -8, 6000, -10, -12, 5, -9, -10, -6000, -6000, -6000]) == true
    @test pairs_sum_to_zero([10, 5, -5, 3, -3, -3, -2, -2]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4999, -70, 5, 80, 6, -7, -8, 6000, -10, -12, 5000, 5, 5]) == false
    @test pairs_sum_to_zero([10, -2, 5, -5, 3, -1, -3, -2, -2, -2]) == true
    @test pairs_sum_to_zero([4, 1, -1, 1, 1, 1, 10000, -5, 2, 1, 1, -1, 80, 50, -1, -1, -1, -1, 80, 1, 80]) == true
    @test pairs_sum_to_zero([9, -5, 3, -3, -6, -1, 3, 5, 3, -5, -12]) == true
    @test pairs_sum_to_zero([1, 3, 4, 5, 6, 7, 8, 9, 10, -70, -9, -8, -7, -6, -5, -4, -2, -1, -5]) == true
    @test pairs_sum_to_zero([-3, 10, 5, 10000, -5, -3, -6, -1, 3, 5, -1, -5]) == true
    @test pairs_sum_to_zero([1, 3, -70, 5, 6, -7, -8, -9, -10, -11, -12, 5]) == false
    @test pairs_sum_to_zero([1, 3, -70, 6, -9, 10, -7, -8, 6000, -10, -12, 5, 1000, -9, -10, 1001, -9, 5]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 1, 2, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1, -1]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, -1, 0, 0, 0]) == true
    @test pairs_sum_to_zero([1, 3000, 0, 2001, 1, 1, 1, 1, -1, -1, 2, -1, -1, -1, 2, -1, 2, 2]) == true
    @test pairs_sum_to_zero([1, 2, 3, 3, -70, 5, 6, -5000, -7, -10, -11, -12, 5, -8, -12]) == false
    @test pairs_sum_to_zero([0, 1, 7000, 0, 0, 0, 0, 100, 1, 0, -11, 0, -2, 1, 0, 0, 7000]) == true
    @test pairs_sum_to_zero([0, 7000, 0, 0, 0, 100, 0, 0, 0, -1, 0, -1, 0, 1]) == true
    @test pairs_sum_to_zero([3, 10, 4, 5, -5, 3, -3, 2, -6, -1, 2, 5, 3]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 10000, 1, 1, 1, -1, 80, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([3, 10, 5, -4, 4, 3, 2, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, -12, -9, -100, 6000, 2000, -4, 2000, 5, -9, -9]) == false
    @test pairs_sum_to_zero([1, 1, -2, 1, 1, 1, 10000, -10000, 2, 1, 1, 8, -1, 80, -1, -2, -2, -1, -1, -2, -2]) == true
    @test pairs_sum_to_zero([0, 1, -3000, 0, 0, 0, 1, 0, 0]) == true
    @test pairs_sum_to_zero([1, 1, 50, 1, 1, 2, 1, 1, -1, -1, -1, 0, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, -7, -9, -10, -11, -12, 6]) == false
    @test pairs_sum_to_zero([1, 2, 3, 5, -12, -9, -100, -2000, 6000, 2000, -4, 2000, 2001, 5, -9, -9, 5]) == true
    @test pairs_sum_to_zero([10, 4, 5, 3, -3, -12, -7, -1, 3, 5, 3]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 6, -5000, -7, -8, 6000, -10, -11, -12, -2, 6000]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 2, -3, 1, -4, -2, 10, -3]) == true
    @test pairs_sum_to_zero([10, -2, 5, -5, 3, -3, 1, -4, 1]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4999, -70, 5, 80, 6, -7, -8, 6000, -10, -12, 5000, 5, 5, 5]) == false
    @test pairs_sum_to_zero([-6000, 5, 3, 2, 2, -2000, 3]) == false
    @test pairs_sum_to_zero([1, 3, 6, -9, 11, -7, -8, 6000, -7, -12, 5, 1000, -9, -10, 1000, -9, 5, -9]) == false
    @test pairs_sum_to_zero([4000, -17, 59, 6000, 0, -6, -5]) == false
    @test pairs_sum_to_zero([9, 7, 3, -9, -3, -12, -5, -1, 3, 5, 3, -5, 5]) == true
    @test pairs_sum_to_zero([5, 10, 4, 5, -5, 3, -3, -12, -7, -1, 3, 5, 3, 5]) == true
    @test pairs_sum_to_zero([4, 5, -5, 3, -3, -12, -7, -1, -1, 7, 3, 5, 3]) == true
    @test pairs_sum_to_zero([10, -2, 5, 4, -5, 3, -3, 4000, 1, -2, 10, 1, 1]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 2, 1, 1, -1, 80, -1, -2, -2, -1, -1, -2, 1, 80]) == true
    @test pairs_sum_to_zero([10, 10, -2, -10, 5, 0, 3, -3, -11, -1, -11]) == true
    @test pairs_sum_to_zero([1, 2, 3, -1, 8, -2, -3, -4, -5, 6, 7, 8, 9, -6]) == true
    @test pairs_sum_to_zero([0, 1, 7000, -1, 0, 0, 0, 0, 0, -90, -1, 0, 0, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, -4, 50, 1, 2, 50, 2, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([5, 3, -9, -3, -12, -1, 1, 3, 5, 4, -5, -5]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, 10, -7, -8, 6000, -10, -11]) == true
    @test pairs_sum_to_zero([99, 2, 3, 2, -70, 6, -5000, -7, -8, 6000, -10, -11, -12, 5, -8, -12]) == false
    @test pairs_sum_to_zero([-70, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 3000, -5000, 6000, -6000, -4000, -7000, 8000, -8000, 9000, 2001, -9000, 10000, 81, -10000, -3000]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, -7, -8, -10, -10, -3, -11]) == true
    @test pairs_sum_to_zero([3, 10, 5, 99, -5, 90, 3, -3, 2, -1, 3, 5, 3, 5, 3, 5]) == true
    @test pairs_sum_to_zero([1000, 1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, 2000, -7000, 8000, -8000, 9000, -9000, 10000, -10000, 3000, 8000]) == true
    @test pairs_sum_to_zero([1, 2, 3, 2, -70, 5, 6, -5000, -7, 6000, -10, -12, -12, 5, -8, -12]) == false
    @test pairs_sum_to_zero([10, 4, -5, 3, -3, -12, -7, -1, 3, -11, 5, 3]) == true
    @test pairs_sum_to_zero([0, -2, 1, 0, 0, 0, 0, 1, 0]) == true
    @test pairs_sum_to_zero([7, 1, 1, 6, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([-4, -3, 2, -1, 2]) == false
    @test pairs_sum_to_zero([1, 2, 3, -12, -9, -100, -2000, 6000, -4, 2000, 5, -9, -70]) == true
    @test pairs_sum_to_zero([1, -2, -50, 1, 80, 10000, 1, 1, 1, -1, 80, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([3, 4, 10, -5, 3, 4, -3, 2, 2, 10, 3, -1, 3, -1000, 3]) == true
    @test pairs_sum_to_zero([0, 0, 1, 1, 0, 0, 1, 0, 4]) == true
    @test pairs_sum_to_zero([4, 5, -5, 3, -3, -12, -7, 4, -1, 3, 5, 3, 5]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -3, 2, 3, 3]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -9000, -1, 1]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, 3, -70, 6, -9, 10, -7, -8, 6000, -10, -12, 5, 1000, -9, -10, -9, 5]) == true
    @test pairs_sum_to_zero([-13, 0, 1, 0, 0, 0, 0, 0, 0, -1, 0, 0]) == true
    @test pairs_sum_to_zero([0, 7000, 0, 0, 0, 100, 0, 0, 0, -1, 0, -1, 1, 0, 0]) == true
    @test pairs_sum_to_zero([9000, 1, 2, 3, -70, 5, 10, -7, -8, 6000, -10, -12, -12, 5, -12]) == true
    @test pairs_sum_to_zero([3, 10, 11, -13, -5, -5, 3, -3, 2, 3, 3]) == true
    @test pairs_sum_to_zero([-8, 1, 2, 3, 3000, -71, 5, -7, -8, 6000, -10, -11, 5000]) == false
    @test pairs_sum_to_zero([2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -8, -7, -7, -4, -3, -2, -1, -1, 9]) == true
    @test pairs_sum_to_zero([10, -1, 5, -5, -3, -12, -1, 3, 5]) == true
    @test pairs_sum_to_zero([-7000, 1, 2, -11, -70, 5, -9, -13, 10, -7, -8, 6000, -10, -12, 5]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -9, -100, -7, -8, 6000, -10, 2000, 5, -9, 5, -70, 1, 1]) == false
    @test pairs_sum_to_zero([10, 5, -5, -12, -3, 2, -1, 5, 5, -3]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 6, 6, -7, -8, -10, -10, -3, -11, 6]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, -7, -8, -10, -3, -11, -13, 4]) == true
    @test pairs_sum_to_zero([4, 1, -10, 3, -70, 6, -5000, -7, -8, 6000, -10, -11, -12, -8]) == false
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, 1, -4, -2, 6, 10]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 5, 1, 1, -1, -1, -1, -1, -1, -1, -1, -7, 1]) == true
    @test pairs_sum_to_zero([11, 90, 3, 5000, 59, 2, -1, 2]) == false
    @test pairs_sum_to_zero([3, 10, -5, 3, 4, -3, 2, -1, 3, 2, 3]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -10, -9, -7, -6, -5, -4, -3, -2, -1]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, -100, 3, -3, 1, -4, -2]) == true
    @test pairs_sum_to_zero([2, 2, 3, 5, 10, -7, -8, 6000, -10, -11, -12]) == true
    @test pairs_sum_to_zero([1, 1, 6, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -4, -6, 14, -1, 3, 5, 3, 5]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -9000, -1, 1, 1]) == true
    @test pairs_sum_to_zero([0, 2, 3, 2000, 2, -70, 10, 6, -5000, -7, 6000, -10, -11, -12, 5, -8]) == true
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, -100, 3, -3, 1, -4, -2, 1]) == true
    @test pairs_sum_to_zero([-10000, 3, 90, 10, 5, -70, 10, 3, 7, -3, -12, -6, -1, 3, 5, 3, 3, -6, 5]) == true
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -6, -4, -1, 3, 5, 3, -5]) == true
    @test pairs_sum_to_zero([1, 1, 50, 59, 1, 1, 2, 1, 1, -1, -1, -1, -1, -1, -1, -2, 1]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, -1, 0, 99, 0, 0]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -9, -100, -7, -8, 6000, -10, 2000, 5, -9, 5, -5000, 1]) == false
    @test pairs_sum_to_zero([10, -5, -3, -12, -1, 5]) == true
    @test pairs_sum_to_zero([0, 1, -3000, 0, 0, 0, 1, 0, 1]) == true
    @test pairs_sum_to_zero([1, 3, -70, 5, -9, 10, -7, -8, -10, -12, 5, -9, -10]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, 6, -7, -8, 6000, -10, -11, -12, 5, 1]) == false
    @test pairs_sum_to_zero([3, -6000, -5, 3, -3, 3, 2, -1, 3, 2]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, -9, 2, 14, 7]) == false
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -4, 3, 5, 3, 5]) == true
    @test pairs_sum_to_zero([1, -2, 1, 1, 1, 10000, 2, 1, 1, 8, -1, 10000, 80, -1, -2, -2, -1, -1, -2, 1, 1]) == true
    @test pairs_sum_to_zero([10, 5, -5, -3, 2, 0, -3]) == true
    @test pairs_sum_to_zero([9000, -10, 3, -71, 6, -5000, -7, -8, 6000, -10, -11, -1, -8, 3, 1]) == true
    @test pairs_sum_to_zero([3, 10, 3, 5, -5, 3, -3, -12, -7, -1, 3, 5, 3, 5]) == true
    @test pairs_sum_to_zero([1, 2, 3, 2, -70, 5, 6, -5000, -7, 6000, -10, -5, -12, 5, -8, -12]) == true
    @test pairs_sum_to_zero([10, 5, 14, 5000, -3, -30, 2, -2, -1, 2, -3, -3]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, -12, -9, -100, 6000, 2000, -4, 2000, 5, -9, -9, -9]) == false
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, 3, -3, -3, 1, -4, -2, -3]) == true
    @test pairs_sum_to_zero([1, 2, 4, 5, 6, 7, 8, 9, 10, -10, -9, -8, -7, -6, -5, -4, -3, -2, -11, -1]) == true
    @test pairs_sum_to_zero([1, 2, 3, 2, -70, 5, 6, -5000, -7, 6000, -10, -12, 5, -8, -12]) == false
    @test pairs_sum_to_zero([4, 1, -2, 1, 1, 1, 10000, -5, 2, 1, 1, -1, -1, -1, -1, -1, -1, 80, 1]) == true
    @test pairs_sum_to_zero([10, 5, 14, 5000, -3, -30, 2, -2, -1, 2, -3, -3, 5]) == true
    @test pairs_sum_to_zero([0, 1, 7000, 0, 0, 0, 0, 100, 1, 0, -11, 0, -2, 1, 2, 0, 0, 7000]) == true
    @test pairs_sum_to_zero([1, -2, 80, 1, 1, 30, 10000, -5, 2, 1, 1, -1, 80, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([3, 10, 5, -5, 3, -4, -6, 14, -1, 3, 5, 3, 5, 5]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4999, -70, 6, 80, 6, -7, -8, 6000, -10, -12, 5000, -13, 5]) == false
    @test pairs_sum_to_zero([9, 5, -5, 3, -3, -6, 3, 5, 3, -5, 3]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -9, 10, -7, -8, 6000, -12, 5, -9, -12, -70]) == false
    @test pairs_sum_to_zero([10, -2, 5, 5, -5, -100, 3, -3, 1, -4, -2, 1, 10]) == true
    @test pairs_sum_to_zero([5, -2, 5, 5, -5, 3, -3, -3, 1, -4, -2]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -9, -7, -8, 5999, -10, 2000, 5, -9, 5, -5000, 1]) == false
    @test pairs_sum_to_zero([0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-4, 10, 5, 3, 5000, -3, -30, 2, -1, 0, -6, -3]) == true
    @test pairs_sum_to_zero([1, 3, -70, -1, -9, 10, -7, -8, 6000, -10, -12, 5, 1000, -9, -10, 1001, -9, 5]) == true
    @test pairs_sum_to_zero([1, 2, 3, -70, 5, -7, -8, 6000, -10, -11, 5, 2]) == false
    @test pairs_sum_to_zero([1, 2, 3, 4, 5]) == false
    @test pairs_sum_to_zero([-1, -2, -3, -4, -5]) == false
    @test pairs_sum_to_zero([1, 2, -2, 3, -3, 4, -4]) == true
    @test pairs_sum_to_zero([2147483647, -2147483647]) == true
    @test pairs_sum_to_zero([-1, 0, 1]) == true
    @test pairs_sum_to_zero([2147483647]) == false
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -6, -9, 3, 14]) == false
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, -1, -1, -10000, -1, -1, -3, -1]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 100, 0, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -5, -9, 3, 14, 3]) == false
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 1, 0]) == true
    @test pairs_sum_to_zero([1, 2, -5, -1, -2, -3, -4, -5, 6, 7, 8, 9, -6]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -6, -9, 3, 14, -1]) == false
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -6, -9, 3, 14, 3]) == false
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, -9, 3, 14, 3]) == false
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, 9000, -9000, 10000, -10000, 10000]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -2, -1, 0, -6, -9, 3, 14]) == false
    @test pairs_sum_to_zero([10, 90, -4, 7, -8, -4, -1, 0, -6, -9, 3, 14, -1]) == false
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 7, 7, 8, 9, 10, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -9, 3, 14]) == false
    @test pairs_sum_to_zero([1000, 6000, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, 9000, -9000, 10000, -10000, -8000]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -9, 3]) == false
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -3, 4, -4, 5, -5, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 1, 0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, 1, 2, 1, 1, 1, 1, -1, -1, -10000, -1, -1, -3]) == true
    @test pairs_sum_to_zero([-2, 0, -1, 2, -2, 3, -3, 4, -4, 5, -5, 0]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10, 10, -80]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10, 10000, 10, -80]) == true
    @test pairs_sum_to_zero([0, 0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([90, -4, 7, -8, -4, -1, 0, -6, 3, 14, -1, -1]) == false
    @test pairs_sum_to_zero([0, 0, 0, -1, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 4, -4, -1, 0, -6, -9, 3, 14, 0, 3]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -3, 4, -4, 5, 5, -5, 0]) == true
    @test pairs_sum_to_zero([3, 0, 0, 1, 0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -50, -3, -2, 4, -4, 5, 5, -5, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -6, -9, 2, 14, -1]) == false
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -5, -9, 3, 14, 3, -1]) == false
    @test pairs_sum_to_zero([1, 2, -5, -1, -2, -3, -4, 7, -5, 6, 7, 8, 9, -6]) == true
    @test pairs_sum_to_zero([1000, -1000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, 9000, -9000, 10000, -10000, -5000]) == true
    @test pairs_sum_to_zero([10, -10, 5, 3, -3, 1, -1]) == true
    @test pairs_sum_to_zero([0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -3, 4, -4, 5, -5, 0, -2]) == true
    @test pairs_sum_to_zero([0, 0, 0, 1, 0, 0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-2, 0, -1, -2, 3, -3, 4, -4, 5, -5, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 2, -2, 3000, -6, -9, 3, 14]) == true
    @test pairs_sum_to_zero([-1, 0, 1, 0, 0, -1, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([0, -1, 2, 3, -3, 4, -4, 5, -5, 0, -2]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 1000, -5, -9, 3, 14, 3]) == false
    @test pairs_sum_to_zero([11, -5, 7, 3, -4, 0, -9, 3]) == false
    @test pairs_sum_to_zero([-1, 0, 1, 0, 0, -1, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -5, -9, 3, 14, 7, -1]) == false
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, -7, -8, -9, -10, -12]) == false
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -80, -70, 80, -30, -10, 10000, 10, -80]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, 5, 6, -7, -8, -9, -10, -11, -12]) == false
    @test pairs_sum_to_zero([0, 0, 0, 0, 100, 0, 0]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 30, -90, -70, 80, -30, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([1000, 6000, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, -11, -9000, 10000, -10000, -8000]) == true
    @test pairs_sum_to_zero([1, 2, -5, -1, -2, -3, -4, -5, 6, 7, 8, 9, -6, -4]) == true
    @test pairs_sum_to_zero([0, 0, 1, 0, 0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, -1, 50, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -6, -9, 3, 14, -1, -9]) == false
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -5, -9, 14, 3000, -1]) == false
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, -90, -70, 80, -30, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -1000, 4, -10000, -4, 4, -5, 0, -2]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, 3, -3, 4, -4, 5, -5]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, -2, 3, -3, 6, -4, 5, -5]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, 7, 7, 8, 9, 10, -10, -9, -8, -7, -6, -4, -3, -2, -1]) == true
    @test pairs_sum_to_zero([-2, 0, -1, 4, -3, 4, -4, 5, -5, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 2, 1, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 1, 0, -80, 1, 0, 0, 1]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 2, 0]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, 7, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([0, 0, 1, 0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-12, -5, 7, 3, -4, 0, -9, 3]) == false
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, -9, 3, -50, 3]) == false
    @test pairs_sum_to_zero([-100, 50, -50, 70, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([1, 1, 2, 1, 1, 1, 1, -1, -1, -10000, -1, -1, -3, -3]) == true
    @test pairs_sum_to_zero([-100, 50, 5, -50, 70, -80, 90, -50, 8000, 30, -90, -70, 80, -30, 10, -80, 90]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, -9, 3, -50, 4]) == true
    @test pairs_sum_to_zero([-1, 0, 1, 0, 0, -1, 0, 0, 0, 0, -1]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -5, -9, 3, 14, 3, 0]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, -1, -1, -10000, -1, -1, -3, -1, -1]) == true
    @test pairs_sum_to_zero([1000, -1000, -2000, 3000, -3000, 4000, 5000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, -9000, 10000, -10000, 4000]) == true
    @test pairs_sum_to_zero([10, -4, 7, 3, -4, -1, 0, -9, 3]) == false
    @test pairs_sum_to_zero([1000, 6000, 6001, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, -11, -9000, 10000, -10000, -8000]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, 5, 6, -7, -8, -9, -10, -11, 9000]) == false
    @test pairs_sum_to_zero([7, 3, -4, -1, 0, -9, 3, 14]) == false
    @test pairs_sum_to_zero([90, -4, 7, -8, -4, -1, 0, -6, 3, 14, -1, -1, -8]) == false
    @test pairs_sum_to_zero([10, -5, 14, 7, 3, -4, -1, 0, -6, -9, 3, 14]) == false
    @test pairs_sum_to_zero([10, -5, 8, 3, -4, -1, 0, -6, -9, 3, -50, 3]) == false
    @test pairs_sum_to_zero([1, 2, 3, 5, 7, 7, 8, 9, 10, -9, -8, -7, -6, -4, -3, -2, -1, 8, 9, 7]) == true
    @test pairs_sum_to_zero([1000, -1000, -2000, -3000, 4000, 5000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, -9000, 10000, -10000, 4000]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 1, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 2, 1, 1]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10, 10000, 10, -80, -80]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, -9, 3, -50, 3, -4]) == false
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -81, -90, -70, 80, -30, -10, 10, -80]) == true
    @test pairs_sum_to_zero([10, -4, 7, 2, -2, 3000, -6, -9, 3, 14]) == true
    @test pairs_sum_to_zero([-1, 1, 0, 0, -1, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, 80, -3, -2, 4, -4, 5, 5, -5, 0]) == true
    @test pairs_sum_to_zero([11, 7, 3, 100, 0, -9, 3, 3]) == false
    @test pairs_sum_to_zero([1, 2, 3, 5, 7, 7, 8, 9, 10, -9, -8, -7, -6, -4, -3, -2, -1, -4, 9, 7]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, -7, -8, -9, -10, -11, -12, 5]) == false
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 7, 7, 8, 9, 10, -10, -9, -8, -7, -6, -5, -4, -2, -2, -1, -4, 1]) == true
    @test pairs_sum_to_zero([0, 6001, 0, 0, 0, 0, 0, 0, 2, 1, 1, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, -4, -1, 0, -6, -9, 2, 14, -1, 14]) == false
    @test pairs_sum_to_zero([-6000, -30, 0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 1, -80, 1, 0, 0, 1]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, 5, -8, 6, -7, -8, -9, -10, -11, -12, 6]) == false
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -5, -9, 3, 14, 3, -4]) == false
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([-1, 0, 1, 0, -1, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -1000, 4, -10000, -4, 1, 4, -5, 14, 0, -2]) == true
    @test pairs_sum_to_zero([10, -4, 7, 3, -4, -1, 0, -9, 3, 3]) == false
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -81, -90, -70, 80, -30, -10, 10, -91, -80, 80]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 100, 0, 0, 2]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -3, -5]) == true
    @test pairs_sum_to_zero([0, 100, 0, 0]) == true
    @test pairs_sum_to_zero([1, 2, -5, -1, -2, -4, -5, 6, 7, 8, 9, -6, -4]) == true
    @test pairs_sum_to_zero([10, -5, -4, -1, 0, -6, -9, 2, 14, -1, 14]) == false
    @test pairs_sum_to_zero([1, 1, 2, 1, 1, 1, 1, -1, -10000, -1, -1, -3, -3]) == true
    @test pairs_sum_to_zero([0, 0, 0, 1, 0, 100, 0, 0]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 0, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, -2000, 2, 3, 4, 5, 6, -7, -8, -9, -10, -1, -11, -12, 5]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 30, -90, -70, 80, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([-4, -10, 5, -3, 1, -1]) == true
    @test pairs_sum_to_zero([10, 90, -4, 70, -8, -4, 5, 0, -6, -9, 3, 14, 0]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, -2, 3, -12, -3, 4, -4, 5, -5, 1]) == true
    @test pairs_sum_to_zero([-1, 0, 1, 0, 0, -1, 0, 0, 0, 5000]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -81, -90, -70, 80, -30, 8, 10, -80]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0]) == true
    @test pairs_sum_to_zero([-1, 0, 0, -1, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([1, 2, -5, -1, -2, -3, -4, -5, 6, 7, 9, -6]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -50, -4, -3, -2, 4, -4, 5, 5, -5, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, 7, -9, 3, 14, 3, -1]) == false
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, 8, -1, 0, -9, -10, 3, 14, 3, -1]) == true
    @test pairs_sum_to_zero([1, 1, 2, 1, 4000, 1, 1, 1, -1, -10000, -1, 11, -3, -3]) == true
    @test pairs_sum_to_zero([10, 90, -4, 7, -8, -4, -1, 0, -6, -9, 3, 14, -1, -1, -4]) == false
    @test pairs_sum_to_zero([1000, 6000, -1000, 2000, -2000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, -11, -9000, 10000, -10000, -8000]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, -9, 3, 14, -30, 3]) == false
    @test pairs_sum_to_zero([-1, 1, 0, 1, -1, 0, 0, 0, 0, 1]) == true
    @test pairs_sum_to_zero([1, 2, 80, 3, 5, 5, -8, 6, -7, -9, -10, -11, -12, 6]) == false
    @test pairs_sum_to_zero([-11, 10, 3, -3, 1, -1]) == true
    @test pairs_sum_to_zero([1, -1000, 2, 80, 3, 5, 5, -8, 6, -7, -9, -10, -11, -12, 6]) == false
    @test pairs_sum_to_zero([7, 3, -4, -1, 0, -9, 3, 14, 7]) == false
    @test pairs_sum_to_zero([100, -5, -1, 3, -4, -1, 0, -6, -9, 3, 14, 3]) == false
    @test pairs_sum_to_zero([0, 0, 0, 0, -1, 0, 1, 0, 0, 0, 2, 0]) == true
    @test pairs_sum_to_zero([1000, -1000, -2000, 3000, -3000, 4000, 5000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -3000, -8000, -9000, 10000, -10000, 4000, -3000]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -2000, 80, -30, 10000, 2, 10, -80, -80]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 4, 80, -3, -2, 4, -4, 5, 5, -5, 3, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -6, -9, 3, -9, 14]) == false
    @test pairs_sum_to_zero([10, -5, 7, 4, -4, -1, 0, -9, 3]) == true
    @test pairs_sum_to_zero([-1, 0, -6000, 1, 0, -1, 0, 1, 0, 0, 0, 1, 0]) == true
    @test pairs_sum_to_zero([-100, 50, -50, 70, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10, -100, 10, -80, 90]) == true
    @test pairs_sum_to_zero([0, 0, 0, 1, 0, 100, 0, 14, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, 7, -9, 3, 14, 3, -1, -1]) == false
    @test pairs_sum_to_zero([8, 0, 1, -1, 2, -2, 3, -3, 6, -4, 5, -5]) == true
    @test pairs_sum_to_zero([3, 0, -7000, 1, 0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -50, -4, -3, -2, 4, 10000, 5, 5, -5, 0]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, -9, 3, -50, 3, -1]) == false
    @test pairs_sum_to_zero([1000, 2999, -1000, -2000, 3000, -3000, 4000, 5000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, -9000, 10000, -10000, 4000]) == true
    @test pairs_sum_to_zero([1000, 6000, -1000, 2000, -2000, 3000, -3000, 4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, 9000, -9000, 10000, -10000, -8000]) == true
    @test pairs_sum_to_zero([1, 1, 2, -5, -1, -2, -4, -5, 6, 7, 8, 9, -6, -4]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, -1, 0, -6, -9, 3, -50, 4]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, 7, -9000, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([-2, 0, -1, -2, 3, -3, 4, -4, 5, -5, 0, 0]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 7, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([-2, 0, -1, -2, 3, -3, 4, -4, 5, 0, 0]) == true
    @test pairs_sum_to_zero([1, 1, 2, 1, 4000, 1, 1, 1, -1, -10000, -1, 11, -3, -3, 1]) == true
    @test pairs_sum_to_zero([-1, 0, 1, 0, 0, -1, 0, 0, 0, 0, -1, 0]) == true
    @test pairs_sum_to_zero([0, 11, 0, 0, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, 14, -5, -9, 3, 14, 3, -1, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, -4, -1, 0, -5, -9, 3, 14, 3, 0]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, -9, 3, -50, 3, 0]) == true
    @test pairs_sum_to_zero([100, -6000, -30, 0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, -90, -70, 71, 80, -30, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([1, 1, 2, -1, -2, -4, -5, 6, 7, 8, 9, -6, -4, 8, 8]) == true
    @test pairs_sum_to_zero([0, 1, -1, -3, 3, -3, 4, -4, 5, -5]) == true
    @test pairs_sum_to_zero([-1, 0, 0, 0, -1, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10]) == true
    @test pairs_sum_to_zero([0, 0, 0, 30, 0, 100, 0, 0]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -3, -5, 3]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 30, -90, -70, 80, -30, 10, -80, 90]) == true
    @test pairs_sum_to_zero([1000, -3001, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, -7, -7000, 8000, -8000, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([10, 90, -4, 70, -8, -4, 5, 0, -6, -9, 3, 7000, 14, 0]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, -1, -5000, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, -9, -3, 3, -50, 3, -1, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 4, -4, -1, 0, 3]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, -5, -9, 3, 14, 3]) == false
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -6, -9, 3, 14, -1, -9, -9]) == false
    @test pairs_sum_to_zero([-1, 0, 0, -1, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([8, 0, 1, -1, 2, -2, 3, -3, 5, -4, 5, -5]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -7, -80, 90, -50, 100, -90, -70, 71, 80, -30, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([90, -4, 7, -8, -4, -1, 0, 2, -6, 3, 14, -1, -1]) == false
    @test pairs_sum_to_zero([1000, 6000, 6001, -999, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, -11, -9000, 10000, -10000, -8000]) == true
    @test pairs_sum_to_zero([10, -5, -4, -1, 0, -6, -9, 2, 14, -1, 14, -6, -6, 0]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, 30, -50, 100, -90, -70, 80, -30, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([-5, 7, 3, -4, -1, 0, -5, -9, 3, 3, -4, 14]) == false
    @test pairs_sum_to_zero([0, 0, 100, 0, 0, -7, 0]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -3, 4, -4, 5, 4, -6, 0]) == true
    @test pairs_sum_to_zero([1, 1, 1, -9000, 1, 1, 1, 1, -1, -1, -1, -1, 0, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -81, -90, -70, 80, -30, -10, -7, 10, -80]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, -1, 0, -91, -9, 3, -50, 4]) == true
    @test pairs_sum_to_zero([-1, 0, 1, 0, 0, -1, 0, 0, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 2]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -80, -70, 80, -30, 10000, 10, -80]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, -90, -70, 71, 80, -30, -10, 10, 90]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, -2, 3, -3, 6, -4, 5, -5, 5]) == true
    @test pairs_sum_to_zero([1, 1, 1, -9000, 1, 1, 1, 1, -1, -1, -1, -1, 0, -1, -1, -1, 1, 1]) == true
    @test pairs_sum_to_zero([10, 90, -4, 7, 2, -8, -4, -1, 0, -6, -9, 3, 14, -1, -1, -4]) == false
    @test pairs_sum_to_zero([-1, 2, -2, 3, -1000, 4, -10000, -4, 1, 4, -5, 14, 0, -2]) == true
    @test pairs_sum_to_zero([10, -5, 3, -10, -1, 0, -6, -9, 3, -50, 3]) == true
    @test pairs_sum_to_zero([10, -5, -4, -1, 0, -6, -9, 2, 14, -1, 14, -6, -6, 0, 14]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, 6, -8, -9, -10, -11, -12]) == false
    @test pairs_sum_to_zero([0, 0, -30, 1, 0, 100, 0, 14, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 30, 0, 100, 0, 0, 100]) == true
    @test pairs_sum_to_zero([1, 1, 1, 2, 1, 1, 1, 1, 7, -9000, -1, -1, -1, -1, -1, 3]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, -4000, 5000, -5000, 6000, -6000, -7000, 8000, -8000, 9000, -9000, 10000, -10000, -5000, -2000]) == true
    @test pairs_sum_to_zero([-100, 50, 5, -50, 70, -80, 90, -50, 8000, 30, -90, 51, -70, 80, -30, 10, -80, 90]) == true
    @test pairs_sum_to_zero([0, 0, 0, 30, 0, 4000, 7000, 0, 0]) == true
    @test pairs_sum_to_zero([1, 1, -9000, 1, 1, 1, 1, -1, -1, -1, -1, 0, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 6, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([11, -5, 7, 3, 0, -9, 3]) == false
    @test pairs_sum_to_zero([10, -5, 4, -4, -1, 0, -9, 3]) == true
    @test pairs_sum_to_zero([-1, 2, -2, 3, -1000, 4, -10000, -4, 1, 4, -2, -5, 14, 0, -2, 3]) == true
    @test pairs_sum_to_zero([1, 1, 1, -1, 1, 1, 1, -1, -5000, -1, -1, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([-3, -10, 5, -3, 1, -1, -1]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, -2, 3, -3, 4, 5, -3, -5, 3]) == true
    @test pairs_sum_to_zero([11, -5, 12, 7, 3, -4, 0, -9, 3]) == false
    @test pairs_sum_to_zero([-100, 50, 30, 5, -50, 70, -80, 90, -50, 12, 8000, 30, -90, 51, -70, 80, -30, 7, 10, -80, 90]) == true
    @test pairs_sum_to_zero([10, -10, 5, -5, 3, -3, 1, -1, -1]) == true
    @test pairs_sum_to_zero([-100, 50, -50, 51, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10]) == true
    @test pairs_sum_to_zero([10, -5, 1, 4, -4, -1, -81, 0, -9, 3]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, 0, -6, -9, 3, -50, 3, -4]) == false
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, -1, 0, -6, -9, 3, -50, 4, 3]) == true
    @test pairs_sum_to_zero([10, -5, -4, -1, 0, -6, -9, 2, 2, 14, -1, 14, -6, -6, 0]) == true
    @test pairs_sum_to_zero([0, -1, 2, -3, 3, -3, 4, -4, 5, 5, -5, 0]) == true
    @test pairs_sum_to_zero([10, -5, 3, -5, -1, -1, 0, -6, -9, 3, -50, 4, 3]) == false
    @test pairs_sum_to_zero([0, -1, 2, -2, 4, 80, -3, -2, -81, -4, 5, 4, 5, -5, 3, 0]) == true
    @test pairs_sum_to_zero([-100, -79, 50, 70, -80, 90, -50, 100, 30, -91, -70, 80, -30, -10, 10000, 10, -80]) == true
    @test pairs_sum_to_zero([1000, -1000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, -10000, 6000, -6000, 7000, -7000, 8000, -8000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([1000, -3001, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, -7, -7000, 8000, -8001, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([7, 3, -4, -1, 0, -9, 3]) == false
    @test pairs_sum_to_zero([0, 0, 0, -4, 0, -9000, 1, 0, 0, 0, 1, 0]) == true
    @test pairs_sum_to_zero([2, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([1, 3, 5, 7, 7, 8, 9, 10, -9, -8, -7, -6, -4, -3, -2, -1, -4, 9, 7]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, -9, -3, 3, -50, 3, -1, -2000, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 1, 0, 100, 3000, 0, 14, 0]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -50, -3, -2, -4, 5, 5, -5, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, -1, 0, 1, -4000, 0, 0, 0, 2, 0]) == true
    @test pairs_sum_to_zero([0, 0, 51, 0, 8000, 0, 100, 0, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 2, 3000, -6, -9, 3, 14]) == false
    @test pairs_sum_to_zero([10, 5, -5, 3, -3, 1, -1]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, 14, -5, -9, 3, 14, -1, 0]) == true
    @test pairs_sum_to_zero([-6, 10, -5, 3, -4, -1, 0, -6, -9, 3, -50, 3, -1]) == false
    @test pairs_sum_to_zero([0, 0, 0, 1, 0, -50, 100, 0, 0]) == true
    @test pairs_sum_to_zero([1000, 5, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, -11, -9000, 10000, -10000, -8000]) == true
    @test pairs_sum_to_zero([1, 6001, 1, 2, 1, 1, 1, 1, 7, -9000, -1, -10000, -1, -1, -1, -1, 3]) == true
    @test pairs_sum_to_zero([0, 0, -30, 14, 1, 0, 100, 0, 14, 0]) == true
    @test pairs_sum_to_zero([-100, 50, -6, -80, 90, -50, 100, 30, -80, -70, 80, -30, -10, 10000, 10, -80, 90]) == true
    @test pairs_sum_to_zero([1, 3, 3, 4, 5, 6, -7, -8, -9, -10, -12, -12]) == false
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, 0, -5, -9, 3, 14, 3, -1]) == false
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 1, 0, 0, 5, 0, 2, 0, 0, 0]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, -3, -91, 3, -3, 6, -4, 5, -5]) == true
    @test pairs_sum_to_zero([10, -5, -4, -1, 0, -6, -9, 2, 14, -1, 14, -1]) == false
    @test pairs_sum_to_zero([10, 90, -4, 7, -8, -4, -1, 0, -6, -9, 3, 2, 14, -1]) == false
    @test pairs_sum_to_zero([0, 1, -5, -1, 2, -2, 14, 3, -3, 4, -4, 5, -5]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -9, 3, 14]) == false
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, 3000, -6000, 7000, -7000, 8000, -8000, 9000, -9000, 10000, -10000, 10000]) == true
    @test pairs_sum_to_zero([10, -5, 7, 4, -4, -1, 0, 3, 10]) == true
    @test pairs_sum_to_zero([-3, 11, -5, 12, 7, 3, -4, 0, -9, 3]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 0, -81, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, -9, 1, 1, 1, 7, -9000, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([10, -5, -4, -1, 0, -6, -9, 3, -50, 3, 0]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, 30, -90, -70, 80, 10, -80, 90, -70]) == true
    @test pairs_sum_to_zero([0, 0, -4, 0, -9000, 1, 0, 0, 0, 1, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 4, -4, -1, -3, 3]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -9, 3, 0]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, -4000, -5000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, 9000, -9000, -10000, -5000, -6000, -6000]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, 51, 3, 14, -30, 3, -4]) == false
    @test pairs_sum_to_zero([-100, 50, -50, 70, -80, 90, -50, 8000, 30, -90, -70, 80, -30, 10, -80, 90, 70]) == true
    @test pairs_sum_to_zero([3, 0, 0, 1, 0, 100, 0, 0, 0, 1]) == true
    @test pairs_sum_to_zero([0, -1, 2, -2, 3, -3, 4, -4, 5, -5, 0, -2, 0]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -1999, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([0, 0, 0, 1, 5, 0, -50, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-5000, 0, -1, 2, -2, 3, -3, 4, -4, 5, 5, -5, 0]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, 51, 3, 14, -30, -4, -6]) == false
    @test pairs_sum_to_zero([10, -5, 3, -4, 6001, 0, -6, -9, 3, 14, -30, 3, -6]) == false
    @test pairs_sum_to_zero([10, -5, 3, -4, -1, 0, -6, -9, -90, -50, 4]) == true
    @test pairs_sum_to_zero([-1, 0, 1, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0]) == true
    @test pairs_sum_to_zero([1000, 6000, -1000, 2000, -2000, -8000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, -7000, 8000, -8000, 9000, -9000, 10000, -10000, -8000]) == true
    @test pairs_sum_to_zero([0, -9, 0, 30, 0, 100, 0, 0, 100]) == true
    @test pairs_sum_to_zero([1000, 6000, -1000, 2000, -2000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, -11, -9000, 10000, 80, -10000, -8000]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([3, 0, 0, 1, 0, 100, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 1, 0]) == true
    @test pairs_sum_to_zero([11, -1, 0, 0, -1, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([10, 90, -4, 7, -8, -4, -1, 0, -6, -9, 3, 2, 14, -1, -4]) == false
    @test pairs_sum_to_zero([10, -5, 4, -4, -1, 0, -9]) == true
    @test pairs_sum_to_zero([0, 0, 100, 0, 101, 0, 0, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 4, 3, 9, -1, 0, 3]) == false
    @test pairs_sum_to_zero([-100, 50, 70, -80, 9000, -50, 100, 30, -82, -90, -70, 80, -30, -10, -7, -7, 10, -80, -70]) == true
    @test pairs_sum_to_zero([1, 2, -5, -1, -2, -3, -4, 7, 8, -5, 6, 7, 8, 9, -6]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 30, -90, -70, 7, -10, -80, 90]) == true
    @test pairs_sum_to_zero([0, 0, 1, 0, 100, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-5, 10, -5, 3, -10, -1, 0, -6, -9, 3, -50, 3, -5]) == true
    @test pairs_sum_to_zero([1, 1, 2, 1, 4000, 3, 1, 1, 1, -1, -10000, -1, 11, -3, -3]) == true
    @test pairs_sum_to_zero([0, -9000, -1, 2, -3, 3, -3, 4, -4, 5, 5, -5, 0]) == true
    @test pairs_sum_to_zero([1, 5, 1, 2, 1, 1, 1, 1, -1, -1, -1, 0, -81, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, 7, 80, -9000, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([1, 2, -5, -1, -2, -3, -4, -5, 6, 7, 8, 9, -6, 2, 6]) == true
    @test pairs_sum_to_zero([1, 6001, -3000, -30, 1, 1, 1, 1, 7, -9000, -1, -10000, -1, -1, -1, -1, 3]) == true
    @test pairs_sum_to_zero([1, 3, 5, 7, 7, 8, 9, 10, -9, -8, -7, -6, -4, -3, -2, -1, 9000, 9, 7, -1]) == true
    @test pairs_sum_to_zero([-3001, 2, -2, 3, -1000, 4, -10000, -4, 1, 4, -5, 14, 0, -2]) == true
    @test pairs_sum_to_zero([0, 1, -5, -1, 2, -2, 14, 3, -3, 4, -5, 5, -5]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 30, -90, -70, 80, -30, 10, -80, 90, 30]) == true
    @test pairs_sum_to_zero([3, 0, 0, 1, 0, 100, 0, 0, 0, 0, 1]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 30, -90, 7, -10, -80, 90]) == true
    @test pairs_sum_to_zero([1000, 5, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -6000, 7000, -7000, 8000, -8000, 30, -11, -9000, 10000, -10000, -8000]) == true
    @test pairs_sum_to_zero([1, 0, 0, 0, 1, 0, 100, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-3, 11, -5, 12, 7, 3, -4, 0, -9, 3, 11, 3]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -5, -9, 3, 14, 3, -4, 3]) == false
    @test pairs_sum_to_zero([1, 6001, -3000, -30, 1, 1, 1, 7, -9000, -1, -10000, -1, -1, -1, -1, 3]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, -4000, 5000, -5000, 6000, -6000, -7000, 8000, -8001, 9000, -9000, 10000, -10000, -5000, -2000, -4000]) == true
    @test pairs_sum_to_zero([1000, -3001, -1000, 2000, -2000, 3000, -3000, 4000, -4000, 5000, -5000, 6000, -9, -6000, -7, -7000, 8000, -8001, 9000, -9000, 10000, -10000]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, 30, -90, 80, -30, -10, -80, 90]) == true
    @test pairs_sum_to_zero([1, 1, 2, 1, 1, -8001, 1, 1, -1, -1, -10000, -1, -1, -3]) == true
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, -4000, 5000, -5000, 6000, -6000, -7000, 8000, -8001, 9000, -9000, 10000, -10000, -5000, -2000, -4000, 2000]) == true
    @test pairs_sum_to_zero([1, 2, 3, 5, 5, 6, -7, -8, -9, -10, 9000, -7]) == false
    @test pairs_sum_to_zero([10, -5, -4, -1, 0, -6, -9, 2, 2999, 14, -1, 14, -6, -6, 0]) == true
    @test pairs_sum_to_zero([10, -5, 7, 1000, -4, -1, 0, -5, -9, 3, 14, 3, 3]) == false
    @test pairs_sum_to_zero([-1, 0, 1, 0, -1, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([3, 0, 0, 1, 0, 100, 0, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([-5, -4, -1, 0, -6, -9, 2, 14, 8000, 14, -6, -6, 0, -6]) == true
    @test pairs_sum_to_zero([1, 1, -79, 1, -9000, 1, 1, 1, 1, -1, -1, -1, -1, 0, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 30, -90, -70, 7, -10, -80, 90, -80]) == true
    @test pairs_sum_to_zero([7, -8, -4, -1, 0, -6, 3, 14, 2, -1, -8]) == false
    @test pairs_sum_to_zero([0, -3001, 0, 100, 0, 101, 0, 0, 0]) == true
    @test pairs_sum_to_zero([7, 3, -4, -2, 0, -9, 3, 14, 7]) == false
    @test pairs_sum_to_zero([-100, 50, 5, -50, 70, -80, 90, -50, 8000, 30, -90, -70, 80, 101, 10, -80, 90]) == true
    @test pairs_sum_to_zero([1, 2, 3, 4, 5, -6000, -7, -8, -9, -10, -11, -12]) == false
    @test pairs_sum_to_zero([1, 6001, 1, 2, 1, 1, 1, 1, 7, -9000, -1, -10000, -1, -1, -1, -1, 3, -10000]) == true
    @test pairs_sum_to_zero([-100, -81, 50, -50, 51, -80, 90, -50, 100, 30, -90, -70, 80, -30, -10]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 2, -1, -1]) == true
    @test pairs_sum_to_zero([1, 3, 3, 4, 5, 6, -7, -8, -9, -10, -12, -12, 5]) == false
    @test pairs_sum_to_zero([1000, -1000, 2000, -2000, 3000, -3000, -4000, 5000, -5000, 6000, -6000, 8001, -6001, 7000, -7000, 8000, -8000, 9000, -9000, 11, -10000, -5000]) == true
    @test pairs_sum_to_zero([10, -5, 7, 3, -4, -1, 0, -5, -9, 3, 14, 3, -1, 10]) == false
    @test pairs_sum_to_zero([-12, -5, 7, 3, -4, -9, 3]) == false
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, 100, -90, -70, 71, -91, -30, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([1, 1, -82, 1, 1, 1, 1, -1, -5000, -1, -1, -1, -1, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -3, -5, -2]) == true
    @test pairs_sum_to_zero([10, -5, -80, 3, -4, -1, 0, -5, -9, 3, 14, 3, -4]) == false
    @test pairs_sum_to_zero([3, -4, 0, 0, -9, 3]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, -1, 70, -1, -1, -1, -1, -1, -1, 1, -1]) == true
    @test pairs_sum_to_zero([0, 0, 0, 0, 4000, 7000, 0, 0]) == true
    @test pairs_sum_to_zero([7, 3, -4, -1, 7, 0, 14]) == false
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -50, -7, -90, -70, 80, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([0, 0, 0, 1, 0, -2, 3000, 0, 14, 0]) == true
    @test pairs_sum_to_zero([0, 0, 1, 0, 100, 0, 0, 0, 0, 0]) == true
    @test pairs_sum_to_zero([1, 1, 1, 1, 1, 1, 1, -1, -1, -1, -1, 0, -81, -1, -1, -1, 1]) == true
    @test pairs_sum_to_zero([10, -5, -4, -1, 0, -6, -9, 3, -50, 3, 0, 3, 3]) == true
    @test pairs_sum_to_zero([10, 90, -4, 70, -8, -4, 5, 0, -6, -9, 3, 7000, 14, 0, 0]) == true
    @test pairs_sum_to_zero([-2, -2, 0, -1, 2, -2, 3, -3, 4, -4, 5, -5, -2, 0]) == true
    @test pairs_sum_to_zero([10, -5, 3, -4, 0, 51, 3, -30, -4, -30, -6]) == false
    @test pairs_sum_to_zero([10, -5, -4, -1, 0, -6, -9, 2, 2, 14, -1, -6, -6, 0]) == true
    @test pairs_sum_to_zero([1, 1, 2, 1, 1, 1, 1, -1, -12, -1, -10000, -1, -1, -3, -3]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 90, -80, -50, 30, -90, -70, 80, -30, 10, -80, 90]) == true
    @test pairs_sum_to_zero([1, 5, 1, 2, 1, 1, 1, 1, -1, -1, -1, 0, -81, -1, -1, -1, -1]) == true
    @test pairs_sum_to_zero([1, 1, 2, -5, -1, -2, -4, -5, 6, 7, 8, 9, -6, -4, -1]) == true
    @test pairs_sum_to_zero([8, 0, 1, -1, 2, -2, 3, -3, 5, -4, 5, -5, 1]) == true
    @test pairs_sum_to_zero([-100, 50, 70, -80, 91, 30, -50, 100, -90, -70, 80, -30, -10, 10, -80, 90]) == true
    @test pairs_sum_to_zero([10, 90, -4, 7, -8, -4, -1, 0, -6, -9, 3, 2, 14, -1, -4, -4]) == false
end
