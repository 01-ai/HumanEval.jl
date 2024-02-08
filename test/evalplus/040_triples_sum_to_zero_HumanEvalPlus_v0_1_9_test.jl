@testitem "040_triples_sum_to_zero_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "040_triples_sum_to_zero.jl"))
    @test triples_sum_to_zero([0, 0, 0]) == true
    @test triples_sum_to_zero([1, 1, -2, -2]) == true
    @test triples_sum_to_zero([2, 3, -5, 0, 1, -1]) == true
    @test triples_sum_to_zero([5, -5, 10, 0, -10]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6]) == true
    @test triples_sum_to_zero([1, 1, 1, -2, -2, -2]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, -1]) == true
    @test triples_sum_to_zero([1, -1, 0, 0, 2, -2]) == true
    @test triples_sum_to_zero([10, -20, 30, -40, 50, -60]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, -9]) == true
    @test triples_sum_to_zero([0, 1, 0, 0]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, -1]) == true
    @test triples_sum_to_zero([-2, -2]) == false
    @test triples_sum_to_zero([5, -5, -60, 0, -10]) == true
    @test triples_sum_to_zero([-2, -1]) == false
    @test triples_sum_to_zero([2, 3, -5, 0, 4, 1, -1]) == true
    @test triples_sum_to_zero([1, -2, -4]) == false
    @test triples_sum_to_zero([-2]) == false
    @test triples_sum_to_zero([10, -20, 30, -40, 50, 30, -60]) == true
    @test triples_sum_to_zero([1, 3, -5, 1, -1, 2]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, -6, -1]) == true
    @test triples_sum_to_zero([1, -2, -2, 1]) == true
    @test triples_sum_to_zero([2, 3, -10, -5, 0, 4, 1, -1]) == true
    @test triples_sum_to_zero([-1, -2, 1]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 2, 4]) == false
    @test triples_sum_to_zero([1, 1, 2, 3, 4, 5, -9, 1]) == true
    @test triples_sum_to_zero([1, 1, 2, 3, 4, 5, -9, 1, 1]) == true
    @test triples_sum_to_zero([1, 2, 3, 7, -1]) == false
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, -1, 2]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 4]) == false
    @test triples_sum_to_zero([5]) == false
    @test triples_sum_to_zero([2, 3, 7, 1]) == false
    @test triples_sum_to_zero([1, 1, 2, 3, 4, 5, -9, 1, 1, 1]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 4, 7, 0, -1, 2]) == true
    @test triples_sum_to_zero([1, 2, 4, 5, -9, 3]) == true
    @test triples_sum_to_zero([2, 3, -10, -5, 1, 4, 1, -1]) == true
    @test triples_sum_to_zero([7, -2, -4]) == false
    @test triples_sum_to_zero([-2, -10, 0, -2]) == false
    @test triples_sum_to_zero([5, 5, 5]) == false
    @test triples_sum_to_zero([1, 1, 3, 4, 5, -9, 1, 1]) == true
    @test triples_sum_to_zero([1, 1, -2, 0, -2]) == true
    @test triples_sum_to_zero([10, -20, 30, -20, 6, -40, 50, -60, -60, 10]) == true
    @test triples_sum_to_zero([-2, 30, 0, -2]) == false
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, -6, -1, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, -6, -1, 7, 1]) == true
    @test triples_sum_to_zero([1, 1, 2, 3, 4, 4, -9, 1]) == false
    @test triples_sum_to_zero([2, 3, -10, -5, 1, 4, 1, -1, 3]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 2, 4, 5, 5]) == false
    @test triples_sum_to_zero([1, 1, -1, 1, -2]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, 6, -1, 2]) == true
    @test triples_sum_to_zero([10, -20, 30, -20, 6, -40, 50, -60, 10, -40]) == true
    @test triples_sum_to_zero([1, 1, -2, -3]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -9, 4, 2]) == false
    @test triples_sum_to_zero([1, 1, 1, -2, -2, -2, 1]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, -6, -1, 7, 1, -1, -6]) == true
    @test triples_sum_to_zero([-2, 1, 2, 3, 4, 5, -9, 1]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 0, -1]) == true
    @test triples_sum_to_zero([-1, -2, 1, 1]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 6, 6]) == true
    @test triples_sum_to_zero([2, 3, 7, 7, 1]) == false
    @test triples_sum_to_zero([10, -20, 30, -40, 50, -60, 30]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, -1, 2, 1]) == true
    @test triples_sum_to_zero([2, 3, -6, 0, 0]) == false
    @test triples_sum_to_zero([1, 2, -3, 2, 6, 6]) == true
    @test triples_sum_to_zero([1, 2, 3, 7, -1, 3]) == false
    @test triples_sum_to_zero([1, 1, -3]) == false
    @test triples_sum_to_zero([10, -20, 30, -40, 50, 30, -60, 30]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, -6, 2, -1, 7, 1, -1, -6]) == true
    @test triples_sum_to_zero([2, 3, -5, 0, 4, 0, 1, 2, -1]) == true
    @test triples_sum_to_zero([1, 4, 2, 3, -1, 4, 5, 2, 4]) == false
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 5, -1]) == true
    @test triples_sum_to_zero([1, 6, 3, -6, 7, 0, -6, -1, 7, 1, -1, -6]) == true
    @test triples_sum_to_zero([10, -20, 30, -39, 31, 50, 30, -60]) == true
    @test triples_sum_to_zero([2, 3, -5, 0, 3, 0, 1, 2, -1]) == true
    @test triples_sum_to_zero([1, 2, 31, -6, 7, 0, -1, 2, 1, 3]) == true
    @test triples_sum_to_zero([0, 2, 3, -6, -10, 0, -1, 2, 1, 1]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, -6, -1, 7, -6]) == true
    @test triples_sum_to_zero([10, -20, 29, -20, 6, -40, 50, -60, 10, -40]) == true
    @test triples_sum_to_zero([2, 3, 50, 0, 3, 0, 4, 2, -1, 2]) == false
    @test triples_sum_to_zero([1, 2, 3, -6, -6, 7, -6, -1]) == true
    @test triples_sum_to_zero([2, 5, 3, -10, -5, 0, 4, 1, -1]) == true
    @test triples_sum_to_zero([-10, 1, 1, 2, 3, 4, 5, 5, -9, 1]) == true
    @test triples_sum_to_zero([0, 1, -2, -3]) == false
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 5, -1, 5]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 5, -1, 5, 1]) == true
    @test triples_sum_to_zero([1, 2, 3, 2, 5, 4]) == false
    @test triples_sum_to_zero([2, 3, -5, 0, -3, 4, 1, -1]) == true
    @test triples_sum_to_zero([-3, -2]) == false
    @test triples_sum_to_zero([10, -19, 30, -40, 50, 30, -60]) == true
    @test triples_sum_to_zero([1, 1, -1, 6, 1, -1]) == false
    @test triples_sum_to_zero([0, 2, 3, -6, -10, 0, -1, 2, 1, 1, -1]) == true
    @test triples_sum_to_zero([1, 1, -1, 6, 1, -1, 1]) == false
    @test triples_sum_to_zero([1, 1, -6, 6, 1, -1, 1]) == false
    @test triples_sum_to_zero([10, -20, 30, -20, 6, -40, 50, -60, -60]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, 7, 0, -6, -1, 7, -1]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -4]) == true
    @test triples_sum_to_zero([-1]) == false
    @test triples_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 0, 0]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, -10, 7]) == true
    @test triples_sum_to_zero([11, 12, 13, 14, -2, -3, -4, -8]) == true
    @test triples_sum_to_zero([100, -200, 300, -400, -1, 2, -3, 4]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, 9]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -7, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15, -11]) == true
    @test triples_sum_to_zero([-401, 100, -200, 300, -400, -1, 2, -3, 4]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, 9, 14, 7]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, 9, 14, 7, -10]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -15, 8, 9, 10, -11, -12, -13, -14, -15]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, 9, 7, 7, 14]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -11, 5, 6, 7, -15, 14, 8, 9, 10, -11, -12, -13, -14, -15, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -11, 5, 6, 7, -15, 14, 8, 9, 10, -11, -12, -13, -14, -15, 7, 2]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -3, 1000, -50, 75]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 7]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -7, -8, 9, 10, -12]) == true
    @test triples_sum_to_zero([1, 3, 4, -11, 5, 6, 7, -15, 14, 9, 10, -11, -12, -13, -14, -15, 7, 2, 14]) == true
    @test triples_sum_to_zero([25, 8, 7, -5, 33, -6, 14, 9, 14, 7]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15]) == true
    @test triples_sum_to_zero([1, 3, 4, 12, -11, 5, 6, 7, -15, 14, 9, 10, -11, -12, -13, -14, -15, 7, 2, 14]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, -4, 9, 14, 7]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75]) == true
    @test triples_sum_to_zero([25, 8, -5, 33, -6, 14, 9, 14, 7, -5]) == false
    @test triples_sum_to_zero([25, -20, 8, 7, 33, -6, 14, 9, 7, 7]) == false
    @test triples_sum_to_zero([-401, 100, -200, 300, -400, 11, -199, -3, 4]) == true
    @test triples_sum_to_zero([1, 2, 3, -800, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -6, 14, 9, 7, 7]) == false
    @test triples_sum_to_zero([25, 8, 7, -5, 33, -6, 14, 9, 14, 7, 14]) == false
    @test triples_sum_to_zero([25, -14, -5, 33, -6, 14, 14, 7, -5]) == false
    @test triples_sum_to_zero([-5, 8, 7, -5, 33, -6, 14, 9, 14, -90, 14]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, -15, -10, 7]) == true
    @test triples_sum_to_zero([1, 2, 8, 3, 4, 5, 6, 8, 9, 10, -12, -13, -14, -15]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -6, 14, 9, 14, 7, 8]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -6, 14, 9, 14, 7, 8, 14]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, -12, 10, -12, -11, -12, -13, -14, -15, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, -800, -15, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11]) == true
    @test triples_sum_to_zero([25, 33, -20, 7, -5, 11, 33, -6, 14, 9, 14, 7, 8]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, -6, 14, 9, 7, 7]) == false
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, -6, 14, 8, 7, 7]) == false
    @test triples_sum_to_zero([1, 1, 3, 4, 5, 6, 7, 8, 9, 11, -11, -12, -13, -14, -15]) == true
    @test triples_sum_to_zero([7, 25, -5, -20, 8, 7, -5, 33, -6, 14, 9, 14, 7, -10]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -70, -800, -900, -3, 1000, -50, 75, 700]) == true
    @test triples_sum_to_zero([1, 2, -3, -8, -4, 5, 6, -7, -8, 9, -12, -8]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, -6, 13, 9, 7, 7, 33]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, 6, -7, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -70, -800, -900, -3, 1000, -50, 75, 700, -60]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, 6, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, -4, 9, 14, 7, 25, 7]) == true
    @test triples_sum_to_zero([-20, 8, -21, 7, 33, -6, 14, 14, 7, 7]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -20, -70, -80, 100, 200, 300, -400, -500, -600, 3, -800, -900, 1000, -50, 75]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 3, -15, -10, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 3, -15, 7]) == true
    @test triples_sum_to_zero([-401, 100, -200, 300, -400, 11, -199, -3, 3]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 33, 33, -6, 14, 9, 14, 7, 8]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, -6, 13, 9, 7, 7, 9]) == true
    @test triples_sum_to_zero([2, -3, -4, 5, 6, -7, -8, 9, 10, -12]) == true
    @test triples_sum_to_zero([1, 2, 8, 3, 4, 5, -2, 6, 8, 9, 10, -12, -13, -14, -15]) == true
    @test triples_sum_to_zero([12, 13, 14, -2, -3, -4, -8]) == true
    @test triples_sum_to_zero([-600, -20, 8, -20, 7, 33, -6, 14, 9, 7, 7]) == false
    @test triples_sum_to_zero([2, -3, -4, 5, 6, -7, -8, 9, 10, -12, 5]) == true
    @test triples_sum_to_zero([25, 32, -20, 7, -5, 33, 33, -6, 14, 9, 14, 7, 8]) == true
    @test triples_sum_to_zero([2, -2, -4, 5, 6, -7, -8, -6, 9, 10, -12, -3]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 8, 9, 10, -12, -13, -14, -15, 3]) == true
    @test triples_sum_to_zero([25, 33, 7, -5, 33, -6, 14, 9, 14, 7, 8, -6]) == false
    @test triples_sum_to_zero([10, 20, 30, 32, -40, -50, -60, -20, -70, -80, 100, 200, 300, -400, -500, -600, 3, -800, -900, 1000, -50, 75]) == true
    @test triples_sum_to_zero([11, 6, 12, 13, 14, -2, -3, -4, 0, -8]) == true
    @test triples_sum_to_zero([25, 8, 8, -5, 33, -6, 14, 9, 7, -5]) == false
    @test triples_sum_to_zero([2, 3, 4, -5, -6, -15, -10, 7, -5]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, -50, 6, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([-20, 8, -20, -200, 33, -6, 14, 8, 7, 7, -20]) == false
    @test triples_sum_to_zero([25, 33, -20, 7, -5, 11, 33, -6, 14, 9, 14, 7, 33, 8]) == true
    @test triples_sum_to_zero([25, -20, 8, 8, 7, -5, 33, -6, 14, -4, 9, 14, 7]) == true
    @test triples_sum_to_zero([11, 12, 13, 14, -3, -9, -4, -8, -4]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -11, 5, 6, 7, -15, 14, 8, 9, 10, 3, -11, -12, -13, -14, -15, 7, 2]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -91, 100, 200, 1000, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75]) == true
    @test triples_sum_to_zero([0, 2, 3, 4, 5, -10, -20, -30, 10, 20, 30, 5]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, 200, 20]) == true
    @test triples_sum_to_zero([10, 20, 30, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, -7, -8, 9, 10, -11, -12, 2]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, 700]) == true
    @test triples_sum_to_zero([1, 2, 3, 3, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15]) == true
    @test triples_sum_to_zero([25, -20, 8, 8, 7, -5, 33, -4, 9, 14, 7]) == true
    @test triples_sum_to_zero([-21, -20, 8, 7, 33, -7, -6, 13, 9, 7, 7, 9]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, 75, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, -800, 1000]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, -12, 10, -12, -4, -11, -12, -13, -14, -15, 7]) == true
    @test triples_sum_to_zero([25, 8, 8, -5, 33, -6, 14, 7, -5]) == false
    @test triples_sum_to_zero([1, 2, -3, -4, 5, -7, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -7, -8, 9, 10, 7, -12, 2]) == true
    @test triples_sum_to_zero([25, 8, -5, 5, 14, 9, 7, -5]) == false
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, -6, 14, 8, 200, 7]) == false
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -600, 700, -800, -900, 1000, -50, 75, -70]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, -8, -8, 9, 10, -11, -12, 2, -8]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, 1000, -8, 9, 10, 7, -12, 2]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -8, 9, 10, -11, -11, 6]) == true
    @test triples_sum_to_zero([1, -3, -4, 5, 6, 1000, -8, 9, 10, 7, -12, 2, 10, 6]) == true
    @test triples_sum_to_zero([-800, 1, 2, 3, -800, -15, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -11, 5, 6, 7, -15, 8, 9, 10, -11, -12, -91, -14, -15, 7]) == true
    @test triples_sum_to_zero([100, -200, 300, -400, -1, 2, -3, 4, 4]) == true
    @test triples_sum_to_zero([100, -200, 300, -400, -1, 2, -3, 4, -200]) == true
    @test triples_sum_to_zero([-600, -21, 8, -20, 7, 33, -6, 14, 9, 7, 7]) == true
    @test triples_sum_to_zero([-401, -5, 100, -200, -400, -1, 2, -3, 4]) == true
    @test triples_sum_to_zero([12, -11, 13, 14, -2, -3, -4, -8]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, -60, 3, -15, 7, 3]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 33, 33, -6, 14, 9, 14, 6, 8]) == true
    @test triples_sum_to_zero([1, 2, 8, 10, 3, 4, 5, 6, 9, 10, -12, -13, -14, -15]) == true
    @test triples_sum_to_zero([1, 2, 3, 1, 4, 5, 6, 7, 8, -12, 10, -12, -11, -12, -13, -14, -15, 7]) == true
    @test triples_sum_to_zero([25, -20, 8, 8, 33, -6, 14, 9, 7, 26, 7]) == true
    @test triples_sum_to_zero([-20, 8, -20, -200, 33, -6, 4, 14, 8, 7, 7, -20]) == false
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 999, 100, 200, 300, -400, -500, -600, 700, -70, -800, -900, -3, 1000, -50, 75, 700]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -91, 100, 200, 1000, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, 30, -91]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 7, 7, 14]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, 33, -6, 14, -7, 7, 7]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 7, -5]) == true
    @test triples_sum_to_zero([25, 8, 7, -5, 33, -6, 14, 9, 14, 3]) == false
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -500, -600, 700, -800, -900, -7, 0, -50, 75, 200, 20]) == true
    @test triples_sum_to_zero([2, -2, -4, -80, 6, -7, -8, -6, 9, 10, -12, -3, 6]) == true
    @test triples_sum_to_zero([12, 13, 14, -2, -3, -4, -8, 12]) == true
    @test triples_sum_to_zero([25, -20, 8, 8, 33, -6, 14, 10, 7, 26, 7]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, -7, -8, 9, 10, -11, -12, -12]) == true
    @test triples_sum_to_zero([0, 0, 100, 0, 0, 12, 0, 0, 0, 0, 0, 100]) == true
    @test triples_sum_to_zero([25, 8, 700, -5, 33, -6, 14, 10, 14, 7]) == false
    @test triples_sum_to_zero([25, 32, 7, -5, 33, 33, -6, 14, 9, 14, 7, 8]) == false
    @test triples_sum_to_zero([-401, 100, -199, 300, -400, -1, 2, -3, 4]) == true
    @test triples_sum_to_zero([-5, 8, 7, -5, 33, -7, 14, 9, 14, -90, 14]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 3, -15, 7, -5]) == true
    @test triples_sum_to_zero([25, -20, 8, 6, -5, 33, -6, 14, 9, 14, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, -15, 4, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11]) == true
    @test triples_sum_to_zero([-20, 8, -20, -200, 33, -6, 4, 14, 8, 7, 7, -20, 33]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -5, -6, 7]) == true
    @test triples_sum_to_zero([0, 2, 3, 4, -800, -20, -30, 10, 20, 30, 5]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -6, 32, 14, 7, 8, 11, 14, 32]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, -60, 3, -15, 7, 3, -60]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, 75, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, -8, 1000]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, 9, 14, 7, -10, -10]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 8, 14, 9, 14, 7, -10]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, -15, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -11, 6, 7, -15, 2, 14, 8, 9, 10, -11, -12, -14, -15, 7]) == true
    @test triples_sum_to_zero([1, 1, 3, 4, 5, 6, 7, 8, 30, 11, -11, -12, -13, -14, -15]) == true
    @test triples_sum_to_zero([25, -20, 8, 8, 7, -5, 33, -4, 9, 14, 7, 14]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, -6, 13, 9, 7, 7, 9, 9]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, -900]) == true
    @test triples_sum_to_zero([25, 8, 8, -5, 33, -6, 14, 25, 9, 7, -5]) == false
    @test triples_sum_to_zero([1, 2, -13, 3, -800, -15, 4, 5, 6, 7, -15, -14, 8, 9, 11, -11, -12, -13, -14, -15, -11]) == true
    @test triples_sum_to_zero([11, 12, 13, 14, -3, -9, -4, -8]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -6, -14, 7]) == true
    @test triples_sum_to_zero([11, 6, 12, 13, 14, -2, -3, -4, 0, -8, 6]) == true
    @test triples_sum_to_zero([-800, 1, 2, 3, -800, -15, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, 6, -11]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -6, 14, 9, 14, 7, 8, 8]) == true
    @test triples_sum_to_zero([1, 3, -3, -4, 5, 6, -8, -15, 9, 10, -11, -11, 6]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -16, -6, -60, 3, -15, 7, 3, -60]) == true
    @test triples_sum_to_zero([1, 3, 4, 12, -11, 5, 6, 7, -15, 14, 9, 10, -11, -12, -13, -15, 7, 2, 14]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 33, 33, -6, 14, 9, 14, 7, 8, 14]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, -6, 13, 9, 7, 9]) == true
    @test triples_sum_to_zero([11, 12, 13, -30, -3, -9, -4]) == true
    @test triples_sum_to_zero([25, 8, 8, -5, 33, -6, 14, 9, 7, -5, -5]) == false
    @test triples_sum_to_zero([1, -3, 4, 5, 6, 9, 10, -11, -11, 3, 6]) == true
    @test triples_sum_to_zero([1, 2, 8, 3, 4, 5, -2, 6, 8, 9, 10, -12, -13, -14, 5, -15, 8]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -6, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, -6, 75, -7, -8, 9, 10, -13, -11, -12, 2]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 8, 10, -12, -13, -14, -15, 3]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, -50, 6, -8, 9, 10, -11]) == true
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, -6, 14, 8, 1000, 7]) == false
    @test triples_sum_to_zero([2, -2, -4, -80, 6, -7, -8, -6, 9, 10, -12, 6]) == true
    @test triples_sum_to_zero([1, 2, 3, 3, 5, 6, -15, 9, 11, -11, -12, -13, -14, -15]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 32, 14, 9, 14]) == true
    @test triples_sum_to_zero([0, 12, 1, 2, 3, 4, 5, -5, -10, -6, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([25, -40, 8, 7, -5, 33, -6, 32, 14, 14, -20]) == true
    @test triples_sum_to_zero([2, -2, -4, 5, 6, -199, -7, -8, -6, 9, 10, -12, -3]) == true
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, -6, 14, 8, 200, 0, 7]) == false
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, -6, 14, -9, 200, 7]) == false
    @test triples_sum_to_zero([1, 2, 3, -800, 4, 5, 6, 7, -15, 9, 9, 11, -11, -12, -13, -14, -15, -11]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, 6, -8, 9, 10, -11, -12, 1]) == true
    @test triples_sum_to_zero([8, -20, 7, 33, -6, 14, -9, 200, 7]) == false
    @test triples_sum_to_zero([1, 2, 3, 3, 5, 6, -15, 9, 11, -11, -12, -13, -14]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -200, -600, -5, -6, 3, -15, 7]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -91, 200, 1000, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, 30, -91]) == true
    @test triples_sum_to_zero([1, 2, -3, -8, 5, 6, -7, -8, 9, -12, -8]) == true
    @test triples_sum_to_zero([-5, 8, 7, -5, 33, -7, 14, 9, 14, -90, 14, 14]) == false
    @test triples_sum_to_zero([2, -2, -4, 5, 6, -7, -8, -6, 9, 10, -12, -3, 6]) == true
    @test triples_sum_to_zero([-21, -20, 7, 33, -7, -6, 13, 9, 7, 7, -3]) == true
    @test triples_sum_to_zero([25, 8, -5, 33, -6, 14, 7, -5, 25]) == false
    @test triples_sum_to_zero([1, 2, -7, -3, -8, -4, 5, -7, -8, 9, -12, -8]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -6, 14, 9, 14, 7, 8, 11]) == true
    @test triples_sum_to_zero([25, 8, -5, 14, 9, 7, -5]) == false
    @test triples_sum_to_zero([25, -20, -19, 8, 7, -5, 33, -6, 32, 14, 9, 14]) == true
    @test triples_sum_to_zero([25, -20, 12, 8, 8, 33, -6, 14, 10, 7, 26, 7]) == true
    @test triples_sum_to_zero([25, 8, -5, 5, 14, 9, 7, -5, -5]) == false
    @test triples_sum_to_zero([-60, 0, 12, 1, 2, 3, 4, 5, -5, -10, -6, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, -900]) == true
    @test triples_sum_to_zero([-5, 8, 7, -5, -8, 33, -7, 14, 9, 14, -19, 14, -7]) == true
    @test triples_sum_to_zero([10, 20, -40, -50, -60, -20, -70, -80, 100, 200, 2, 300, -400, -500, -600, 3, -800, -900, 1000, -50, 75, 10]) == true
    @test triples_sum_to_zero([11, 12, 13, -30, 12, -9, 10, -4, -3]) == true
    @test triples_sum_to_zero([10, 20, -40, -50, -60, -20, -70, -80, 100, 200, 2, 300, -400, -500, -600, 3, -800, -900, 1000, -50, 75, -7, 75]) == true
    @test triples_sum_to_zero([10, 20, 30, -50, -60, -70, -80, -90, 100, 200, 300, 5, -500, 2, -600, 700, -800, -900, -7, 0, -50, 75]) == true
    @test triples_sum_to_zero([2, -2, -4, -400, 6, -7, -8, -6, 9, 10, -12, -3]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, 6, -8, 9, 10, -11, -12, -3, 2, -8]) == true
    @test triples_sum_to_zero([-8, 1, 2, 3, 4, 5, -10, -6, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, 100, 200, 300, -500, -600, 700, -800, -900, -7, 0, -50, 75, 200, 20]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, -7, -8, 9, -6, 10, -11, -12, -12]) == true
    @test triples_sum_to_zero([25, -20, 13, 8, 8, 33, -6, 14, 10, 7, 26, 7]) == true
    @test triples_sum_to_zero([25, 8, -4, 33, -6, 14, 7, -5, 33]) == false
    @test triples_sum_to_zero([1, 2, 3, -5, -6, -15, -10, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, -800, 4, 5, 6, 7, -15, 9, 9, 11, -11, -12, -13, -40, -14, -15, -11]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 3, -15, 3, 7, -5]) == true
    @test triples_sum_to_zero([-21, -20, 7, 33, 7, -6, 13, 9, 7, 7, -3]) == true
    @test triples_sum_to_zero([1, 2, -8, 5, 6, -8, 9, 26, 10, -11, -12, -3, 2, -8]) == true
    @test triples_sum_to_zero([2, -2, -4, 6, -7, -8, 9, 10, -12, -3]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, 75, -50, -60, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, 1000, -50, 75, -8, 1000]) == true
    @test triples_sum_to_zero([10, 20, 30, -60, -70, -80, -90, 100, 200, 300, 5, -500, 2, -600, 700, -800, -900, -7, 0, -50, 75]) == true
    @test triples_sum_to_zero([-21, -20, 7, 33, 7, 8, -6, 13, 9, 7, 7, -3, -6]) == true
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, -6, 14, 8, 7, 7, 8]) == false
    @test triples_sum_to_zero([-2, -4, 6, -7, -8, 9, 10, -12, -3]) == true
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, -6, 14, -9, 7]) == false
    @test triples_sum_to_zero([1, 2, 3, 3, 5, 6, -15, 9, 11, -11, -12, -13, -14, -15, -12]) == true
    @test triples_sum_to_zero([11, 12, 13, -30, -9, 10, -4, -3]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, -6, 13, 9, 7, 7]) == true
    @test triples_sum_to_zero([10, 20, 30, -60, -70, -80, -90, 100, 200, 300, 5, -500, 2, -600, 700, -800, -900, -7, 0, -50, 75, -900]) == true
    @test triples_sum_to_zero([25, 8, 7, -5, 33, -6, 14, 9, 14, 7, -6]) == false
    @test triples_sum_to_zero([2, -2, -4, -80, 6, -7, -8, -6, 9, 10, -12, -3, 6, 6]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -7, -8, 9, 10, -12, 9, -3]) == true
    @test triples_sum_to_zero([25, 33, 7, -5, 33, -6, 14, 14, 7, 8, 25]) == false
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, -6, 13, 9, 7, 9, 13]) == true
    @test triples_sum_to_zero([1, 2, 3, -15, 4, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11, 9]) == true
    @test triples_sum_to_zero([6, 7, 25, -5, -20, 8, 7, -5, 33, -6, 14, -4, 9, 14, 7, -10]) == true
    @test triples_sum_to_zero([2, -3, 5, -50, 6, -8, 9, 10, -11, -12, 9]) == true
    @test triples_sum_to_zero([-600, -20, 8, -20, 7, 33, -6, 14, 7, 8]) == false
    @test triples_sum_to_zero([1, 1, 3, -800, -15, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11, 1]) == true
    @test triples_sum_to_zero([2, -3, 5, -50, 6, -8, 9, 10, -11, -6, 9]) == true
    @test triples_sum_to_zero([1, 2, 3, -800, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -13, -15, -11]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -91, 9, 200, 1000, 300, -400, -500, 700, -800, -900, -7, 0, -50, 75, 30, -91]) == true
    @test triples_sum_to_zero([25, 8, 33, -6, 14, 7, -5]) == false
    @test triples_sum_to_zero([1, 700, 2, -3, -4, 5, -8, -8, 9, 10, -11, -12, 2, -8]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, 700, 300]) == true
    @test triples_sum_to_zero([-21, -20, 7, 33, 1000, -7, -6, 13, 9, 7, 7, -3]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -11]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -11, 5, 6, 7, -15, 14, 8, 9, 10, -11, -12, -13, -14, -15, 7, 7]) == true
    @test triples_sum_to_zero([-30, 10, 20, 30, -40, -50, -61, -70, -80, -90, 100, 100, 300, -500, -600, -14, -800, -900, -7, 0, -50, 75, 200, 20]) == true
    @test triples_sum_to_zero([25, 8, 8, -5, 33, -6, 14, 9, 7, -5, 8]) == false
    @test triples_sum_to_zero([2, -2, -4, 5, 6, -8, -12, -6, 9, 10, -12, -3]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 6, 7, 3, 2, 14, 8, 9, 10, -11, -12, -14, -15, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -11, 5, 6, 7, -15, 8, 9, -11, -12, -91, -14, -15, 7]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -7, -8, 9, 10, -11, 7, -12, 2]) == true
    @test triples_sum_to_zero([32, 25, 8, 7, -5, -6, 5, 9, 14, 3]) == false
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -6, 14, 9, 14, 7, 11, 11, -5]) == true
    @test triples_sum_to_zero([1, 1, -3, 5, -50, 6, -8, 9, 1000, -11, -12]) == true
    @test triples_sum_to_zero([0, 0, 100, 0, 0, 12, 0, 0, 0, 0, -1, 0, 100]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, 33, -6, 14, 9, -21, 14, 7, -10, -10]) == true
    @test triples_sum_to_zero([1, 5, 2, 3, 4, 5, 6, 7, 9, 9, 10, -11, -12, -13, -14, -11]) == true
    @test triples_sum_to_zero([24, -20, 8, 8, 7, -5, 33, -4, 9, 14, 7]) == true
    @test triples_sum_to_zero([2, -3, -3, 5, 6, -7, -8, 9, 10, -12]) == true
    @test triples_sum_to_zero([32, 25, 8, 7, -5, -6, 5, 9, 14, 3, 32]) == false
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, 14, -6, 14, 8, 7, 7, -20]) == false
    @test triples_sum_to_zero([12, 13, 14, -2, -10, -4, 8]) == true
    @test triples_sum_to_zero([12, 13, 14, -2, -3, -4, 12]) == false
    @test triples_sum_to_zero([2, 2, 3, -15, 4, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11, 7]) == true
    @test triples_sum_to_zero([2, -2, -4, 6, -7, -8, 9, 10, -3, 6]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -6, 32, 14, 7, 8, 11, 14, 32, 11]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, 700, -14, -800, -900, -7, 0, -50, 75, 700, 300, -50]) == true
    @test triples_sum_to_zero([1, 2, -8, 5, 6, -8, 9, 26, 10, -11, -12, 2, -8]) == true
    @test triples_sum_to_zero([2, -2, -4, -80, 6, -7, -8, -6, 9, -12, -3, 6]) == true
    @test triples_sum_to_zero([24, -20, 8, 7, -5, 33, -6, 14, 9, 14, 7, -10, -10]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -13, -14, -11, -13]) == true
    @test triples_sum_to_zero([-600, -20, 8, -20, 7, 33, -6, 14, 9, 7, 7, 9]) == false
    @test triples_sum_to_zero([2, -2, -4, 5, 6, -199, -7, -8, -6, 9, 10, -12, -3, -8]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, -4, 9, 14, -800, 25]) == true
    @test triples_sum_to_zero([0, 0, 100, 0, 0, 12, 12, 0, 0, 0, 0, -1, 0, 100]) == true
    @test triples_sum_to_zero([-500, 2, -2, -4, 6, -7, -8, 9, 10, -3, 6]) == true
    @test triples_sum_to_zero([1, 2, 3, -800, 4, 5, 6, 7, 9, 9, 11, -11, -12, -13, -40, -14, -15, -11]) == true
    @test triples_sum_to_zero([1, 2, 8, 3, 4, 5, -2, 6, 8, 9, 10, -12, -13, -14, -15, -2]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, 6, -8, 9, 10, -61, -12]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, 13, 9, 7, 9]) == true
    @test triples_sum_to_zero([-21, -20, 7, 33, -7, -6, 999, 13, 9, 7, 7, -3, 7]) == true
    @test triples_sum_to_zero([1, 5, 2, 3, 4, 5, 6, 7, 9, 9, 10, -11, -12, -13, -11]) == true
    @test triples_sum_to_zero([20, 25, -20, 8, -5, 33, -6, 14, 9, 7, 7, 14]) == true
    @test triples_sum_to_zero([-2, -4, 6, -7, -8, 9, 6, -12, -3]) == true
    @test triples_sum_to_zero([2, -2, -4, -400, -7, -8, 9, 10, -3, 6, 6]) == true
    @test triples_sum_to_zero([1, 2, 3, 5, 6, 7, 8, -12, -12, -6, -12, -13, -14, -15, 7]) == true
    @test triples_sum_to_zero([11, 6, 13, 9, 14, -3, -4, 0, -8]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, 6, -8, 9, -12, -11, -12]) == true
    @test triples_sum_to_zero([32, 25, 8, 7, -5, -6, 5, 9, 14, 3, 3]) == true
    @test triples_sum_to_zero([-60, 0, 12, 1, 2, 3, 5, -10, -6, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, 6, -8, 9, 10, -11, -12, -8]) == true
    @test triples_sum_to_zero([1, 2, -8, 5, 6, -8, 26, 10, -11, -12, 2, -8]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, -12, 10, -12, -4, -11, -12, -13, -14, -15, 7, -12]) == true
    @test triples_sum_to_zero([1, 2, 8, 3, 4, 4, -2, 6, 8, 9, 10, -12, -13, -14, -15, -14]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 7, 3, 14, 8, 9, 10, 2, -12, -14, -15, 7, -12]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -20, -70, -80, 100, 200, 300, -400, -500, -600, 3, -800, -900, -501, 1000, -50, 75]) == true
    @test triples_sum_to_zero([25, 33, 7, 33, -7, 14, 9, 14, 7, 8, -6]) == false
    @test triples_sum_to_zero([25, -20, 14, 8, 8, 33, -6, 14, 10, 7, 26, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 1, 4, 5, 6, 7, 8, 10, -12, -11, -12, -13, -14, -15, 7, -13]) == true
    @test triples_sum_to_zero([1, 2, -4, 3, 4, -5, -6, -15, 7]) == true
    @test triples_sum_to_zero([10, 20, 30, -50, -60, -70, -61, -90, 100, 200, 300, -400, -500, 700, -800, -900, -7, 0, -50, 75, 700]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, -12, 10, -500, -12, -4, -11, -12, -13, -14, -15, 7]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 32, 14, 9, 14, 25, 33]) == true
    @test triples_sum_to_zero([1, 25, -3, -4, 5, 6, 1000, -91, -8, 9, 10, 7, -12, 2]) == true
    @test triples_sum_to_zero([25, 9, 8, 7, -5, 33, -6, 14, 9, 14, 7]) == false
    @test triples_sum_to_zero([1, 2, -3, 5, -50, 6, -8, 9, 10, -12]) == true
    @test triples_sum_to_zero([-401, -5, 100, -200, -400, -1, 2, -3, 4, 100]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, 33, -6, 14, 7, 7]) == false
    @test triples_sum_to_zero([2, -7, -3, -8, -4, 5, -8, 9, -12, -8]) == true
    @test triples_sum_to_zero([-401, 100, -400, -200, 300, -400, 11, -199, 4]) == true
    @test triples_sum_to_zero([25, 7, -14, -5, 33, 8, 14, 14, 7, -5]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 15, 9, 7, 7, 14]) == true
    @test triples_sum_to_zero([6, 7, 25, -5, -20, 8, -5, 33, -6, 14, -4, 9, 14, 7, -10]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, 200, 20, 700]) == true
    @test triples_sum_to_zero([2, -2, -4, 5, -7, -8, -6, 9, 10, -12, -3]) == true
    @test triples_sum_to_zero([-401, -5, 100, -200, -1, 2, -3, 4, -401]) == true
    @test triples_sum_to_zero([1, 2, 3, -800, 4, 5, 6, 7, -15, 9, 9, 11, -11, -12, -13, -40, -41, -14, -15, -11]) == true
    @test triples_sum_to_zero([25, -20, 8, 8, 33, -6, 14, 9, 7, 26, 7, 26]) == true
    @test triples_sum_to_zero([-800, 1, 2, 3, -800, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -11, -11]) == true
    @test triples_sum_to_zero([25, 33, -20, 7, -10, -5, 11, 33, -6, 14, 9, 14, 7, 33, 8]) == true
    @test triples_sum_to_zero([-800, 1, 2, 3, 1, 4, 5, 6, 7, 8, -12, 10, -13, -11, -12, -13, -14, -15, 7]) == true
    @test triples_sum_to_zero([2, -2, -80, 6, -7, -8, -6, 9, -12, -3, 6]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, 4, 6, -8, 9, 10, -61, -12]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, -400, -500, -600, 700, -800, -900, -7, 0, -15, 75]) == true
    @test triples_sum_to_zero([-800, 1, 2, 3, -800, -15, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11, 1]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -900, -7, 0, -50, 75, 700]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, -4, -7, 9, 14, 7, 25, 7, -4]) == true
    @test triples_sum_to_zero([25, -20, -401, 7, -5, 11, 33, 300, -6, 14, 9, 14, 7, 8]) == true
    @test triples_sum_to_zero([1, 2, 3, -5, -6, -15, 7]) == true
    @test triples_sum_to_zero([1, 33, 3, 4, -5, -6, -10, 7]) == true
    @test triples_sum_to_zero([1, 2, -13, -11, -800, -70, -15, 4, 5, 6, 7, -15, -14, 8, 9, 11, -11, -12, -13, -14, -15, -11]) == true
    @test triples_sum_to_zero([-800, 1, 2, 3, -800, -15, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11, 1, -11]) == true
    @test triples_sum_to_zero([2, -2, -4, 5, 6, -7, -8, -6, 9, 10, -12, -600, -3]) == true
    @test triples_sum_to_zero([26, 32, 7, -5, 33, 33, 13, -6, 14, 9, 14, 7, 8]) == false
    @test triples_sum_to_zero([-20, -20, -200, 33, 4, -20, 14, 8, 7, 7, -20, 33]) == false
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -8, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, 200, 20, 700, -90]) == true
    @test triples_sum_to_zero([20, 25, -20, -14, 8, -5, 33, -6, 14, 9, 7, 7, 14, 7]) == true
    @test triples_sum_to_zero([1, 3, -5, -6, -15, -10, 7]) == true
    @test triples_sum_to_zero([25, 8, 8, -5, -50, 33, -6, 14, 9, 200, 7, -5, 7]) == false
    @test triples_sum_to_zero([1, 2, 3, -6, -6, -15, -10, 7, -15]) == true
    @test triples_sum_to_zero([2, 8, 10, 3, 4, 5, 6, 9, 10, -12, -13, -14, -15, 8]) == true
    @test triples_sum_to_zero([1, 2, 3, -6, -6, -15, -7, -10, 7, -15]) == true
    @test triples_sum_to_zero([-20, 8, -20, -200, 33, 33, -6, 14, 8, 7, 7, -20]) == false
    @test triples_sum_to_zero([25, -20, 7, -5, 33, 33, -6, 14, 9, 14, 8, 7, 8, 14, 9]) == true
    @test triples_sum_to_zero([2, 3, 4, -5, -6, -60, 3, -15, 7, 3]) == true
    @test triples_sum_to_zero([25, -14, -5, 33, -6, 14, 14, -41, 7, -5]) == false
    @test triples_sum_to_zero([1, 34, 3, 4, -5, -6, -10, -21, 7]) == true
    @test triples_sum_to_zero([1, 2, 5, 6, -8, 9, -12, -11, -12]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -20, -8, 9, 10, -12]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 32, 14, 9, 14, 25, 33, 25, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -15, -80, 9, 11, -11, -12, -13, -14, -15, -11]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -91, 200, 1000, 300, -400, -500, -600, 700, -800, -7, 0, -50, 75, 30, -91, -7]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, -6, 13, 7, 9]) == true
    @test triples_sum_to_zero([8, -5, 5, 14, 9, 7, -5, -5]) == false
    @test triples_sum_to_zero([25, -20, 8, -5, 8, -6, 8, 14, 14, 7, -10]) == true
    @test triples_sum_to_zero([1, 2, -13, -11, -800, -70, -15, 4, 5, 6, 7, -15, -14, 8, 9, 11, -11, -12, -13, -14, -15, -11, 4, -15]) == true
    @test triples_sum_to_zero([2, -3, -51, 5, -50, 6, -8, 9, 32, 10, -12]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -11, 5, 6, 7, -15, 14, 8, 9, 10, -11, -12, -13, -14, -15, 7, 9]) == true
    @test triples_sum_to_zero([2, -2, -4, 5, 6, -7, -8, 9, 10, -12, -3, 6]) == true
    @test triples_sum_to_zero([10, 20, 30, 32, -40, -50, -60, -20, -70, 100, 200, 300, -400, -500, -600, 3, -800, -900, 1000, -50, 75]) == true
    @test triples_sum_to_zero([2, 8, 10, 3, 4, 5, 6, 9, 10, -12, -13, -14, -15, 8, 8]) == true
    @test triples_sum_to_zero([2, -3, 5, -50, 6, -8, 9, 10, -11, -6, 9, 9]) == true
    @test triples_sum_to_zero([1, 3, 4, -6, -14, 7, 2, 2]) == true
    @test triples_sum_to_zero([2, -4, 6, -7, -8, 9, 10, -12, -3, -8]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, 100, 200, 1000, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, 30, -91]) == true
    @test triples_sum_to_zero([1, 2, 8, 3, 4, 5, -2, 6, 8, 9, 10, -12, -13, -14, -15, -2, 4]) == true
    @test triples_sum_to_zero([0, 0, 0, 0, 0, 0, 0, -9, 0, 0]) == true
    @test triples_sum_to_zero([2, -2, -4, -80, 6, -7, -8, -6, 9, 10, -12, -600, -3, 6]) == true
    @test triples_sum_to_zero([10, 20, 30, 32, 75, -40, -50, -60, -20, -70, -80, 100, 200, 300, -400, -500, -600, 3, -800, -900, 1000, -50, 75]) == true
    @test triples_sum_to_zero([-800, 1, 2, 3, -800, -15, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11, 1, 2]) == true
    @test triples_sum_to_zero([2, -2, -4, 5, -7, -8, 9, 10, -12, -3, 6]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, -7, 0, -50, 75, -900, -70]) == true
    @test triples_sum_to_zero([1, 2, -3, 5, 6, -8, 9, 10, -11]) == true
    @test triples_sum_to_zero([7, 25, -5, -20, 8, 7, -5, 33, -6, 14, 9, 14, 7, -20]) == true
    @test triples_sum_to_zero([-60, 0, 12, 1, 2, 3, 5, -10, 10, -6, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([10, 30, -40, -50, -60, -70, -80, -90, 999, 100, 200, 300, -400, -500, -600, 700, -70, -800, -900, -3, 1000, -50, 75, 700]) == true
    @test triples_sum_to_zero([2, -4, 6, -7, -8, 9, 10, -12, -500, -8]) == true
    @test triples_sum_to_zero([1, -3, -4, 5, -7, -8, 9, 10, -12, -12]) == true
    @test triples_sum_to_zero([-199, 2, 3, 1, 4, 5, 6, 7, 8, 10, -12, -11, -12, -13, -14, -15, 8, 7, -13, 7]) == true
    @test triples_sum_to_zero([-5, 8, 7, -5, 33, 33, -7, 14, 9, 14, -90, 15]) == false
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, -6, 13, 7, 7, 33]) == true
    @test triples_sum_to_zero([11, 6, 12, 13, 14, -2, -3, -4, 0, -8, 14]) == true
    @test triples_sum_to_zero([4, 0, 2, 3, 4, -800, -20, -30, 20, 30, 5]) == true
    @test triples_sum_to_zero([25, 32, -20, 7, -5, 33, 33, -6, 14, 9, 14, 7, 8, 33]) == true
    @test triples_sum_to_zero([11, 6, 12, 13, 14, -3, -4, 0, -8, -8]) == true
    @test triples_sum_to_zero([2, -3, -8, -4, 5, -8, 9, 3, -12, -8]) == true
    @test triples_sum_to_zero([100, -200, 300, -400, -1, 2, -3, 4, 5, 100, -200]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -6, 14, 9, 14, 7, 11, 11, -5, 11]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, 75, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1001, -50, 75, -8, 1000]) == true
    @test triples_sum_to_zero([-199, 2, 3, 1, 4, 5, 6, 7, 8, 10, -14, -11, -12, -13, -14, -15, 8, 7, -13, 7]) == true
    @test triples_sum_to_zero([2, -2, -4, -80, 6, -7, -8, -401, 9, 10, -12, -3, 6, 6]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 4, 6, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, 14, 15, -6, 14, 8, 7, 7, -21, -20, -20]) == true
    @test triples_sum_to_zero([25, 8, -5, 5, 14, 7, -5]) == false
    @test triples_sum_to_zero([1, 2, -3, -4, 5, -7, -8, 9, -6, 10, -11, -12, -6]) == true
    @test triples_sum_to_zero([8, -20, 7, 33, -6, 14, -9, 7, -6]) == false
    @test triples_sum_to_zero([1, 2, -3, -4, 5, -6, 75, -7, -8, 9, 9, -13, -11, -12, 2]) == true
    @test triples_sum_to_zero([1, 5, 2, 3, 4, 5, 6, -2, 9, 9, 10, -11, -12, -13, -14, -11]) == true
    @test triples_sum_to_zero([-20, 8, -20, -200, 33, -6, 4, 14, 8, 7, 32, 7, -20, 33, -6]) == false
    @test triples_sum_to_zero([2, -2, -4, 6, -7, -8, 9, 10, -12, -3, -8]) == true
    @test triples_sum_to_zero([25, -40, 8, 7, -5, 33, -6, 32, 14, 14, -20, 8]) == true
    @test triples_sum_to_zero([-21, -20, 7, 33, 7, 8, -6, 13, 9, 7, 7, -3, -6, 33]) == true
    @test triples_sum_to_zero([1, 2, 3, -2, -5, -6, -15, 7, -15]) == true
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, -6, 14, -9, 7, 33]) == false
    @test triples_sum_to_zero([2, 8, 10, 3, 4, 5, 6, -70, 9, 10, -13, -14, -15, 8]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -15, -80, 9, 11, -11, -12, -13, -15, -11]) == true
    @test triples_sum_to_zero([25, -20, -5, 11, 33, -6, 14, 9, 14, 7, 8, 11]) == true
    @test triples_sum_to_zero([2, -2, -80, 6, -7, -8, 9, 10, -12, -3, 6, -12]) == true
    @test triples_sum_to_zero([100, -400, -1, 2, -400, 4, -9, 100, -200]) == true
    @test triples_sum_to_zero([25, -20, 7, -61, 11, 33, -6, 14, 9, 14, 7, 8, 11]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -7, -6, 13, 9, 7, 7, 33, 7, -6]) == true
    @test triples_sum_to_zero([0, 0, 100, 10, 0, 12, 0, 0, 0, 0, 0, 100]) == true
    @test triples_sum_to_zero([1, 2, 3, -5, -6, -15, -10, 7, 7]) == true
    @test triples_sum_to_zero([12, 13, 14, -2, -3, -4, -8, 12, 12]) == true
    @test triples_sum_to_zero([2, -3, -4, 5, -13, -7, -8, 9, 10, -12]) == true
    @test triples_sum_to_zero([1, 3, 4, 5, 6, 7, -15, 14, 9, 10, -11, -12, -13, 14, -15, 7, 2, 14, 1]) == true
    @test triples_sum_to_zero([1, 1, 3, -800, -15, 4, 5, 6, 7, -15, 9, 11, -11, -12, -13, -14, -15, -11, 9, 1]) == true
    @test triples_sum_to_zero([25, 9, 8, 7, -5, 33, -6, 14, -21, 14, 7, 14]) == true
    @test triples_sum_to_zero([2, -2, -4, 5, 6, -199, -7, -8, -6, 9, 10, -3, -6]) == true
    @test triples_sum_to_zero([1, 2, -13, -200, 3, -800, -15, 4, 5, 6, 7, -15, -14, 8, 9, 11, -11, -12, -13, -14, -15, -11, -14]) == true
    @test triples_sum_to_zero([-21, -20, 7, 33, -4, -6, 13, 9, 7, 7, -3]) == true
    @test triples_sum_to_zero([1, 2, 9, 3, 3, 5, 6, -15, 9, 11, -11, -12, -13, -14, -15, -12]) == true
    @test triples_sum_to_zero([-20, -20, -200, 33, 4, -20, 14, 32, 7, 7, -20, 33]) == false
    @test triples_sum_to_zero([1, 2, -7, -3, -8, -4, -6, 5, -7, -8, 9, -12, -8]) == true
    @test triples_sum_to_zero([1, -3, -4, 5, 9, -7, -8, 9, 10, -11, 7, -12, 2]) == true
    @test triples_sum_to_zero([25, 8, -5, -10, -6, 14, 7, -5, 25]) == false
    @test triples_sum_to_zero([12, 13, 14, 12, -2, -3, -4, -8]) == true
    @test triples_sum_to_zero([25, 12, -20, 8, -5, 33, -6, 14, 9, 7, 7]) == true
    @test triples_sum_to_zero([1, -90, 2, -3, 5, 6, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([25, 33, -6, 14, 7, -5]) == false
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -7, 14, 9, 14, 7, 11, 11, -5, 11]) == true
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, -5, 14, -9, 7, 33]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -600, 700, -800, -51, -900, 1000, -50, 75, -70, -80]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 9, 7, 7, 14]) == true
    @test triples_sum_to_zero([2, -4, 6, -7, -8, 9, 10, -12, -3, -8, -8]) == true
    @test triples_sum_to_zero([0, -1, 0, 100, 0, 0, 12, 0, 0, 0, 0, -1, 0, 100, 0]) == true
    @test triples_sum_to_zero([13, 14, -2, -4, 12]) == false
    @test triples_sum_to_zero([1, 2, 3, -800, 4, 5, 6, 7, 9, 9, 12, -11, -12, -13, -40, -14, -15, -11]) == true
    @test triples_sum_to_zero([1, 2, -12, 3, 4, 5, 6, 7, 8, -12, 10, -12, -11, -12, -13, -14, -15, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, 4, -6, 3, -15, 3, 7, -5]) == true
    @test triples_sum_to_zero([25, 7, -5, 11, 33, -6, 14, 9, 7, 11, 33, 11, -200, 11]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -11, 5, 6, 7, -15, 14, 8, 9, 5, 10, 3, -11, -12, -13, -14, -15, -20, 2]) == true
    @test triples_sum_to_zero([13, 7, 25, -5, 75, -20, 8, 7, -5, 33, -6, 14, -4, 9, 14, 7, -10]) == true
    @test triples_sum_to_zero([-600, -20, 8, -20, 7, 33, -7, 14, 9, 7, 9, 9]) == false
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -6, -21, 14, 9, 14, 7, 11, 11, -5, 11]) == true
    @test triples_sum_to_zero([1, 2, -13, -200, 3, -800, -15, 4, 5, 6, 7, -15, -14, 8, 9, -11, -12, -13, -14, -15, -11, -14]) == true
    @test triples_sum_to_zero([-21, -20, 7, 33, 7, -6, 13, 7, -3]) == true
    @test triples_sum_to_zero([0, 12, 1, 2, 3, 3, 4, 5, -5, -10, -6, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([25, -20, 999, 8, 7, -5, 33, -6, 14, 9, 7, 7, 14]) == true
    @test triples_sum_to_zero([10, 20, 30, 32, 75, -40, -50, -20, -70, 100, 200, 300, -400, -500, -600, -80, 3, -800, -900, 1000, -50, 75, -80]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 32, 14, 9, 14, 25, 33, 25, 7, 14]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -11, 6, 7, -15, 2, 14, 8, 9, 10, -11, -12, -14, -15, 7, 3]) == true
    @test triples_sum_to_zero([2, 8, 10, 3, 4, 5, 6, 9, 10, 9, -14, -12, -13, -14, -15, 8]) == true
    @test triples_sum_to_zero([25, 9, 8, 7, -5, 33, -60, 14, -21, 14, 7, 14]) == true
    @test triples_sum_to_zero([25, -14, -5, 33, -6, 14, 14, -41, 7, -5, 33]) == false
    @test triples_sum_to_zero([1, 2, 3, -800, -15, 4, 5, -16, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -16, -11]) == true
    @test triples_sum_to_zero([-20, 8, -20, -200, 33, 33, -6, 6, 14, 8, 7, 7, 10]) == true
    @test triples_sum_to_zero([2, -2, -4, -80, 6, -7, -8, 9, 10, -12, -3, 6, 6]) == true
    @test triples_sum_to_zero([1, 2, -3, 13, 6, -8, 9, -12, -11, -12]) == true
    @test triples_sum_to_zero([11, 6, 13, 14, -2, -3, -4, 0, -8, 6]) == true
    @test triples_sum_to_zero([8, 10, 3, 4, 5, 6, 9, 10, -12, -13, -14, -15, 8, 8]) == true
    @test triples_sum_to_zero([1, -90, 2, -3, 5, -8, 9, 10, -11, -12, -8]) == true
    @test triples_sum_to_zero([-20, 8, -20, 7, 33, -6, 14, 8, 7, 7, 8, -6]) == false
    @test triples_sum_to_zero([10, 20, 30, -40, 75, -50, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, -8, 1000]) == true
    @test triples_sum_to_zero([-20, 8, -20, -21, 7, 33, -6, 14, 8, 7, 7]) == true
    @test triples_sum_to_zero([99, 0, 0, 100, 0, 0, 12, 12, 0, 0, 0, -1, 0, 100]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -20, -8, 9, -12]) == true
    @test triples_sum_to_zero([1, 2, 2, -10, 5, 6, -8, 9, 10, -11, -12, 1]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, 100, 200, 1000, 300, -400, -500, -600, 700, -800, -501, -7, 0, -50, 75, 30, -91, 300]) == true
    @test triples_sum_to_zero([1, 33, 3, 4, -5, -500, -10, 7]) == true
    @test triples_sum_to_zero([1, 2, -3, -20, 5, 6, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([25, 8, -5, -10, -6, 14, 7, 25]) == false
    @test triples_sum_to_zero([25, -20, 8, 7, -20, -5, 33, -6, 14, 9, 7, 7, 14]) == true
    @test triples_sum_to_zero([-900, 1, 2, 3, 4, -11, 6, 7, -15, 2, 14, 8, 9, 10, -11, -12, -14, -15, 7]) == true
    @test triples_sum_to_zero([11, 12, 13, -9, 10, -4, -3]) == true
    @test triples_sum_to_zero([6, 7, 25, -5, -20, 8, -5, 33, -6, 14, -4, 9, 15, 7, -10]) == true
    @test triples_sum_to_zero([2, -3, -3, 5, -11, 6, -7, -800, -8, 9, 10, -12]) == true
    @test triples_sum_to_zero([-800, 1, 2, 3, -800, -15, 4, 5, 6, 7, -15, 8, 9, 11, -11, -12, -13, -14, -15, -11, 9]) == true
    @test triples_sum_to_zero([2, -2, -4, -80, 6, -7, -8, -6, 9, 10, -12, -600, -90, -3, 6]) == true
    @test triples_sum_to_zero([1, 2, 8, 3, 4, 5, -2, 6, 8, 9, 10, -12, -14, -15, -2, 4]) == true
    @test triples_sum_to_zero([1, 2, 3, 3, 5, 6, 7, -15, 8, 9, 11, -11, -12, -80, -14, -15]) == true
    @test triples_sum_to_zero([1, -500, 2, -3, 5, 4, 6, -8, 9, 10, -61, -12]) == true
    @test triples_sum_to_zero([25, 33, 7, 33, -7, 14, 9, 14, 7, 8, -6, -6, -5, -6, -6]) == false
    @test triples_sum_to_zero([1, 2, 3, -800, 4, -9, 5, 6, 7, -15, 9, 9, 11, -11, -12, -13, -40, -41, -14, -15, -11, -11]) == true
    @test triples_sum_to_zero([-600, 1, 2, 3, 4, 7, -5, -6, 7, -5]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -11, -11, 9]) == true
    @test triples_sum_to_zero([1, 700, 2, -3, -4, 5, -8, -8, 9, 10, -11, -2, 2, -8, -11]) == true
    @test triples_sum_to_zero([1, 2, 3, 1, -2, -5, -15, 7, -15]) == true
    @test triples_sum_to_zero([32, 7, 8, 7, -5, -6, -91, 5, 9, 14, 3]) == false
    @test triples_sum_to_zero([-800, 1, -30, 2, 3, -800, -15, 4, 5, 6, 7, -15, 8, 24, 9, 11, -11, -12, -14, -15, -11, 1]) == true
    @test triples_sum_to_zero([-401, -5, -199, 100, -200, -400, -1, 2, -3, -14, 100]) == true
    @test triples_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 11, 33, -7, 14, 9, 14, 7, 11, 11, -5, 11, -5]) == true
    @test triples_sum_to_zero([25, 8, 7, -5, 33, -6, 14, 9, 14, 7, -6, -6]) == false
    @test triples_sum_to_zero([24, -20, 8, 8, 7, -5, -91, 33, -4, 9, 14, 7, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 5, 4, 7, 3, 14, 8, 9, 10, 2, -12, -14, -15, 7, -12]) == true
    @test triples_sum_to_zero([-20, 8, 7, 33, -6, 14, 8, 7, 7, 8, -6]) == false
    @test triples_sum_to_zero([1, 2, 1000, 4, 5, 6, 7, -15, -80, 9, 11, -11, -12, -13, -15, -11, 2]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -20, -70, -80, 100, 20, 200, 300, -400, -500, -599, 3, -800, -900, -501, 1000, -50, 75]) == true
    @test triples_sum_to_zero([-6, 25, 7, -5, 33, -6, 14, 7, 25]) == false
    @test triples_sum_to_zero(Int64[]) == false
    @test triples_sum_to_zero([1, -1]) == false
    @test triples_sum_to_zero([2, 2, 2]) == false
    @test triples_sum_to_zero([-1, 0, 1, 2, -2, -1]) == true
    @test triples_sum_to_zero([1, 2]) == false
    @test triples_sum_to_zero([1, 2, 3]) == false
    @test triples_sum_to_zero([-1, 0, 1]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5]) == false
    @test triples_sum_to_zero([-1, -2, -3, -4, -5]) == false
    @test triples_sum_to_zero([0, 0, 0, -20, 0, 0, -7, 0, 0]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -20, -30, 10, 20, 30, -10]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, 9, 14]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 14]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -11, -12, -13, 2, -15, 1]) == true
    @test triples_sum_to_zero([25, -20, 8, 0, 7, -5, 33, -6, 14, 9, 14]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, 300, 14, 700, -800, -900, 1000, 75]) == true
    @test triples_sum_to_zero([0, 0, -20, 0, 0, -14, 0, 0]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, 2, -15, 1, -12, 2]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, 100]) == true
    @test triples_sum_to_zero([100, -200, 300, -400, -1, 2, 0, -3, 4, -1]) == true
    @test triples_sum_to_zero([25, -20, 8, 0, 7, -5, 33, -6, 14, 9, 14, 14]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 6, -7, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 14, -50, -20]) == true
    @test triples_sum_to_zero([100, 300, -400, -1, 2, -3, 4]) == true
    @test triples_sum_to_zero([11, 12, 13, 14, -2, -3, 14, -4, 11, 11]) == false
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, 14, 9]) == true
    @test triples_sum_to_zero([25, 7, -5, 33, -6, 14, 9, 14]) == false
    @test triples_sum_to_zero([100, 200, 300, -400, -500, 300, 14, 700, -800, -900, 1000, 75, -500, 300]) == true
    @test triples_sum_to_zero([7, -20, 8, 7, -5, 33, -6, 14, 9, 14]) == false
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, -800, 1000, -50, 75, 75]) == true
    @test triples_sum_to_zero([-12, -200, 300, -400, -1, 2, 0, -3, 4, -1]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -11, -12, -90, 1, -13, 2, -15, 1]) == true
    @test triples_sum_to_zero([0, 0, 0, -20, 0, 0, -40, -7, 0, 0]) == true
    @test triples_sum_to_zero([10, 12, 13, 14, -2, -3, -4, 11]) == false
    @test triples_sum_to_zero([0, 0, -20, 0, 0, -14, 0, -11]) == true
    @test triples_sum_to_zero([25, -20, 8, 0, 7, -5, 33, -6, 14, 9, 14, 14, 25]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -11, -12, -13, 2, -14, 1, 2]) == true
    @test triples_sum_to_zero([10, 200, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 7, 100]) == true
    @test triples_sum_to_zero([100, -200, 300, -1, 2, -3, 300, 4]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 14, -50, -20, 9]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -7, -8, 9, 10, -11, -12, -8]) == true
    @test triples_sum_to_zero([10, 200, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 100]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, -14, 1, 2]) == true
    @test triples_sum_to_zero([0, 0, 0, 0, 0, -12, 0, 0, 0, 0]) == true
    @test triples_sum_to_zero([0, 0, 0, 0, 0, -7, 0, 0, 0]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, 2, -15, 1, -12, 2, -12]) == true
    @test triples_sum_to_zero([0, 1, 25, 3, 4, 5, -10, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([1, 2, 2, -4, 6, -7, -8, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, -14, 1, 2, 6]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -10, -12, -13, -2, 2, -15, 1]) == true
    @test triples_sum_to_zero([100, -200, 300, -1, 2, -3, 300, -10]) == false
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, 4, 9, 14]) == true
    @test triples_sum_to_zero([100, 300, -400, -500, 300, 14, 700, -800, -900, 1000, 75, 1000]) == true
    @test triples_sum_to_zero([25, -20, 8, 0, 7, -5, 33, -6, 14, 9, 14, 8]) == true
    @test triples_sum_to_zero([10, 12, 13, 14, -2, -3, -4, 11, 75]) == false
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 14, -50, -20, 9, 9]) == true
    @test triples_sum_to_zero([10, 100, 199, 300, -400, -500, 300, 14, 700, -800, 1000, 75]) == true
    @test triples_sum_to_zero([25, -20, 8, 0, 1, 7, 33, -6, 14]) == false
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -7, -8, 9, 100, -11, -12, -8]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 9, -5]) == true
    @test triples_sum_to_zero([0, 0, 0, -20, 0, -40, -7, 0, 0, 0]) == true
    @test triples_sum_to_zero([100, -200, 300, -1, -3, 300, -10]) == false
    @test triples_sum_to_zero([100, -40, -400, -1, 2, -3, 4, 4]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 14, -50, -20, -20]) == true
    @test triples_sum_to_zero([100, -40, -400, -1, 2, -3, -13, 4]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, 300, 14, 700, -800, -900, 1000, 75, -500]) == true
    @test triples_sum_to_zero([0, 0, 0, 0, 0, -1, -12, 0, 0, 0, 0]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 0, -5, -6, -10, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, 1, 2]) == true
    @test triples_sum_to_zero([100, 300, -400, -1, 4]) == true
    @test triples_sum_to_zero([-20, 8, -5, 33, -6, 14, 9, 14, -50, -20, -20]) == false
    @test triples_sum_to_zero([10, 200, 20, 30, -40, -41, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 100]) == true
    @test triples_sum_to_zero([200, 300, -399, -500, 300, 14, 700, -800, -900, 1000, 75, -500]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -13, -12, -13, 2, -15, 1, -12, 2, 3]) == true
    @test triples_sum_to_zero([0, -1, 0, -20, 0, 0, -14, 0, 0]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 0, -5, -6, -10, -40, 7, 3]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 14, -50, -20, -20, -20]) == true
    @test triples_sum_to_zero([-12, -200, 300, -400, -1, 2, 0, -3, 4, -1, 300]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, 33, -6, 9]) == false
    @test triples_sum_to_zero([100, 200, 299, -400, -500, 300, 14, 700, -800, -900, 1000, 75, -500, 300]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -41, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([0, -1, 0, 0, -20, 0, 0, -14, 0, 0]) == true
    @test triples_sum_to_zero([25, -20, -12, 9, 7, -5, 33, -6, 9, -5, 2, 9]) == true
    @test triples_sum_to_zero([100, 200, -400, -500, -600, 700, -800, -900, 1000, -50, 75]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, 74, -500, -600, 700, -800, 1000, -50, 75, 75]) == true
    @test triples_sum_to_zero([25, -20, 8, 0, -12, 7, -5, 33, -6, 14, 9, 14, 14, 25]) == true
    @test triples_sum_to_zero([0, 0, 0, 0, 0, -1, -12, 0, 0, 1, 0]) == true
    @test triples_sum_to_zero([200, 300, -399, -500, 300, 14, 700, -800, -900, 1000, 75, -500, 1000]) == true
    @test triples_sum_to_zero([10, 200, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -41, -500, -600, 700, -800, -900, 1000, -50, 7, 100]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, 300, 10, 700, -800, -900, 1000, 75, -500, 300]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, 3, 33, -6, 9, -5]) == true
    @test triples_sum_to_zero([-12, -200, 300, -400, -1, 0, -3, 4, -1, 300]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 700, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, 700]) == true
    @test triples_sum_to_zero([100, -199, 300, -199, -400, -1, 2, -3, 4]) == true
    @test triples_sum_to_zero([10, 12, 13, 14, -2, -3, 12, -4, 11]) == false
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -601, 700, -800, 1000, -50, 75, 75]) == true
    @test triples_sum_to_zero([25, -20, -12, 9, 7, -5, 33, -6, 9, -5, 2, 9, -20]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, -14, 1, 6]) == true
    @test triples_sum_to_zero([200, -399, -500, 300, 14, 700, -800, -900, 1000, 75, -500]) == true
    @test triples_sum_to_zero([100, 200, 299, -400, -500, 300, 14, 700, -800, -900, 1000, 75, -500, 300, 700]) == true
    @test triples_sum_to_zero([11, 13, 14, -2, -3, -4, -8]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 34, 14, -50, -20, 9, -50]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -41, -20, -30, 10, 20, 29]) == true
    @test triples_sum_to_zero([-70, -200, 300, -400, -1, 2, 0, -3, 4, -1]) == true
    @test triples_sum_to_zero([25, 8, -5, 33, -6, 14, 9, 14, -50, -20]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, 300, 14, 700, -800, -900, 1000, 75, -500, 300, -500]) == true
    @test triples_sum_to_zero([0, 1, 1000, 25, 4, 5, 0, -20, -30, 20, 30, 0]) == true
    @test triples_sum_to_zero([25, -20, 8, 0, -12, 7, -5, 33, -6, 9, 14, 14, 25]) == true
    @test triples_sum_to_zero([25, 8, -5, 33, -6, 14, 9, 14, -50, -20, 8]) == true
    @test triples_sum_to_zero([0, 1, 1000, 25, 4, 5, 0, -20, -30, 20, 30, -199, 0]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 14, -51, -20, 9, 33, -20]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -80, -90, 100, 200, 700, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, 700]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15, 2]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 700, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, 700, -900, -70]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -10, -12, -13, -2, 2, -15, 1, -10]) == true
    @test triples_sum_to_zero([-20, 8, -5, 33, -6, 14, 9, 14, -50, -20, -20, 9]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15, 2, -11]) == true
    @test triples_sum_to_zero([0, 0, 0, 0, -12, 0, 0, 0, 0]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, -13, 8, 9, 10, -11, -12, -13, 2, 1, 2, 4]) == true
    @test triples_sum_to_zero([100, 300, -400, -1, -400, 4]) == true
    @test triples_sum_to_zero([100, 300, -400, -400, 4, 100]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -80, -90, 100, 200, 700, 300, -400, -500, -600, -800, -900, 1000, -50, 75, 700]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 6, -7, -8, 9, 10, -11, -12, -7]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 1, 33, -6, 14, 9, 14, -50, -20]) == true
    @test triples_sum_to_zero([200, 300, -399, -500, 300, 14, 700, 299, -900, 1000, 75, -500, 1000]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, -800, 1000, -50, 75]) == true
    @test triples_sum_to_zero([-12, -200, 300, -1, 0, -3, 4, -1, 300]) == true
    @test triples_sum_to_zero([26, 32, -20, 8, -5, 33, -6, 14, 9, 14, -50, -20, -20]) == true
    @test triples_sum_to_zero([25, -12, -200, 300, -400, -1, 2, 0, -3, 4, -1]) == true
    @test triples_sum_to_zero([10, 12, 13, 14, -2, -3, 12, -4, 11, -2]) == false
    @test triples_sum_to_zero([100, 300, -400, 2, -3, 4]) == true
    @test triples_sum_to_zero([200, 300, -399, -500, 300, 14, 700, 301, -800, -900, 1000, 75, -500, 300]) == true
    @test triples_sum_to_zero([100, 300, -400, -3, 4]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -7, -14, -15, 2, -11]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, 9, 33]) == true
    @test triples_sum_to_zero([100, 200, 300, 74, -500, -600, 700, -800, 1000, -50, 75, 75, -800]) == true
    @test triples_sum_to_zero([-12, -200, 300, -400, -1, 0, -3, -1, 300]) == false
    @test triples_sum_to_zero([0, 0, 0, -20, 0, -7, 0, 0]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, -800, 1000, -50, 75, 75, -800]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -10, -12, -13, -2, 2, -14, 1]) == true
    @test triples_sum_to_zero([0, 0, -20, 0, -40, -7, 0, 0, 0]) == true
    @test triples_sum_to_zero([201, 300, -399, -500, 300, 14, 700, -800, -900, 1000, 75, -500, 1000]) == true
    @test triples_sum_to_zero([200, 300, -400, -500, 300, 14, 700, -800, -900, 1000, 75]) == true
    @test triples_sum_to_zero([201, 300, -399, -500, 300, 14, 700, -800, -900, 1000, 75, -500, 1000, -500]) == true
    @test triples_sum_to_zero([10, 12, 13, 14, -2, -3, -4, -2]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 7, 8, 9, 10, -11, -12, -13, -14, -15, 2]) == true
    @test triples_sum_to_zero([0, 1, 1000, 25, 4, 5, 0, -20, -30, 20, 30, -12, -199, 0, 0]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -41, -20, -2, -30, 10, 20, 29]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, 2, -15, 1, -12, -11, 2, -12]) == true
    @test triples_sum_to_zero([-2, 11, 12, 13, 14, -2, -3, 14, -4, 11, 11]) == false
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, -60, 9]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, -50]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, 2, -11, -12, -13, 2, -14, 1, 2]) == true
    @test triples_sum_to_zero([200, 300, 74, -500, -600, 700, -800, 1000, -50, 75, 75, -800]) == true
    @test triples_sum_to_zero([200, 300, -399, -500, 14, 700, 299, -900, 1000, 75, -500, 1000]) == true
    @test triples_sum_to_zero([10, 200, 20, 30, -40, -50, -60, -70, -600, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 7, 100]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -20, -30, 10, 20, 30, -10, -30, 10, 4]) == true
    @test triples_sum_to_zero([10, 12, 13, 14, -2, -3, 11, 12, -4, 11, -3]) == false
    @test triples_sum_to_zero([0, 0, 0, 0, 0, -1, -12, 0, -1, 0, 0, 0]) == true
    @test triples_sum_to_zero([10, 12, 13, 14, -2, -3, -4, 3, 11, 75]) == false
    @test triples_sum_to_zero([10, -14, 12, 13, 14, -2, -3, 12, -4, 11, 13]) == false
    @test triples_sum_to_zero([100, -200, 300, -1, -3, 300, -10, -1]) == false
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -20, -30, 10, 20, 30, -10, -30, 10, 4, 20]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -600, -400, 700, -800, -900, 1000, -50, 75]) == true
    @test triples_sum_to_zero([1, 2, 3, 199, 4, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, -14, 2]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -20, -30, 20, 30, -10, -30, 10, 4]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 2, 34, 14, -50, -20, 9, -50]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -41, -20, -2, -30, 10, 20, 29, 29]) == true
    @test triples_sum_to_zero([-2, 11, 12, 13, 14, -2, -3, 14, -4, 11]) == false
    @test triples_sum_to_zero([25, -20, 8, 8, -5, 33, -6, 14, 9, 14]) == true
    @test triples_sum_to_zero([10, 12, 13, 14, -2, -4, 11, 75]) == false
    @test triples_sum_to_zero([0, 1, 2, 2, 4, 5, -10, -20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([200, -399, -500, 300, -50, 700, -800, 199, -900, 1000, 75, -500]) == true
    @test triples_sum_to_zero([25, -20, 0, -12, 7, -5, 33, -6, 9, 14, 14, 25, 25]) == true
    @test triples_sum_to_zero([0, 0, 0, -20, 0, 0, -40, -7, 0, 0, 0, 0]) == true
    @test triples_sum_to_zero([-12, -200, 301, -400, -1, 0, -3, 4, -1, 300]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 14, -20, 9, 33, -20, 25]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -20, -30, 2, 10, 20, 30, -10, -30, 10, 4, 20]) == true
    @test triples_sum_to_zero([100, -200, 300, -1, 2, -3, 300, 4, 100]) == true
    @test triples_sum_to_zero([25, -20, 8, -6, 0, -4, 7, -5, 200, -6, 14, 9, 14]) == true
    @test triples_sum_to_zero([10, 12, 13, 14, -2, -3, 12, -4, 11, -8, 13]) == true
    @test triples_sum_to_zero([100, 300, -400, 14, -3, 4]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 0, -5, -6, -10, -40, 8, 3, -40]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 1, 33, 7, 14, 9, 14, -50, -20]) == true
    @test triples_sum_to_zero([-12, -200, 300, -400, -1, 0, -200, -3, 4, -1, 300]) == true
    @test triples_sum_to_zero([25, -20, 8, 13, -5, 33, -6, 14, 9, 14, -50, -20, 9]) == true
    @test triples_sum_to_zero([100, 200, 74, -500, -600, 700, -800, 6, 1000, -50, 99, 75, 75, -800, 200]) == true
    @test triples_sum_to_zero([0, -1, 0, -20, 0, 0, -15, 0, 0]) == true
    @test triples_sum_to_zero([25, -20, 9, 74, -5, 33, -6, 14, 4, 9, 14]) == true
    @test triples_sum_to_zero([25, 8, 0, -12, 7, -5, 33, -6, 14, 14, 25]) == false
    @test triples_sum_to_zero([10, 100, 199, 20, -400, -500, 300, 14, 700, 9, -800, 1000, 75]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 34, -10, 7]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -11, -12, -13, 2, -39, -15, 1]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, -800, 1000, -50, 75, -800]) == true
    @test triples_sum_to_zero([0, 0, 0, -20, 0, 0, -40, -7, 1, 0, 0]) == true
    @test triples_sum_to_zero([10, 11, 13, 14, -2, -3, 12, -4, 11, -2, 12]) == false
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 700, 300, 76, -400, -500, -600, 700, -800, -900, 1000, -50, 75, 700, -40]) == true
    @test triples_sum_to_zero([-600, -20, -30, 8, 7, 34, -6, 9, 8]) == false
    @test triples_sum_to_zero([0, 13, 2, 3, 4, 5, -10, -20, -30, 20, 30, -10, -30, 10, 4]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, -500, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, -500]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, 1, 2, 6]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 34, -10, 7, -6]) == true
    @test triples_sum_to_zero([25, 8, 7, -5, 33, 14, 9]) == false
    @test triples_sum_to_zero([100, 200, 300, 74, -500, -600, 700, -800, 1000, 75, 75, -800]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -69, -80, -90, 100, 200, 700, 300, 76, -400, -500, -600, 700, -800, -900, 1000, -50, 75, 700, -40]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, -10, -20, -31, 9, 20, 2, 30]) == true
    @test triples_sum_to_zero([0, -1, 0, 0, -20, 0, -14, 0, -14, 0, 0]) == true
    @test triples_sum_to_zero([25, -20, 8, 8, -5, 33, -6, 14, 9, 14, -5]) == true
    @test triples_sum_to_zero([100, 300, -400, -1, 2, -3, -400, 4]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, -800, 1000, -50, 75, 75, -800, -50]) == true
    @test triples_sum_to_zero([200, 300, -400, -500, 300, 14, -800, -900, 1000, 75]) == true
    @test triples_sum_to_zero([-70, -200, 300, -400, -1, 2, 0, -3, 4]) == true
    @test triples_sum_to_zero([-600, -20, -30, 8, 7, 34, -6, 9, 8, 8]) == false
    @test triples_sum_to_zero([25, 5, -20, 8, 7, -5, 33, -6, 14, -60, 9]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, -10, -20, -31, 9, 20, 2]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, 4, 1000, -50, 25, -800, 100]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 700, 300, -400, -600, 700, -800, -900, 999, -50, 75, 700, -900, -70]) == true
    @test triples_sum_to_zero([10, 200, 20, 30, -40, -41, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, 10, -900, 1000, -50, 100]) == true
    @test triples_sum_to_zero([25, 5, -20, 8, 7, -5, 33, -6, -10, -60, 9]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 9, 14, -20, 9, 33, 25, 14]) == true
    @test triples_sum_to_zero([200, 299, -399, -500, 300, -10, 301, -800, -900, 1000, 75, -500, 300]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 34, -10, -6, -6]) == true
    @test triples_sum_to_zero([1, -30, 3, 4, 5, 6, -13, 8, 9, 10, -11, -12, -13, 2, 1, 2, 4]) == true
    @test triples_sum_to_zero([100, -200, 300, -1, -3, -10, -11, -1]) == false
    @test triples_sum_to_zero([200, 300, -399, -500, 300, 14, 700, 301, -800, -900, 1000, 75, -500, 300, -800]) == true
    @test triples_sum_to_zero([26, -6, 32, -20, 8, -5, 33, -6, 14, 9, 14, -50, -20, -20]) == true
    @test triples_sum_to_zero([-2, 11, -11, 13, 14, -2, -3, 14, -4, 11, 11, 14]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, -7, -8, 9, 10, -11, -12, -8]) == true
    @test triples_sum_to_zero([100, -40, -400, -1, 2, 2, -3, 4, 4]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -20, -30, 10, 20, 30, -10, -30, 10, 7, 75]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 100, 33, -6, 14, 9, 13, -50, 9, -20, 14]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, 33, -2, -7]) == false
    @test triples_sum_to_zero([0, 0, 0, -20, 0, -7, 0, 0, 0]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 1, 4, 5, -41, -20, -2, -30, 20, 29, 29]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, -60]) == true
    @test triples_sum_to_zero([0, 1, 25, 3, 4, 5, -1, -10, -20, 20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -11, -12, -90, 1, -13, 1, -15, 1, -40]) == true
    @test triples_sum_to_zero([-20, -5, 33, -6, 14, 9, 14, -20, -20, 9]) == false
    @test triples_sum_to_zero([0, -1, 0, 0, -20, 0, 0, 1, -14, 0, 0]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -800, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, 1, 2, 6]) == true
    @test triples_sum_to_zero([-12, -200, 300, -1, -1, -3, 4, -1]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, -800, -900, 999, -50, 75, 75]) == true
    @test triples_sum_to_zero([1, 2, 3, 5, -5, -6, 34, -10, 7]) == true
    @test triples_sum_to_zero([0, 1, 25, 3, 4, 5, -9, -20, -30, 10, 20, 30, 4]) == true
    @test triples_sum_to_zero([0, 0, 0, -20, 0, 0, 0, 0]) == true
    @test triples_sum_to_zero([25, 8, 0, -12, 7, -5, -6, 14, 14, 25, 7]) == false
    @test triples_sum_to_zero([100, 300, 5, -400, 0, -1, 4]) == true
    @test triples_sum_to_zero([10, 200, 20, 30, -40, -399, -50, -60, -70, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 100]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 9, 33, -6, 14, 9, 34, 14, -50, -20, 9, -50]) == true
    @test triples_sum_to_zero([200, 300, -399, -500, 300, 14, 700, 301, -800, -900, 1000, -500, 300, -800, -900]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3, -12, -13, 2, -15, 1, -12, 2, 3]) == true
    @test triples_sum_to_zero([-12, -200, 300, -1, -3, 4, -1, 300, -12]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, 14, 9, 8]) == true
    @test triples_sum_to_zero([100, -200, 300, -400, -1, 2, 0, 4, -1]) == true
    @test triples_sum_to_zero([25, -20, 8, 0, 7, -5, 33, -6, 14, 9, 14, 8, -5]) == true
    @test triples_sum_to_zero([100, -200, 300, -3, -1, 201, 2, -3, 300, 4, 100]) == true
    @test triples_sum_to_zero([100, -200, 300, 2, -3, 300, -10]) == false
    @test triples_sum_to_zero([10, 12, 13, -2, -3, 12, -4, 11, 12]) == false
    @test triples_sum_to_zero([10, 100, 199, 20, -400, -500, 300, 14, 700, 9, -800, 1000, 75, 20]) == true
    @test triples_sum_to_zero([200, 300, -399, -500, 300, 14, 700, -800, -900, 1000, 75, -500, -501, -800, 14]) == true
    @test triples_sum_to_zero([25, 5, -20, 7, -5, 33, -6, 14, -60, 9]) == true
    @test triples_sum_to_zero([0, 0, 0, -6, 0, 0, 0, -12, 0, 0, 0, 0]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, 200]) == true
    @test triples_sum_to_zero([-600, -20, -30, 8, 7, 34, -6, 9, 8, 34]) == false
    @test triples_sum_to_zero([0, -1, 0, 0, -20, 100, 0, 0, -14, 0, 0]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -601, 700, -800, 1000, -50, 75, -49, 75]) == true
    @test triples_sum_to_zero([-70, -200, 300, -400, -1, -69, 0, -3, 4, 300, -1]) == true
    @test triples_sum_to_zero([1, -800, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -11, -12, -13, 2, -14, 1, 2]) == true
    @test triples_sum_to_zero([-399, 7, -5, 33, -6, 14, 9, 14]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -11, -12, -90, 1, -13, 1, 1, -40]) == true
    @test triples_sum_to_zero([0, 0, 0, 0, 0, -1, -12, -1, 0, 0, 0]) == true
    @test triples_sum_to_zero([1, 2, 2, -4, 6, -7, -9, 9, 10, -11, -12]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 33, -6, 14, 2, 34, 14, -50, -20, 9, -50]) == true
    @test triples_sum_to_zero([-20, -5, 33, -6, 14, 9, 14, -20, -20, 9, -20]) == false
    @test triples_sum_to_zero([-20, 8, 7, -5, 33, 14, 9]) == false
    @test triples_sum_to_zero([10, 200, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, -400, -41, -500, -600, 700, -800, -900, 1000, -50, 7, 100]) == true
    @test triples_sum_to_zero([25, -20, 7, -5, 33, -6, -10, -60, 9, -60]) == true
    @test triples_sum_to_zero([1, -10, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -16, 2]) == true
    @test triples_sum_to_zero([-20, 8, 7, -5, 33, 14, 9, 33]) == false
    @test triples_sum_to_zero([0, 76, 25, 3, 4, 5, -1, -10, -20, 20, -30, 10, 20, 30]) == true
    @test triples_sum_to_zero([-399, -5, 33, -6, 14, 9, 14]) == false
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 700, 300, -400, -600, 700, -800, -900, 999, -50, 75, 700, -900, -70, 700]) == true
    @test triples_sum_to_zero([10, -14, 12, 13, -69, 14, -2, -3, 12, -4, 11, 13]) == false
    @test triples_sum_to_zero([0, 0, 0, -19, 0, -7, 0, 0, 0]) == true
    @test triples_sum_to_zero([7, -20, 8, 7, 200, -5, -6, 14, 9, 14]) == false
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -20, -30, 10, 20, 30, -10, -30, 10, 4, 1]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, 14, 9, 26, 14, -20, 9, 33, -20, 25]) == true
    @test triples_sum_to_zero([10, 200, 20, 30, -40, -50, -60, -70, -600, -80, -90, 100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 7, 100, -50]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 700, 300, -400, -500, -600, 700, -800, -900, 1001, -50, 75, 700, -900, 13, -70]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 9, 10, -10, -12, -13, -2, 2, -15, 1, -10]) == true
    @test triples_sum_to_zero([0, 0, 0, 0, 0, 0, 0, 0]) == true
    @test triples_sum_to_zero([25, 5, -20, 8, 7, -5, 33, -6, -60, 9]) == true
    @test triples_sum_to_zero([10, 12, 13, -2, -3, 12, -4, 11, 11, -2]) == false
    @test triples_sum_to_zero([-2, 11, 15, 12, 13, 14, -2, -3, 14, -4, 11]) == false
    @test triples_sum_to_zero([100, 200, 300, 74, -500, -600, 700, -800, 1000, -50, 75, 75, -800, 300]) == true
    @test triples_sum_to_zero([25, -20, 26, 13, -5, 33, -6, 14, 9, 14, -50, -20, 9]) == true
    @test triples_sum_to_zero([1, -10, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -16, -13]) == true
    @test triples_sum_to_zero([1, 2, -3, -4, 5, 6, -7, -8, 9, 100, -11, -8]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 34, -15, -10, 7, -6]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 7, 8, 9, -40, 10, -11, -12, -90, 1, -13, 2, -15, 1]) == true
    @test triples_sum_to_zero([200, 300, -399, -500, 14, 700, 299, -900, 1000, 75, -500, 1000, -500]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, 100]) == true
    @test triples_sum_to_zero([-70, -200, 300, -400, -2, -1, 2, 0, -3, 4, -1]) == true
    @test triples_sum_to_zero([24, -20, 8, 7, -5, 33, -6, 14, 9]) == false
    @test triples_sum_to_zero([100, 300, -400, -400, 4, 100, 100]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, 3, 33, -6, 9, -5, -20, 3]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 33, -6, 14, 2, 34, 14, -50, -20, -19, 9, -50]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 8, 8, 9, -40, 10, -11, -12, -90, 1, -13, 1, 1, -40]) == true
    @test triples_sum_to_zero([25, -20, 7, 33, -2, -7]) == false
    @test triples_sum_to_zero([1, 2, -13, 3, 4, 5, 6, 7, 8, 9, -40, 10, -11, -12, -13, 2, -6, 3, 1, 2]) == true
    @test triples_sum_to_zero([100, 300, -400, -400, 4, 100, 300]) == true
    @test triples_sum_to_zero([1, -4, 2, 3, 5, -5, -6, 34, 7, -10, 7, -10]) == true
    @test triples_sum_to_zero([100, 200, -400, -500, -600, 700, -800, -900, 1000, -50, 75, -50]) == true
    @test triples_sum_to_zero([100, 200, 299, -400, -500, 300, 14, 700, -800, -900, 1000, 75, -500, -30, 300, 700]) == true
    @test triples_sum_to_zero([300, -400, -500, 300, 14, 700, -800, -900, 1000, 75, 1000]) == false
    @test triples_sum_to_zero([100, 200, 300, 201, -400, -500, -600, 700, -800, 1000, -50, 75, 75, 200]) == true
    @test triples_sum_to_zero([0, -1, 0, 0, -20, 0, 0, 1, -14, 0, 0, -14]) == true
    @test triples_sum_to_zero([25, 5, -20, 7, -5, 75, 33, -6, 14, -60, 9]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, -50, 14, 9]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -601, 700, -800, 1000, -50, 75, 75, -800]) == true
    @test triples_sum_to_zero([100, 300, -400, -500, -600, 700, 4, 1000, -50, 25, -800, 100]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -11, -12, 2, -14, 1, 2, 9]) == true
    @test triples_sum_to_zero([-12, -200, 301, -400, -1, 0, 4, -1, 300]) == false
    @test triples_sum_to_zero([0]) == false
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, 1, 2, 6, 8]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -41, -20, -2, -30, 10, 20, 29, 29, 3]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -20, -30, 2, -2, 20, 30, -10, -30, 10, 4, 20]) == true
    @test triples_sum_to_zero([10, 12, 13, 199, -2, 12, -3, 12, -4, 11, 12]) == false
    @test triples_sum_to_zero([1, 2, 3, 5, 6, 7, 8, 9, -40, 9, 10, -10, -12, -13, -2, 2, -15, 1, -10]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -30, 10, 20, 30, -10]) == true
    @test triples_sum_to_zero([-12, 25, -20, -12, 9, 7, -5, 33, -6, 9, -5, 2, 10, -20]) == true
    @test triples_sum_to_zero([1, 2, 2, -4, 6, -7, -8, 9, -14, -11, -12, -7]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 700, 300, -400, -500, -600, 700, -800, -900, 1001, -50, 75, 700, -900, 13, -70, -900]) == true
    @test triples_sum_to_zero([0, 0, 0, 0, -1, -12, 0, -1, 0, 0, 0]) == true
    @test triples_sum_to_zero([10, 11, 13, 10, 14, -2, -3, 12, -4, 11, -2, 12]) == false
    @test triples_sum_to_zero([0, -1, 1, 0, 0, -20, 0, 0, 1, -14, 0, 0]) == true
    @test triples_sum_to_zero([0, 1, 2, 3, 4, 5, -10, -30, 10, 20, 31, 30, -10]) == true
    @test triples_sum_to_zero([10, -601, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 700, 300, -400, -600, 700, -900, 999, -50, 75, 700, -900, -70, 700, -70]) == true
    @test triples_sum_to_zero([2, 3, 4, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, 1, 2, 6]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, -1, 4, 9, 14, 33]) == true
    @test triples_sum_to_zero([1, 2, 3, 5, -3, 6, 7, 8, 9, -40, 9, 10, -10, -12, -12, -2, 2, -15, 1, -10]) == true
    @test triples_sum_to_zero([100, 200, 300, -400, -500, -600, 700, -800, -900, 1000, 75, 100]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -90, 1, -13, 1, 1, -40]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 1, 2]) == true
    @test triples_sum_to_zero([-12, -200, 300, -400, -1, 0, -3, 4, -1]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, 14, 10, 9]) == true
    @test triples_sum_to_zero([0, 0, -20, 0, 0, -40, -7, 1, 0, 0]) == true
    @test triples_sum_to_zero([100, 199, 20, -400, -500, 300, 14, 700, 9, -800, 1000, 75, 20]) == true
    @test triples_sum_to_zero([25, 12, -20, 8, 7, -5, 33, -6, 14, 9]) == true
    @test triples_sum_to_zero([1001, 1, 2, 3, 4, 5, -41, -20, -30, 10, 20, 29]) == true
    @test triples_sum_to_zero([1, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15, 2]) == true
    @test triples_sum_to_zero([-200, 300, -1, 2, -3, 300, -10]) == false
    @test triples_sum_to_zero([0, 1, 1001, 1000, 25, 4, 5, 0, -20, -30, 20, 30, -12, -199, 0, 0]) == true
    @test triples_sum_to_zero([100, 300, -400, -400, 4, 100, 100, -400, -400]) == true
    @test triples_sum_to_zero([10, 20, 30, -40, -50, -60, -80, -90, 200, 700, 300, -400, -500, -600, 700, -800, -900, 1000, -50, 75, -50]) == true
    @test triples_sum_to_zero([0, -1, 0, -20, 0, 0, 1, -14, 0, 0]) == true
    @test triples_sum_to_zero([25, 8, 0, 1, 7, 33, -6, 14]) == false
    @test triples_sum_to_zero([-12, 25, -20, -12, 7, -5, 33, -6, 9, -5, 2, 10, -20]) == true
    @test triples_sum_to_zero([10, -601, 20, 30, -40, -50, -60, -70, -80, -90, 100, 200, 700, 300, -400, -600, 700, -900, 999, -50, 75, 700, -900, -70, 700, -70, 300]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 7, 8, 9, -40, 10, -10, -12, -600, -2, 2, -15, 1, -10, -600]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, -40, 10, -10, -12, -13, -2, 2, -15, 1, -10, -13]) == true
    @test triples_sum_to_zero([200, -400, -500, 300, 14, 700, -800, -900, 1000, 75, -500]) == true
    @test triples_sum_to_zero([-80, -199, 300, -199, -400, -1, 2, 7, -3, 4]) == true
    @test triples_sum_to_zero([0, 0, 0, -20, 0, 0, -15, 0, 0]) == true
    @test triples_sum_to_zero([25, 12, -20, 8, 7, -5, 33, 0, -6, 14, 9]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, 2, -15, 4, 1, -12, 2, -12]) == true
    @test triples_sum_to_zero([-60, 100, -40, -400, 5, 3, -1, 2, -3, -13, 4]) == true
    @test triples_sum_to_zero([25, -20, 8, 7, -5, 33, -6, 14, -60, 9, 7]) == true
    @test triples_sum_to_zero([0, 0, -20, 0, 0, -14, 0, -11, -11]) == true
    @test triples_sum_to_zero([-2, 11, -11, 13, 14, -2, -3, 14, -4, 11, 11, 14, 11]) == true
    @test triples_sum_to_zero([2, 3, 4, 5, 6, 6, -13, 8, 9, -40, 10, -11, -12, -13, 2, 1, 2, 6]) == true
    @test triples_sum_to_zero([7, 14, -20, 8, 7, 199, -5, -6, 31, 14, 9, 14]) == false
    @test triples_sum_to_zero([25, -12, -200, 300, -400, -1, 2, 0, 11, 4, -1]) == true
    @test triples_sum_to_zero([1, 2, -13, 3, 4, 5, 6, 7, 8, 9, -40, 10, -11, -12, -13, 2, -6, 4, 1, 2, 1]) == true
    @test triples_sum_to_zero([1, -10, 2, 3, 5, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -16, -13, 9]) == true
    @test triples_sum_to_zero([100, -40, -400, -1, 2, 2, -3, 4, 4, 2]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -13, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, -14, 1, 2]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, -5, -6, 34, -10, 7, -6, 7]) == true
    @test triples_sum_to_zero([200, 300, 74, -500, -600, 700, -800, 1000, -50, 75, -801, 75, -800]) == true
    @test triples_sum_to_zero([25, -20, 8, -5, 1, 33, -6, 14, 9, -8, 14, -50, -20]) == true
    @test triples_sum_to_zero([1, 2, 3, 4, 5, 6, 7, -13, 8, 9, -40, 10, -11, -12, -13, 2, 1, 6]) == true
    @test triples_sum_to_zero([25, -20, 8, 14, -5, 33, -6, 14, 9, 14, -50, -20, -20]) == true
end
