@testitem "057_monotonic_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "057_monotonic.jl"))
    @test monotonic([10, 9, 8, 7, 6]) == true
    @test monotonic([1, 1, 1, 1, 1]) == true
    @test monotonic([-5, -7, -9, -11]) == true
    @test monotonic([1, 1, 2, 3, 3, 3, 4, 5]) == true
    @test monotonic([5, 4, 3, 3, 3, 2, 1, 1]) == true
    @test monotonic([1, 1, 1, 2, 1, 1, 1]) == false
    @test monotonic([1, 1, 1, 1]) == true
    @test monotonic([1, 2, 2, 3]) == true
    @test monotonic([3, 2, 2, 1]) == true
    @test monotonic([1, 3, 2, 4]) == false
    @test monotonic([3, 4, 4]) == true
    @test monotonic([2]) == true
    @test monotonic([5, 1, 1, -7, 1, 5]) == false
    @test monotonic([2, 1, 2]) == false
    @test monotonic([1, 1]) == true
    @test monotonic([1, 1, 1]) == true
    @test monotonic([5, 1, -7, -9, 1, 5, 5]) == false
    @test monotonic([5, 1, -7, -9, 1, 5]) == false
    @test monotonic([10, 9, 8, 6]) == true
    @test monotonic([-5, -7, -9, -9, -11]) == true
    @test monotonic([-7, -9, 1, 5]) == false
    @test monotonic([10, 9, 8, 7, 7]) == true
    @test monotonic([5, 4, 3, 3, 3, 2, 1]) == true
    @test monotonic([5, 1, -9, 1, 5]) == false
    @test monotonic([10, -11, 9, 8, 7, 6, 6]) == false
    @test monotonic([10, 1, 1]) == true
    @test monotonic([5, 1, -10, -7, -9, 1, 2, 5]) == false
    @test monotonic([1]) == true
    @test monotonic([-7, -9, 1, 3, -9, 5]) == false
    @test monotonic([1, 1, 1, 2, 1, 1, 1, 1]) == false
    @test monotonic([7, 1, 1, 1]) == true
    @test monotonic([-7, -9, -11]) == true
    @test monotonic([5, 4, 3, 3, 2, 1]) == true
    @test monotonic([10, 9, 8, 7, 7, 7, 7]) == true
    @test monotonic([5, 1, -10, -9, 1, 2, 5]) == false
    @test monotonic([3, 2, 7, 4, 2]) == false
    @test monotonic([-7, -9, 1]) == false
    @test monotonic([5, 1, -10, 7, -9, 1, 2, 5]) == false
    @test monotonic([3, 2, 6, 7, 2, 6]) == false
    @test monotonic([1, 1, 5, 1, 1, 1]) == false
    @test monotonic([-5, -7, -11, -11]) == true
    @test monotonic([3, 6, 2, 6, 7, 2]) == false
    @test monotonic([5, 4, 3, 3, 3, 2, 4]) == false
    @test monotonic([10, 9, 8, 7, 7, 7, 7, 7]) == true
    @test monotonic([3, 2, 6, 1, 7, 2]) == false
    @test monotonic([1, 1, 1, 1, 2, 1, 1]) == false
    @test monotonic([1, 2, 2, 7]) == true
    @test monotonic([3, -7, -11, -7, -11, -11]) == false
    @test monotonic([1, 1, 1, 2, 2, 1, 1]) == false
    @test monotonic([-5, -9, -11, -11]) == true
    @test monotonic([5, 5, 1, 1, -7, -7]) == true
    @test monotonic([-7, -10, -11]) == true
    @test monotonic([4, 5, 3, 3, 3, 4]) == false
    @test monotonic([1, 0, 1]) == false
    @test monotonic([1, 1, 1, 1, 2, 1, 1, 1]) == false
    @test monotonic([1, 1, 1, 2, 1, 1]) == false
    @test monotonic([2, 5, 4, 3, 3, 3, 2, 1, 1]) == false
    @test monotonic([2, 2]) == true
    @test monotonic([-7, -9, 1, -9, 5]) == false
    @test monotonic([4, 5, 3, 3, 3, 4, 3]) == false
    @test monotonic([5, 3, 3, 3, 3]) == true
    @test monotonic([9, -7, 1]) == false
    @test monotonic([1, 1, 4, 1]) == false
    @test monotonic([1, 1, 1, 2, 1, 3, 1]) == false
    @test monotonic([1, 8]) == true
    @test monotonic([3, 1, 3, 2, 3]) == false
    @test monotonic([5, 4, 6, 3, 2, 2, 1]) == false
    @test monotonic([5, 4, 3, 3, 7, 2, 1]) == false
    @test monotonic(Union{}[]) == true
    @test monotonic([2, 1, 2, 2, 7, 7]) == false
    @test monotonic([2, 1, 2, 2]) == false
    @test monotonic([5, 4, 3, 1, 1, 3]) == false
    @test monotonic([1, 1, -7, 1, 1, 2, 1, 1, 1]) == false
    @test monotonic([1, 0, 1, 1, 1]) == false
    @test monotonic([5, 1, -7, -9, 1, 6]) == false
    @test monotonic([5, 4, 6, 3, 2, 2, 5, 5]) == false
    @test monotonic([-11, 2, 7, 4, 2]) == false
    @test monotonic([5, 1, -10, 7, -9, 1, 2, 5, 1]) == false
    @test monotonic([10, 10, 8, 0, 7, 7]) == false
    @test monotonic([65.42404804168314, -27.467401242304092, 1.1695217804835494, -88.22454119231631, -43.03246997899461, 6.289214420714728, 62.246881897996445, -27.613728995144186, -89.64771597158368, 91.94959500461121]) == false
    @test monotonic([-11, -7, -9, -11]) == false
    @test monotonic([-5, -9, -11]) == true
    @test monotonic([-11, -7, -9, -11, -11]) == false
    @test monotonic([5, 1, 1, 0, 1, 5]) == false
    @test monotonic([-11, 0, 10, 1, 1, 10]) == false
    @test monotonic([10, 9, 8, 7, 11, 6]) == false
    @test monotonic([9, -7, 1, 9]) == false
    @test monotonic([9, -7, 1, 9, 9, -7]) == false
    @test monotonic([2, -7, -11, -11]) == true
    @test monotonic([11, -7, 1, 1]) == false
    @test monotonic([10, 9, 8, 7, 8, 7, 7, 7]) == false
    @test monotonic([1, 2, 1, -7, 2, 1, 2, 1, 1, 1]) == false
    @test monotonic([1, 1, 1, 1, 1, 1]) == true
    @test monotonic([1, 2, 3, 4, 5, 4, 3, 2, 1]) == false
    @test monotonic([5, 4, 3, 2, 1, 2, 3, 4, 5]) == false
    @test monotonic([1, 3, 5, 4, 4, 6]) == false
    @test monotonic([2, 2, 2, 1, 1, 1]) == true
    @test monotonic([10, 2, 5, 3, 2, 6, 9, 7, 5, 4]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 4]) == false
    @test monotonic([5, 4, 3, 2, 1, 1, 1, 2, 3, 4, 5]) == false
    @test monotonic([1, 1, 3, 3, 2, 2, 4, 4]) == false
    @test monotonic([-2, -1, 0, 1, 2, 1, 0, -1, -2]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2, 1]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic([2, 2, 2, 1, -2, 1]) == false
    @test monotonic([1, 1, 3, 3, 2, 2, 4, 5, 4]) == false
    @test monotonic([1, 1, 3, 3, 2, 2, 4, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 6]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 1, 4, 4, 4]) == false
    @test monotonic([2, 2, 2, -2, 1]) == false
    @test monotonic([5, 2, 4, 3, 1, 2, 3, 4, 3, 5]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 1, 4, 4, 4, 1]) == false
    @test monotonic([1, 3, 4, 6, 4, 3, 2, 1, 2]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 4, 5, 2, 4, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic([1, 1, 3, 5, 4, 4, 6]) == false
    @test monotonic([2, 2, 1, 1, 2, 0, 1, 4, 4, 4]) == false
    @test monotonic([1, 3, 4, 6, 4, 3, 2, 1, 2, 1]) == false
    @test monotonic([1, 1, 3, 5, 4, 5, 6, 5]) == false
    @test monotonic([1, 3, 5, 4, 4, 6, 4]) == false
    @test monotonic([2, 2, 2, -2, 1, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 6, 1]) == false
    @test monotonic([2, 2, 2, -2, 1, 0, 1]) == false
    @test monotonic([10, 3, 5, 3, 2, 6, 9, 7, 5, 4]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 6, 7]) == false
    @test monotonic([2, 2, 2, 1, -2, 1, 3, 2]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2, 1, -1, 5]) == false
    @test monotonic([2, 2, 2, -2, 1, 0, 3, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 1, 2, 3, 4, 2]) == false
    @test monotonic([5, 4, 3, 2, 1, 1, 1, 2, 3, 4, 5, 3]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 0, 6, 7, 7]) == false
    @test monotonic([1, 2, 3, 3, 2, 2, 4, 4]) == false
    @test monotonic(Bool[0, 1, 0, 0, 1, 1, 1]) == false
    @test monotonic([1, 1, 3, 3, 2, 4, 5, 4, 5]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 1, 4, 4, 6, 7]) == false
    @test monotonic([2, 2, 6, 1, 1, 2, 1, 1, 4, 4, 4]) == false
    @test monotonic([10, 3, 5, 3, 2, 9, 7, 5, 4]) == false
    @test monotonic([1, 1, 3, 5, 4, 5, 0, 5]) == false
    @test monotonic([2, 2, 2, -2, 0, 0, 3, 1]) == false
    @test monotonic([2, 2, 1, 2, 2, 1, 4, 4, 4, 1]) == false
    @test monotonic([2, 2, 2, 1, 1, 1, 1]) == true
    @test monotonic([5, 4, 10, 2, 1, 1, 3, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic([5, 4, 10, 2, 1, 2, 3, 4, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic([2, 2, 6, 1, 2, 2, 1, 1, 7, 4, 4, 4, 2]) == false
    @test monotonic([10, 3, 5, 3, 2, 6, 9, -1, 5, 4]) == false
    @test monotonic([5, 2, 4, 3, 1, 2, 3, 4, 3, 5, 4]) == false
    @test monotonic([5, 4, 10, 10, 2, 1, 1, 1, 2, 3, 4, 1]) == false
    @test monotonic([2, 2, 1, 0, 1]) == false
    @test monotonic([2, 2, 1, -1, 10, 2]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 3, 1, 4, 4, 5]) == false
    @test monotonic([5, 2, 4, 3, 1, 2, 3, 4, 3, 5, 3]) == false
    @test monotonic([5, 2, 4, 3, 1, 3, 5, 5, 3, 5, 4]) == false
    @test monotonic([5, 4, 3, 2, 1, 1, 10, 1, 2, 3, -1, 5]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 4, 5, 2, 4, 1, 3]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2, 1, -1, -1, 5]) == false
    @test monotonic([2, 2, 2, -1, -2, 1, 1]) == false
    @test monotonic([2, 9, 9, 4, 0, 0, 3, 1]) == false
    @test monotonic(Bool[0, 1, 0, 0, 1, 1, 1, 1]) == false
    @test monotonic([1, 3, 4, 3, 4, 6, 4]) == false
    @test monotonic([1, 4, 3, 5, 4, 5, 6, 5]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic(Bool[0, 1, 0, 1, 1, 1, 1]) == false
    @test monotonic([2, 2, 2, -2, 0, 0, 3, 1, 2]) == false
    @test monotonic([5, 4, 3, 2, 1, 3, 1, 1, 2, 3, 4, 5]) == false
    @test monotonic([5, 4, 3, 2, -2, 1, 1, 1, 2, 3, 4, 5]) == false
    @test monotonic([5, 4, 3, 2, 1, 1, 10, 1, 2, 3, -1, 5, 5]) == false
    @test monotonic([1, 3, 5, 6, 4, 4, 6, 4]) == false
    @test monotonic([2, 2, 1, 2, 1, 1, 10, 4, 4, 1]) == false
    @test monotonic([1, 1, 3, 5, 4, -2, 0, 5]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 3, 3, 1, 4, 4, 5]) == false
    @test monotonic([2, 2, 1, -2, 1, 3, 2]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 6, 4]) == false
    @test monotonic([-2, 2, 9, 1, 1, 9]) == false
    @test monotonic([1, 3, 4, 5, 3, 2, 1, 5]) == false
    @test monotonic([1, 3, 4, 5, 7, 3, 2, 1, -1, 5]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 11, 4, 5, 2, 4, 1, 3]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 6, 7]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 3, 1, 4, 4, 5, 3]) == false
    @test monotonic([2, 2, 1, -2, 1]) == false
    @test monotonic([5, 2, 4, 4, 3, 1, 3, 5, 5, 3, 5, 4]) == false
    @test monotonic([5, 4, 3, 2, -2, 1, 4, 1, 1, 2, 3, 4, 5]) == false
    @test monotonic([1, 2, 4, 5, 4, 3, 2, 1, -1, 5, 1]) == false
    @test monotonic([2, 2, 2, 1, 1, 2, 1, 1, 1]) == false
    @test monotonic([1, 1, 3, 3, 2, 4, 4]) == false
    @test monotonic([2, 2, 2, 2, -2, 1]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, -2, 2, 3, 4, 5, 2]) == false
    @test monotonic([1, 1, 2, 5, 5, 5, 0, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 0, 7]) == false
    @test monotonic([2, 2, 2, -2, 0, 3, 1, 2]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2, 1, 1]) == false
    @test monotonic([2, 2, -2, 1, 1, 2, 0]) == false
    @test monotonic([1, 3, 4, 5, 4, 0, 3, 2]) == false
    @test monotonic([5, 3, 2, 1, 1, 10, 1, 2, 3, -1, 5, 5]) == false
    @test monotonic([2, 1, 1, 1, 4, 6]) == false
    @test monotonic([5, 4, 3, 10, 2, -2, 1, 1, 1, 2, 3, 4, 5]) == false
    @test monotonic([2, 5, 2, 2, 1, 2, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 6, 7]) == false
    @test monotonic([1, 3, 1, 4, 5, 3, 2, 1, 5]) == false
    @test monotonic([9, 9, 4, 0, 0, 3, 1, 9]) == false
    @test monotonic([4, 2, 1, 1, 1, 1, 4, 4, 6, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 6, 5, 2]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 3, 4, 5, 2]) == false
    @test monotonic([2, -2, 5, 2, 2, 1, 2, 1]) == false
    @test monotonic(Bool[0, 1, 0, 1, 1, 1, 1, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 5, 4, 6, 4]) == false
    @test monotonic(Bool[0, 1, 0, 1, 1, 1]) == false
    @test monotonic([2, 2, 2, 1, -2, 1, 2]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 4, 5, 2, 5]) == false
    @test monotonic(Bool[0, 1, 1, 0, 1, 1, 1, 1, 0]) == false
    @test monotonic([6, 5, 2, 2, 1, 2, 1, 2]) == false
    @test monotonic([2, 9, 9, 5, 0, 0, 3, 1]) == false
    @test monotonic([2, 1, 3, 5, -1, 4, 6, -2, 0, 5]) == false
    @test monotonic([1, 1, 3, 5, 4, 7, 0, 5, 4]) == false
    @test monotonic([5, 4, 3, 2, 1, 2, 4, 5]) == false
    @test monotonic([1, 1, 3, 2, 2, 4, 5, 4, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, -2, 4, 4, 6]) == false
    @test monotonic([1, 1, 3, 5, 4, 4, 6, 1]) == false
    @test monotonic([2, 2, 1, 6, 1, 2, 1, 1, 4, 4, 4, 1]) == false
    @test monotonic([2, 2, 4, 5, 4, 3, 2, 1, -1, 1, 5, 4]) == false
    @test monotonic(Bool[0, 1, 1, 0, 1, 1, 0, 1, 0, 0]) == false
    @test monotonic([1, 1, 3, 3, 2, 5, 4, 5, 1]) == false
    @test monotonic([2, 2, 1, -2, 1, 3, 2, -2]) == false
    @test monotonic([2, 9, 9, 4, 0, 0, 3, 11, 9]) == false
    @test monotonic([2, 1, -1, 10, 2, 10]) == false
    @test monotonic([1, 2, 4, 5, 4, 3, 2, 1]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 2, 3, 4, 5, 2, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 11]) == false
    @test monotonic([1, 1, 3, 3, 2, 4, 5, 4, 5, 5]) == false
    @test monotonic([1, 3, 4, 5, -2, 3, 2, 1, -1, -1, 5]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2, 1, 6, 5, 2, 2]) == false
    @test monotonic(Bool[0, 0, 0, 1, 1, 1, 1]) == true
    @test monotonic([5, 4, 3, 2, -2, 1, 9, 1, 1, 2, 3, 4, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 11]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 2, 3, 3, 4, 2]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2, 1, 0, -1, 5]) == false
    @test monotonic([5, 4, 3, 10, 2, 0, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic([5, 4, 10, 2, 1, 2, 3, 4, 1, 0, 2, 3, 4, 5, 2]) == false
    @test monotonic([2, 2, -2, 0, 3, 1, 2, 0, 1]) == false
    @test monotonic([2, 2, 1, -2, 3, 2, -2, -2]) == false
    @test monotonic([2, 2, -2, 0, 3, 1, 2]) == false
    @test monotonic([9, 9, 4, 0, 0, 3, 1]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 2, 3, 4, 5, 2, 5, 2]) == false
    @test monotonic([5, 4, 3, 2, 1, 1, 2, 3, 4, 5, 1]) == false
    @test monotonic([1, 3, 4, 5, 3, 2, 1, 5, 2]) == false
    @test monotonic([1, 1, 3, 5, 4, 7, 0, 5, 4, 4]) == false
    @test monotonic(Bool[0, 0, 1, 1, 1, 1, 1, 1, 1]) == true
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 4, 5, 2, 4, 5]) == false
    @test monotonic([2, 1, 1, 1, 4, 6, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 1, 2, 3, 4, 5, 2, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 5, 4, 6, 4, 2]) == false
    @test monotonic([1, 1, 3, 2, 4, 4]) == false
    @test monotonic([5, 4, 3, 11, 2, 3, -2, 4, 4, 5]) == false
    @test monotonic([1, 3, 4, 5, 0, 4, 3, 2, 1, 6, 5, 2, 2]) == false
    @test monotonic([4, 4, 3, 10, 2, 1, 1, 1, 2, 3, 4, 5, -2, 2, 4, 5]) == false
    @test monotonic([9, 9, 4, 0, 0, 3, 1, 9, 1]) == false
    @test monotonic([1, 1, 3, 3, 11, 2, 2, 3, 4, 4]) == false
    @test monotonic([4, 3, 10, 2, 1, -2, 2, 3, 4, 5, 2, 10]) == false
    @test monotonic([1, 1, 3, 3, 11, 2, 2, 3, 4, 4, 2]) == false
    @test monotonic([2, 2, 1, 2, 2, 1, 4, 4, 4, 5]) == false
    @test monotonic([10, 2, 5, 3, 2, 6, 9, 7, 7, 4]) == false
    @test monotonic([5, 2, 4, 3, 3, 5, 5, 3, 5, 4]) == false
    @test monotonic([1, 2, 4, 3, 1, 2, 3, 3, 5]) == false
    @test monotonic([1, 2, 9, 9, 5, 0, 0, 3]) == false
    @test monotonic([2, 2, 1, 1, 1, -2, 7, 4, 6]) == false
    @test monotonic([1, 3, 4, 5, 2, 2, 1, 5]) == false
    @test monotonic([1, 3, 4, 5, 0, 4, 3, 2, 1, 1, 6, 5, 2, 2]) == false
    @test monotonic([2, 2, 2, -2, -1, 1]) == false
    @test monotonic([5, 2, 4, 4, 3, 1, 3, 5, 5, 3, 5, 4, 4, 5]) == false
    @test monotonic([1, 3, 5, 4, 4, 5, 4, 3, 2, 1]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 3, 4, 5, 2, 4]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 2, 3, 4, 2, 2]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 5, 4, 4]) == false
    @test monotonic([5, 4, 3, 10, 3, 2, 1, 1, 1, 2, 3, 11, 4, 5, 2, 4, 1, 3]) == false
    @test monotonic([5, 4, 3, 2, 1, 1, 2, 3, 4, 5, 2, 11, 5, 2]) == false
    @test monotonic([5, 2, 4, 3, 5, 5, 3, 5, 4]) == false
    @test monotonic([2, 9, 4, 0, 0, 3, 1]) == false
    @test monotonic([2, 2, 1, -2, 1, 2]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 1, 4, 4, 6, 7]) == false
    @test monotonic([5, 3, 3, 0, 2, 1, 1, 10, 1, 2, 3, -1, 5, 5]) == false
    @test monotonic([-2, 5, 2, 2, 1, 2, 1]) == false
    @test monotonic([-2, -1, 0, 1, 1, 0, -1, -2]) == false
    @test monotonic(Bool[0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1]) == false
    @test monotonic([9, 9, 4, 0, 0, 3, 1, 9, 1, 0]) == false
    @test monotonic([2, 1, -2, 1, 3, 2]) == false
    @test monotonic([1, 3, 5, 4, 4, 6, 5]) == false
    @test monotonic(Bool[0, 1, 1, 0, 1, 1, 1, 1, 0, 1]) == false
    @test monotonic([2, 2, 2, -1, -2, 1, 1, 1]) == false
    @test monotonic([2, 2, 2, 1, -2, 1, 3, 2, 2]) == false
    @test monotonic([1, 1, 3, 5, 5, 4, 7, 5, 4, 6, 4]) == false
    @test monotonic([1, 3, 4, 5, 4, 5, 2, 1]) == false
    @test monotonic([5, 4, 3, 10, 9, 3, 2, 1, 1, 1, 2, 3, 12, 4, 5, 2, 4, 1, 3, 2]) == false
    @test monotonic([2, 1, 1, 1, 4, 6, 1, 1]) == false
    @test monotonic([5, 4, 3, 5, -2, 2, 1, 1, 2, 3, 4, 5, 2, 2]) == false
    @test monotonic([2, -1, 2, 2, -1, -2, 1, 2]) == false
    @test monotonic([5, 4, 3, 10, 2, 0, 1, 3, 3, 4, 5, 2]) == false
    @test monotonic([1, 1, 3, 3, 2, 2, 11, 4, 4, 4]) == false
    @test monotonic([10, 9, 1, 1, 9]) == false
    @test monotonic([9, 9, 4, 9, 0, 3, 1, 9, 1]) == false
    @test monotonic([2, 2, 2, -2, 1, 2]) == false
    @test monotonic([1, 3, -2, 4, 5, 7, 3, 2, 1, 5, -1, 5]) == false
    @test monotonic([1, 3, 4, 3, 4, 4, 3]) == false
    @test monotonic([10, 3, 4, 3, 2, 6, 9, 7, 5, 4, 3]) == false
    @test monotonic([5, 1, 3, 10, 2, 1, 1, 1, 2, 3, 4, 2, 5]) == false
    @test monotonic([1, 1, 5, 5, 5]) == true
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 3, 4, 0, 6, 7]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2]) == false
    @test monotonic([2, -2, 5, 2, 2, 1, 4, 2, 1, 5]) == false
    @test monotonic([1, 3, 4, 6, 4, 3, 2, 1, -1, 5]) == false
    @test monotonic([2, 1, 1, 1, 4, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 1, 2, 3, 4, 2, 1]) == false
    @test monotonic(Bool[0, 1, 0, 0, 0, 1, 1, 1, 1, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 3, 1, 2, 3, 4, 6, 2]) == false
    @test monotonic([5, 2, 0, 4, 4, 3, 1, 3, 5, 5, 3, 5, 4, 4, 5]) == false
    @test monotonic([1, 1, 5, 4, 5, 0, 5]) == false
    @test monotonic([5, 4, 3, 10, 2, -2, 1, 1, 6, 1, 2, 3, 4, 5]) == false
    @test monotonic([5, 4, 3, 2, -2, 6, 0, 1, 2, 3, 4, 5]) == false
    @test monotonic([5, 4, 3, 10, 2, 0, 1, 2, 3, 4, 5, 0]) == false
    @test monotonic([5, 1, 1, 1, -2, 7, 4, 6]) == false
    @test monotonic([1, 1, 3, 3, 2, 4, 5, 4, 5, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 3, 1, 2, 2, 4, 5, 2]) == false
    @test monotonic([2, 2, 1, 2, 1, 1, 4, 4, 6, 7]) == false
    @test monotonic([2, 2, 1, -2, -2, 1]) == false
    @test monotonic([-1, -1, 0, 1, 1, 0, -1, -2]) == false
    @test monotonic([2, 5, 9, 9, 4, 0, 0, 3, 1, 2, 9]) == false
    @test monotonic([5, 4, 3, 2, -2, 1, 4, 1, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 3, 1, 2, 3, 4, -2, 6, 2, 2, 2]) == false
    @test monotonic([1, 3, 5, 4, 4, 5]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 2, 3, 4, 5, 2, 5, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 0, 7, 4]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 1, 4, 4, 4, 4]) == false
    @test monotonic([2, 2, 1, 2, 2, 1, 4, 4, 1, 1]) == false
    @test monotonic([2, 1, 1, 1, 4, 6, 6, 6]) == false
    @test monotonic([-1, -1, 0, 1, 1, 0, -1]) == false
    @test monotonic([5, 4, 10, 5, 2, 1, 1, 1, 2, 3, 4, 2, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 1, 2, 2, 4, 5, 2, 4]) == false
    @test monotonic([2, 2, -2, 1, 7, 2, 1, 1, 1]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 4, 5, 2, 2]) == false
    @test monotonic([2, 2, 1, 1, 2, 0, 1, 4, 4, 4, 1]) == false
    @test monotonic([2, 2, 1, 1, 2, 3, 3, 1, 4, 4, 5, 3, 3]) == false
    @test monotonic([5, 4, 3, 2, 1, 3, 1, 1, 3, 4, 5]) == false
    @test monotonic([5, 4, 10, 2, 1, 9, 2, 3, 4, 1, 0, 2, 3, -2, 4, 5, 2, 1]) == false
    @test monotonic([4, 3, 10, 0, 1, 3, 3, 4, 5, 2, 4]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 3, 1, 2, 0, 3, 4, 6, 2]) == false
    @test monotonic([1, 1, 3, 3, 2, 4, 5, 4, 5, 1, 3]) == false
    @test monotonic([4, 2, 1, -2, 1, 2]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2, 2, 1, -1, 5]) == false
    @test monotonic([5, 3, 2, -2, 1, 1, 1, 2, 3, 4, 5, 1]) == false
    @test monotonic([2, 1, 1, 1, 4, 6, 6, 6, 6]) == false
    @test monotonic([2, -1, 2, 2, -2, 1, 2, 1]) == false
    @test monotonic([2, 6, 1, 2, 2, 1, 1, 7, 4, 4, 4, 2]) == false
    @test monotonic(Bool[0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0]) == false
    @test monotonic([5, 2, 3, 1, 2, 3, -1, 4, 3, 5, 3]) == false
    @test monotonic([5, 4, 10, 5, 2, 1, 1, 1, 2, 3, 4, 2, 1, 4]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 1, 3, 1, 2, 2, 4, 5, 2]) == false
    @test monotonic([2, 1, 2, 2, 1, 4, 4, 4, 5]) == false
    @test monotonic([1, 1, 3, 2, 5, 4, 5, 1]) == false
    @test monotonic([5, 5, 10, 2, 1, 1, 11, 2, 2, 4, 5, 2, 4]) == false
    @test monotonic([2, -1, -1, 2, 2, -1, -2, 1, 2]) == false
    @test monotonic([1, 3, 5, 4, 4, 5, 4, 3, 2, 5, 1]) == false
    @test monotonic([1, 3, 1, 4, 5, 3, 2, 1, 5, 5]) == false
    @test monotonic([5, 3, 3, 0, 2, 1, 1, 10, 1, 2, 3, 5, 5]) == false
    @test monotonic(Bool[0, 0, 1, 1, 1, 0, 1, 1, 1, 1]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2, 1, 3]) == false
    @test monotonic([2, 2, -2, 1, 7, 2, -2, 1, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 3, 1, 2, 2, 4, 5, 2, 1]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, -2, 2, 3, 4, 5, 2, 4]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 6, 1, 4]) == false
    @test monotonic([5, 4, 3, 10, 3, 1, 1, 1, 2, 3, 4, 5, 2, 4, 5]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 10, 5, 2, 4, 1, 3]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 3, 4, 2, 4, 1, 3]) == false
    @test monotonic([7, 4, 0, 0, 3, 1, 9, 1, 1, 9]) == false
    @test monotonic([2, 2, 4, 5, 3, 2, 1, -1, 1, 5, 4, 1]) == false
    @test monotonic([2, 2, 1, 1, 2, 12, 1, 1, 4, 4, 4, 4, 2, 1]) == false
    @test monotonic([2, -1, 2, 2, -2, 1, 0, 1]) == false
    @test monotonic([2, 5, 3, 2, 6, 9, 7, 7, 4]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2, 1, 10, -1, 5]) == false
    @test monotonic(Bool[0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1]) == false
    @test monotonic([2, 1, 1, 1, 4, 6, 9, 1, 1, 1]) == false
    @test monotonic([3, 1, 4, 5, 3, 2, 1, 5, 5, 1]) == false
    @test monotonic([1, 1, 3, 5, 4, 4, 6, 12, 1, 2]) == false
    @test monotonic(Bool[0, 1, 0, 1, 1, 1, 1, 0]) == false
    @test monotonic([0, 3, 4, 5, 0, 4, 3, 2, 1, 6, 5, 2, 2, 4]) == false
    @test monotonic([5, 4, 10, 2, 5, 9, 2, 3, 4, 1, 0, 2, 3, -2, 4, 5, 2, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 6, 7]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 5, 4, 4, 5]) == false
    @test monotonic([2, 2, 1, 2, 1, 1, 4, 4, 6, 7, 6]) == false
    @test monotonic([1, 3, 4, 5, 4, 3, 2, 2, 1, -1, 5, 3]) == false
    @test monotonic([1, 3, 4, 5, 4, 2, 1, 5, 5]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 3, 1, 2, 4, -2, 6, 2, 2, 2]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 11, 4, 5, 2, 4, 1, 3, 4]) == false
    @test monotonic(Bool[0, 1, 0, 1, 1, 0, 1, 1, 0]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 6, 7, 1]) == false
    @test monotonic([2, -2, 0, 3, 1, 6, 2]) == false
    @test monotonic([2, 3, -1, 2, 2, -2, 1, 0, 1]) == false
    @test monotonic(Bool[0, 1, 1, 0, 1, 1, 1, 0, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 3, 1, 2, 4, -2, 6, 2, 2, 2, 2]) == false
    @test monotonic([5, 4, 10, 5, 3, 2, 1, 1, 1, 2, 3, 4, 2, 1, 4]) == false
    @test monotonic([5, 2, 4, 3, 1, 0, 3, 4, 3, 5, 3]) == false
    @test monotonic([5, 4, 3, 2, -2, 1, 4, 1, 1, 2, 3, 4, 12, 5]) == false
    @test monotonic([2, 2, 1, 3, 1, 1, 4, 3, 4, 0, 6, 7]) == false
    @test monotonic([2, 1, 1, 1, 4, 4, 11]) == false
    @test monotonic([4, 4, 3, 10, 2, 1, 1, 1, 5, 2, 9, 4, 5, -2, 2, 4, 5]) == false
    @test monotonic(Bool[0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1]) == false
    @test monotonic([2, 2, 12, 1, 2, 2, 1, 1, 7, 4, 4, 4, 2]) == false
    @test monotonic([2, 2, 2, -1, -2, 2, 1, 1]) == false
    @test monotonic([1, 1, 3, 3, 2, 2, 11, 4, 4, 4, 4]) == false
    @test monotonic(Bool[1, 0, 1, 0, 0, 1, 1, 1]) == false
    @test monotonic([10, 5, 4, 3, 10, 2, 1, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic([5, 2, 3, 1, 2, 3, -1, 4, 3, 5, 3, 5]) == false
    @test monotonic([1, 2, 3, 3, 2, 2, 4, 4, 1]) == false
    @test monotonic([1, 1, 0, 1, 1, 1]) == false
    @test monotonic([5, 6, 2, 1, 2, 3, 4, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic([1, 1, 3, 2, 2, 11, 4, 4]) == false
    @test monotonic([5, 2, 4, 3, 5, 1, 2, 3, 4, 3, 5, 4]) == false
    @test monotonic([5, 1, 3, 5, 4, 4, 6, 1]) == false
    @test monotonic([1, 5, 0, 4, 6, 10, 2, 1, 1, 1, 2, 3, 4, 2]) == false
    @test monotonic([5, 4, 4, 3, 10, 2, 1, 1, 3, 4, 5, 2]) == false
    @test monotonic([2, 2, 1, -2, 3, 2, -2, -2, -2, 3, -2]) == false
    @test monotonic([4, 3, 11, 2, 3, -2, 4, 5, 0, 5]) == false
    @test monotonic([1, 12, 1, 3, 3, 2, 5, 5, 4, 5, 1]) == false
    @test monotonic([3, 2, -2, 0, 3, 1, 2, 0, 1, 7]) == false
    @test monotonic([1, 2, 3, 3, 2, 2, 3, 4, 4]) == false
    @test monotonic([2, 2, 2, 1, -2, 0]) == false
    @test monotonic([1, 2, 4, 5, 3, 3, 2, 1, -1, 5, 4]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 1, 1, 2, 2, 4, 5, 2, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 7, 7]) == false
    @test monotonic([-2, 5, 2, 2, 1, 2, 1, 5]) == false
    @test monotonic([2, 2, 1, 1, 4, 5, 4, 6, 4]) == false
    @test monotonic([-2, -1, 0, 1, 1, -1, -1, -2]) == false
    @test monotonic([2, 2, -2, 1, 7, 2, 1, 1, 1, 1]) == false
    @test monotonic([2, 2, 2, 1, -2, 1, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 1]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 2, 3, 11, 4, 5, 2, 4, 1, 3, 1]) == false
    @test monotonic([1, 1, 3, 3, 2, 5, -2, 5, 1]) == false
    @test monotonic([2, 2, 12, 1, 2, 2, 1, 1, 7, 7, 4, 4, 2, 4, 2]) == false
    @test monotonic([1, 3, 5, 4, 4, 3, 5]) == false
    @test monotonic([2, 1, 1, 10, 2, 10]) == false
    @test monotonic([6, 4, 10, 2, 1, 1, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic(Bool[0, 1, 1, 0, 1, 1, 1, 0, 1, 0]) == false
    @test monotonic([2, 5, 2, 2, 1, 2]) == false
    @test monotonic([-2, 5, 2, 2, 1, 1]) == false
    @test monotonic([3, 1, 1, 1, 4, 6, 6]) == false
    @test monotonic([1, 3, 4, 5, 3, 2, 1, -1, -1, 5]) == false
    @test monotonic([-2, 5, 2, 2, 1, 2, 1, 2]) == false
    @test monotonic([1, 3, 4, 5, 0, 4, 3, 2, 4, 1, 6, 3, 5, 2, 2]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 6, 5, 2, 6, 2]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 1, 3, 2, 3, 3, 4, 2, 4, 1, 3, 4]) == false
    @test monotonic([2, -1, 2, 2, -2, 1, 1, 1]) == false
    @test monotonic([1, 1, 5, 5, 4]) == false
    @test monotonic([1, 2, 10, 9, 9, 5, 0, 0, 3]) == false
    @test monotonic([1, 3, 4, 6, 9, 3, 2, 1, 2, 1]) == false
    @test monotonic([0, 3, 4, 5, 0, 7, 3, 2, 1, 6, 5, 2, 2, 4]) == false
    @test monotonic([1, -1, 1, 0, 1, 1, 1]) == false
    @test monotonic([1, 3, 1, 4, 5, 3, 2, 2, 1, 5, 3]) == false
    @test monotonic([5, 2, 4, 3, 1, 2, 4, 3, 5, 4]) == false
    @test monotonic([2, 2, 1, 6, 2, 1, 1, 4, 4, 4, 1]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 4, 4, 9, 4]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 1, 4, 6, 1]) == false
    @test monotonic([2, 2, -2, 1, 1, 2]) == false
    @test monotonic([2, 2, 1, 1, 4, 6, 6, 6]) == false
    @test monotonic([5, 4, 3, 2, 4, 1, 3, 1, 1, 3, 4, 5]) == false
    @test monotonic([2, -1, -1, 3, 2, 2, -1, -2, 1, 2, -2]) == false
    @test monotonic([2, 2, 6, 3, 1, 1, 1, 4, 4, 0, 7, 4, 3]) == false
    @test monotonic([3, 2, 5, 4, 5, 1, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 6, 1, 4, 4]) == false
    @test monotonic([9, 4, 0, 8, 3, 1, 9]) == false
    @test monotonic([2, 1, 2, 9, 1, 4, 4, 4, 5]) == false
    @test monotonic([5, 4, 3, 10, 1, 1, 2, 3, 4, 5, 2, 5, 2]) == false
    @test monotonic([2, 1, 2, 2, -2, 1, 2]) == false
    @test monotonic([2, 2, 1, -2, 3, 2, -2, -2, 3, -2, 1]) == false
    @test monotonic([1, 1, 3, 3, 4, 2, 11, 4, -1, 5, 4, 5]) == false
    @test monotonic([2, 2, 2, -2, 1, 0, 3, 1, 1]) == false
    @test monotonic([2, -2, 5, 2, 2, 2, 1]) == false
    @test monotonic([5, 4, -1, 3, 11, 2, 3, -2, 4, 4, 5]) == false
    @test monotonic([1, 1, 3, 8, 4, 4, 6]) == false
    @test monotonic([10, 2, 5, 3, 2, 6, 9, 7, 7, 4, 10]) == false
    @test monotonic([5, 4, 3, 2, 4, 1, 3, 1, 1, 11, 5]) == false
    @test monotonic([2, 2, 2, -2, 0, 0, 3, 1, 0]) == false
    @test monotonic([2, 2, 2, -2, 0, 0, 1, 1]) == false
    @test monotonic([2, 2, 2, -2, 0, 0, 1, 1, 2]) == false
    @test monotonic([5, 4, 3, 2, -2, 1, 4, 1, 1, 2, 2, 3, 4, 5, 2]) == false
    @test monotonic([2, 2, 1, 2, 1, 1, 4, 4, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 7, 6, 7]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 1, 2, 3, 4, 5, 2, 4]) == false
    @test monotonic([4, 2, -2, 4, 2, 2, 2, 1]) == false
    @test monotonic([2, 2, 6, 3, 1, 1, 1, 4, 4, 0, 7, 4, 3, 1]) == false
    @test monotonic([5, 2, 4, 4, 3, 1, 3, 5, 5, 3, 5, 4, 4, 3]) == false
    @test monotonic([2, 0, 2, 9, 1, 4, 3, 4, 5]) == false
    @test monotonic([4, 2, -2, 4, 2, 2, 8, 2, 1, -2]) == false
    @test monotonic([5, 2, 2, -1, 1, 2]) == false
    @test monotonic([2, 2, 1, -2, 0]) == false
    @test monotonic([2, 2, 6, 1, 8, 2, 2, 1, 1, 7, 4, 4, 4, 2, 2]) == false
    @test monotonic([1, 3, 5, 3, 2, 1, -1, -1, 5]) == false
    @test monotonic([2, 6, 1, 8, 2, 2, 1, 1, 6, 4, 4, 4, 2, 2]) == false
    @test monotonic([1, 3, 3, 4, 5, 4, 3, 2, 1, 6, 2, 2]) == false
    @test monotonic([2, 9, 9, 4, 4, 0, -2, 0, 3, 1]) == false
    @test monotonic([2, 2, 1, 3, 1, 1, 1, 4, 4, 4]) == false
    @test monotonic([1, 3, 5, 4, 4, 5, 4, 4, 2, 1]) == false
    @test monotonic([10, 3, 5, 3, 2, 9, 5, 4]) == false
    @test monotonic([5, 5, 10, 2, 1, 1, 11, 2, 2, 4, 5, 2, 4, 5]) == false
    @test monotonic([1, 2, 3, -2, 4, 5, 7, 3, 2, 1, 5, -1, 5]) == false
    @test monotonic(Bool[0, 1, 0, 1, 1, 1, 0]) == false
    @test monotonic([5, 4, 2, 2, 1, 1, 1, 2, 3, 4, 5]) == false
    @test monotonic([5, 2, 4, 3, 1, 2, 4, 4, 3, 5, 4]) == false
    @test monotonic([5, 2, -2, 6, 0, 1, 2, 3, 4, 5]) == false
    @test monotonic([5, 3, 11, 2, 3, -2, 4, 4, 5]) == false
    @test monotonic([2, 0, 2, 1, 10, 2]) == false
    @test monotonic([2, 9, 9, 4, 4, 0, -2, 0, 3, 1, 9]) == false
    @test monotonic([5, 2, 4, 4, 5, 3, 5, 4, 4]) == false
    @test monotonic([1, 1, 3, 2, 5, 4, 5, 1, 1, 5]) == false
    @test monotonic([9, 5, 4, 10, 10, 2, 1, 1, 1, 2, 3, 4, 1]) == false
    @test monotonic([2, 2, 1, 1, 2, 4, 4, 6, 4, 1]) == false
    @test monotonic([5, 2, 4, 3, 5, 1, 2, 3, 4, 3, 5]) == false
    @test monotonic([1, 1, 5, 4, 4, 11, 6, 1]) == false
    @test monotonic([1, 1, 3, 5, 5, 0, 5]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 3, 1, 4, 4, 5, 1]) == false
    @test monotonic([2, 2, 1, 12, 1, 4, 5, 4, 6, 4]) == false
    @test monotonic([2, 2, 0, 2, 1, 1, 4, 4, 4, 5, 2]) == false
    @test monotonic([0, -1, 1, 0, 1, 1, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 1, 2, 3, 3, 4, 2, 2]) == false
    @test monotonic([1, 3, 5, 4, 0, 3, 2]) == false
    @test monotonic(Bool[0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1]) == false
    @test monotonic([-2, 5, 4, 3, 2, 1, 1, 10, 1, 2, 10, 8, 3, -1, 5, 5]) == false
    @test monotonic([5, 4, 3, 2, 1, 2, 1, 0, 2, 3, 4, 5]) == false
    @test monotonic([2, 1, 6, 2, 1, 1, 4, 4, 4, 1]) == false
    @test monotonic([1, 3, 3, 4, 5, 4, 3, 3, 2, 1, -1, 2, 5]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 3, 4, 5, 2, 4, 4]) == false
    @test monotonic([-1, 2, 2, -2, 0, 0, 1, 1, 2, 1]) == false
    @test monotonic(Bool[0, 0, 1, 0, 1, 0, 1, 1]) == false
    @test monotonic([7, 2, 1, 1, 1, 1, 4, 4, 6, 5, 2]) == false
    @test monotonic([1, 1, 3, 2, 5, 4, 0, 5, 1]) == false
    @test monotonic([2, 2, -1, 0, 0, 1, 1, 2, 1]) == false
    @test monotonic([1, 1, 3, 3, 11, 2, 2, 3, 4]) == false
    @test monotonic([0, 2, 2, -2, 1, 7, 2, 1, 1, 1, 1]) == false
    @test monotonic([11, 2, 2, 2, 1, -2, 1]) == false
    @test monotonic([5, 4, 3, 11, 2, 3, -2, 4, 5, 3]) == false
    @test monotonic([1, 1, 3, 2, 2, 4, 5, 4, 5, 1, 3]) == false
    @test monotonic([2, -2, 2, 2, 1, 2, 1, 2]) == false
    @test monotonic([1, 3, 5, 3, 2, 1, -1, -1, 5, 2]) == false
    @test monotonic([2, 2, 2, -2, 0, 0, 3, 2, 2]) == false
    @test monotonic([1, 3, 4, 5, 4, 2]) == false
    @test monotonic([10, 3, 5, 3, 2, 9, 7, 4, 5, 4]) == false
    @test monotonic([5, 4, 3, 3, 2, 1, 1, 3, 1, 2, 3, 4, 5, 2, 4, 1, 3]) == false
    @test monotonic([5, 4, 3, 10, 2, 1, 1, 2, 3, 4, 5, 1]) == false
    @test monotonic([5, 4, 10, 2, 1, 2, 4, 1, 0, 2, 3, 4, 5, 2]) == false
    @test monotonic([2, 9, 9, 5, 0, 0, 3, 10, 1, 9]) == false
    @test monotonic([2, -1, 2, 2, -2, 1, 2]) == false
    @test monotonic([2, 1, 1, 12, 1, 4, 5, 4, 6, 4]) == false
    @test monotonic([2, 2, 2, 1, 1, -2, 7, 4, 6]) == false
    @test monotonic([3, 2, -2, 5, 4, 5, 4, 3, 2, 1, -1, 1, 5, 4]) == false
    @test monotonic([1, 11, 1, 3, 3, 2, 2, 4, 4]) == false
    @test monotonic([1, 3, 4, 6, 4, 3, 2, 1, 2, 4, 1]) == false
    @test monotonic([1, 1, 3, 8, 4]) == false
    @test monotonic([9, 2, 1, 2, 1, 1, 4, 4, 4, 4, 4]) == false
    @test monotonic([5, 4, 10, 2, 1, 3, 1, 2, 2, 4, 5, 2]) == false
    @test monotonic([5, 4, 10, 2, 1, 10, 1, 3, 1, 0, 2, 5, -2, 6, 2, 2, 2]) == false
    @test monotonic([1, 12, 2, 3, -2, 4, 5, 7, 3, 2, 1, 5, -1, 5]) == false
    @test monotonic([1, 3, 4, 5, 4, 5, 2, 1, 4]) == false
    @test monotonic([2, 2, 6, 1, 8, 2, 2, 1, 1, 7, 4, 4, 4, 2, 2, 1]) == false
    @test monotonic(Bool[0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0]) == false
    @test monotonic([1, 3, 4, 5, 3, 12, 1, 5, 2, 1]) == false
    @test monotonic([2, 1, 1, 1, 1, 4, 4, 6, 7, 2]) == false
    @test monotonic([6, 5, 2, 2, 1, 2, 1, 2, 2]) == false
    @test monotonic([5, 4, -1, 3, 11, 2, 3, -2, 4, 4, 4, 5]) == false
    @test monotonic([2, 2, 1, 2, 1, 1, 4, 4, 4, 4, 4]) == false
    @test monotonic([2, 1, 0, 1, 0]) == false
    @test monotonic([1, 12, 1, 3, 3, 2, 5, 5, 4, 5]) == false
    @test monotonic([2, 2, 1, -1, 10, 2, 2]) == false
    @test monotonic([1, 1, 3, 3, 2, 5, -2, 5]) == false
    @test monotonic([1, 1, 3, 2, 4, 5, 4, 5]) == false
    @test monotonic([1, 1, 3, 5, 4, 7, 0, 5, 4, 4, 4, 7]) == false
    @test monotonic([2, 2, 1, 1, 2, -2, 0, 0, 1]) == false
    @test monotonic([4, 3, 10, 2, 1, 1, 3, 4, 5, 2]) == false
    @test monotonic([4, 4, 3, 10, 2, 1, 9, 1, 5, 2, 9, 4, 5, 3, 11, 2, 4, 5]) == false
    @test monotonic([2, 3, 1, -2, 5, 1]) == false
    @test monotonic([2, 1, 1, 1, 4, 6, 6, 7]) == false
    @test monotonic([2, 2, 1, 1, 2, 2, 1, 3, 1, 4, 4, 5, 1]) == false
    @test monotonic([2, 2, 9, 1, 1, 1, 4, 5, 4, 6, 4, 2]) == false
    @test monotonic([2, 2, 1, 1, 2, -2, 4, 0, 1, 2]) == false
    @test monotonic([1, 3, 5, 4, 4]) == false
    @test monotonic([2, 2, 6, 1, 2, 2, 1, 1, 7, 4, 9, 2]) == false
    @test monotonic([4, 3, 10, 2, 1, -2, 2, 3, 4, 5, 2, 10, 5]) == false
    @test monotonic([1, 1, 3, 5, 4, 5, 6, 5, 5]) == false
    @test monotonic([1, 0, 3, 4, 5, 2, 5, 5]) == false
    @test monotonic(Bool[0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1]) == false
    @test monotonic([1, 3, 4, 4, 3, 4, 6, 4, 6, 6]) == false
    @test monotonic([2, -2, 5, 2, 2, 2, 1, 3, 4, 2, 1, 5]) == false
    @test monotonic([2, 2, 1, 1, 7, 1, -2, 9, 4, 6]) == false
    @test monotonic([5, 4, 3, 10, 2, 8, 2, 3, 4, 5, 2, 4, 1]) == false
    @test monotonic(Bool[0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1]) == false
    @test monotonic([2, -1, 2, -2, 1, 2]) == false
    @test monotonic([4, 3, 10, 2, 1, -2, 2, 3, 4, 5, 2, 10, 5, 3]) == false
    @test monotonic([2, 2, 6, -1, 1, 2, 1, 1, 4, 4, 4]) == false
    @test monotonic([0]) == true
    @test monotonic([1, 2, 3, 3]) == true
    @test monotonic([3, 3, 2, 1]) == true
    @test monotonic([1, 10, 7, 9, 8]) == false
    @test monotonic([10, 9, 10, 9]) == false
    @test monotonic([5]) == true
    @test monotonic([1, 2, 2, 2, 3]) == true
    @test monotonic([5, 5, 5, 5]) == true
    @test monotonic([2, 2, 1, 0, 1, 1, 4, 4, 4]) == false
    @test monotonic([1, 2, 3, -2, 4, 5, 4, 3, 2, 1]) == false
    @test monotonic([5, 4, 2, 1, 2, 3, 4, 5, 5, 3]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 5, 4]) == false
    @test monotonic([5, 4, 5, 2, 1, 1, 1, 2, 3, 4, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 5]) == false
    @test monotonic([-2, -1, 0, 1, 2, 2, 0, -1, -2]) == false
    @test monotonic([4, 2, 1, 2, 3, 4, 5, 5, 3]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, 4, 4, 4]) == false
    @test monotonic([5, 4, 3, 3, 1, 2, 3, 4, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, -2, 4, 4]) == false
    @test monotonic([1, 2, 3, 4, 5, 4, 3, 2, 1, 4]) == false
    @test monotonic([1, 2, 3, 4, 4, 4, 3, 2, 1, 4]) == false
    @test monotonic([2, 2, 1, 1, 0, 1, 4, 5, 5]) == false
    @test monotonic([3, 1, 2, 1, 1, 0, 1, 4, 5, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 5, 4, 1]) == false
    @test monotonic([1, 2, 3, 4, 4, 4, 3, 2, 1, 4, 4]) == false
    @test monotonic([1, 2, 1, 1, 1, 4, 4, -1, 4, 4]) == false
    @test monotonic([1, 2, 3, 4, 5, 4, 3, 2, 1, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, 1, -1, 4, -2, 4]) == false
    @test monotonic([2, 2, 2, 1, 1, 0, 1, 4, 5, 5]) == false
    @test monotonic([1, 2, 3, 4, 5, 4, 3, 2, 1, 4, 4, 1]) == false
    @test monotonic([2, 2, 0, 1, 1, 4, 4, 5]) == false
    @test monotonic([5, 4, 3, -1, 1, 1, 1, 2, 3, 5]) == false
    @test monotonic([2, 2, 1, 0, 2, 1, 4, 4, 4]) == false
    @test monotonic([1, 2, 3, 4, 5, 3, 4, 2, 1]) == false
    @test monotonic([5, 4, 1, 3, 2, 1, 1, 1, 2, 3, 4, 5, 3]) == false
    @test monotonic([-2, -1, 1, 2, 1, 0, -1, 2]) == false
    @test monotonic([-2, -1, 0, 1, 2, 1, 0, -1, -2, 1]) == false
    @test monotonic([5, 3, 3, 1, 2, 4, 5]) == false
    @test monotonic([-2, 2, -1, 1, 2, 1, 0, -1, 0, 2]) == false
    @test monotonic([-2, -1, 0, 1, 2, 2, 0, -1, -2, -1, -2]) == false
    @test monotonic([1, 1, 3, 1, 1, 1]) == false
    @test monotonic([1, 2, 3, 4, 4, 4, 3, -1, 2, 1, 4]) == false
    @test monotonic([2, -2, 1, 1, 1, 4, 0, 4, 4, 4]) == false
    @test monotonic([1, 3, -2, 4, 5, 4, 3, 3, 1]) == false
    @test monotonic([1, 2, 3, 4, 5, 4, 3, 2, 4]) == false
    @test monotonic([1, 3, 3, 2, 2, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 5, 1]) == false
    @test monotonic([4, 2, 1, 1, 1, 4, 4, 4, 4]) == false
    @test monotonic([2, 2, 2, 1, 1, 1, 2]) == false
    @test monotonic([2, 2, 1, 0, 1, 4, 4, 5, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, -1, 4, 5, 5]) == false
    @test monotonic([1, 3, -2, 4, 5, 4, 4, 3, 3, 1]) == false
    @test monotonic([5, 4, 1, 4, 1, 1, 1, 2, 3, 4, 5, 3, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 5, 4, 1, 4]) == false
    @test monotonic([2, 2, 2, 1, 1, 0, 1, 2]) == false
    @test monotonic([2, 2, 1, 1, 1, 0, 4, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, 0, 1, 5, 5, 5]) == false
    @test monotonic([1, 2, 3, -2, 4, 0, 4, 3, 2, 1]) == false
    @test monotonic([1, 0, 2, 3, -2, 4, 5, 0, 4, 3, 2, 2, 1]) == false
    @test monotonic([2, 1, 1, 1, 1, 4, 4, 4, 4, 1]) == false
    @test monotonic([1, 2, 3, 4, 10, 4, 3, 2, 2, 1, 4]) == false
    @test monotonic([1, 5, 3, 4, 5, 4, 3, 2, 1, 4, 4, 1]) == false
    @test monotonic([1, 2, 3, -2, 4, 5, 4, 2, 1, 3]) == false
    @test monotonic([2, 1, 1, 1, 0, 4, 4, 4]) == false
    @test monotonic([2, 1, 1, 1, 1, 4, 4, 5, 1]) == false
    @test monotonic([2, 2, -1, 1, 1, 2, 1, 4, 4, 5, 4, 1, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, 0, 1, 4, 5, 5, 2, 5]) == false
    @test monotonic([1, 2, 3, -2, 4, 5, 4, 3, 2, 4, 2]) == false
    @test monotonic([3, 2, 2, 1, 1, 1, 4, 4, 4]) == false
    @test monotonic([1, 2, 3, 4, 4, 4, 10, 2, 1, 4]) == false
    @test monotonic([-2, -1, 0, 1, 2, 2, 0, -2]) == false
    @test monotonic([1, 2, 3, 4, 5, 3, 4, 0, 2, 1, 3]) == false
    @test monotonic([1, 1, 1, 1, 1, 1, 1]) == true
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 1]) == false
    @test monotonic([-2, -1, -1, 0, 1, 2, 1, 0, -1, -2, 1]) == false
    @test monotonic([2, 2, 1, 1, 0, 4, 5, 5]) == false
    @test monotonic([1, 2, 5, 3, 4, 4, 4, 3, -1, 2, 1, 6, 4]) == false
    @test monotonic([2, 2, 1, 1, 1, 9, 4, 5, 4]) == false
    @test monotonic([5, 4, 6, 2, 1, 2, 3, 4, 5, 5, 3]) == false
    @test monotonic([2, 1, 1, 1, 1, 1, 4, 4, 4, 4]) == false
    @test monotonic([1, 2, 1, 1, 0, 1, 5]) == false
    @test monotonic([5, 5, 3, 2, 1, 1, 1, 2, 3, 4, -2, 3, 1]) == false
    @test monotonic([5, 2, 4, 1, 4, 1, 1, 5, 1, 1, 2, 3, 4, 5, 3, 1]) == false
    @test monotonic([1, 3, -2, 4, 5, 4, 3, 3, 2, 1]) == false
    @test monotonic([2, 2, 3, 0, 1, 1, 4, 4, 5]) == false
    @test monotonic([2, 2, -2, 2, 1, 1, 1]) == false
    @test monotonic([1, 2, 1, 0, 0, 1, 5]) == false
    @test monotonic([1, 2, 3, 4, 5, 4, 3, 2, 1, 3]) == false
    @test monotonic([1, 1, 1, 1, 0, 1]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 4, 4, 4]) == false
    @test monotonic([1, 2, 3, 4, 5, 3, 4, 2, 1, 3]) == false
    @test monotonic([5, 5, 3, 2, 1, 1, 2, 3, 4, -2, 3, 1]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 4, 4, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 4, 4, 5, 4, 1, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, 4, 4, 4]) == false
    @test monotonic([1, 2, 3, 3, 5, 4, 3, 2, 4]) == false
    @test monotonic([1, 1, 1, 10, 1]) == false
    @test monotonic([2, 2, 1, 1, 0, 4, 6, 5]) == false
    @test monotonic([-2, -1, 1, 2, 1, 1, 0, -1, 2, -2]) == false
    @test monotonic([2, 2, 1, 1, -1, 1, 5, 5, 5]) == false
    @test monotonic([2, 2, 1, 1, -1, 1, 5, 6, 5]) == false
    @test monotonic([1, 1, 0, 1]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 4, 4, 4, 4, 2]) == false
    @test monotonic([1, 3, 3, 1, 2, 2, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, -1, 1, 5, 6]) == false
    @test monotonic([1, 2, 2, 1, 1, 1, 4, 4, 5, 1]) == false
    @test monotonic([2, 2, 2, 1, 1, 1, 4, -2, 4, 4]) == false
    @test monotonic([2, 2, 0, -2, 1, 1, 4, 4, 5]) == false
    @test monotonic([3, 2, 2, 1, 1, 4, 4, 4]) == false
    @test monotonic([3, 2, 2, 1, 1, 1, 4, 3, 4, 4]) == false
    @test monotonic([1, 0, 2, 3, -2, 4, 5, 0, 4, 3, 4, 2, 1, 2]) == false
    @test monotonic([-2, -1, 1, 2, 1, 0, -1, 2, 2]) == false
    @test monotonic([1, 2, 1, 1, 3, 0, 1, 5]) == false
    @test monotonic([2, 3, 4, 5, 6, 3, 2, 1, 9]) == false
    @test monotonic([5, 4, 1, 4, 1, 1, 0, 1, 2, 3, 4, 5, 3, 1]) == false
    @test monotonic([10, 2, 5, 3, 2, 6, 9, 7, 5, 4, 4, 3]) == false
    @test monotonic([3, 2, 1, 1, 1, 4, 4, 1]) == false
    @test monotonic([1, 1, 0, 1, 0]) == false
    @test monotonic([2, 2, -1, 1, 1, 1, 4, 4, 5, 4, 1, 4, 4]) == false
    @test monotonic([2, 2, 1, 1, 0, 4, 5, 5, 2, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 4, 4, 4]) == false
    @test monotonic([-2, -1, 0, 1, 2, 1, 3, 0, -1, -2, 1, 0]) == false
    @test monotonic([2, 2, 1, 2, 1, 3, 4, 1]) == false
    @test monotonic([2, 7, 3, 4, 5, 6, 3, 2, 1, 9]) == false
    @test monotonic([-2, -1, 0, 0, 2, 2, 0, -1, -2]) == false
    @test monotonic([5, 4, 1, 4, 1, 0, 1, 2, 3, 4, 5, 3, 1]) == false
    @test monotonic([3, 2, 0, 2, 1, 1, 4, 4, 4]) == false
    @test monotonic([3, 2, 2, 1, 1, 4, 4, 4, 4]) == false
    @test monotonic([5, 4, 6, 4, 2, 1, 2, 3, 4, 4, 5, 3]) == false
    @test monotonic([0, 1, 2, 3, 4, 5, 3, 4, 0, 2, 1, 3, 1, 5]) == false
    @test monotonic([2, 2, 1, 1, -1, 4, 5, 5, 1]) == false
    @test monotonic([1, 2, 3, 4, 10, 4, 3, 2, 2, 1, 4, 1]) == false
    @test monotonic([1, 2, 3, 4, 3, 3, 4, 3, -1, 2, 1, 4]) == false
    @test monotonic([2, 2, 2, 1, 1, 0, 7, 5, 5]) == false
    @test monotonic([1, 7, 2, 2, 1, 1, 1, 4, 4, 1, 1]) == false
    @test monotonic([2, 2, 0, 5, 1, 1, 4, 4, 5]) == false
    @test monotonic([2, 1, 1, 2, 1, 4, 4, 4, 4, 1, 1]) == false
    @test monotonic([2, 1, 1, 0, 4, 6, 5]) == false
    @test monotonic([2, 2, 7, 2, 1, 1, 1, 4, -2, 4, 4]) == false
    @test monotonic([3, 0, 2, 1, 1, 4, 4, 4]) == false
    @test monotonic([1, 2, 3, 4, 5, 3, 4, 2, 6, 1]) == false
    @test monotonic([1, 1, 1, 1, 9, 1]) == false
    @test monotonic([2, 1, 1, 1, 4, 4, 5]) == false
    @test monotonic([-2, -1, 1, 2, 2, 1, 0, -1, 2, 2, 1]) == false
    @test monotonic([5, 2, 4, 1, 4, 1, 1, 5, 1, 2, 3, 4, 5, 3, 1]) == false
    @test monotonic([2, 2, 3, 0, 1, 1, 1, 4, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 5, 5, 1, 4]) == false
    @test monotonic([2, 1, 1, 1, 4, 4, 5, 0]) == false
    @test monotonic([2, 1, 1, 1, 1, 10, 1, 4, 4, 4, 4]) == false
    @test monotonic([1, 5, 3, 5, 4, 4, 6]) == false
    @test monotonic([5, 1, 1, 10, 1]) == false
    @test monotonic([1, 2, 3, 5, 4, 3, 2, 1, 4]) == false
    @test monotonic([-2, -1, 0, 1, 2, 1, 0, -1]) == false
    @test monotonic([5, 5, 3, 1, 1, 3, 4, -2, 3, 1]) == false
    @test monotonic([-2, -2, 0, 1, 2, 1, 0, -1, -2]) == false
    @test monotonic([1, 0, 2, 3, -2, 4, 5, 0, 4, 3, 4, 2, 1, 2, -2]) == false
    @test monotonic([1, 2, 1, -1, 0, 1, 5]) == false
    @test monotonic([-2, -1, 0, 0, 2, 2, 5, 0, 1, -2]) == false
    @test monotonic([-2, -2, 0, 0, 2, 2, 5, 0, 1, -3, -2]) == false
    @test monotonic([2, 1, 1, 4, 4, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, 10, 4, 5, 4, 4]) == false
    @test monotonic([2, 1, 1, 0, 1, 1, 4, 4, 4]) == false
    @test monotonic([5, 5, 3, 2, 1, 1, 1, 2, 3, 4, -2, 3, 1, -2]) == false
    @test monotonic([1, 2, 3, 4, 10, 4, 3, 2, 1, 3]) == false
    @test monotonic([2, 2, 1, 0, 1, 4, 4, 1]) == false
    @test monotonic([2, 7, 2, 1, 1, 1, 4, -2, 4]) == false
    @test monotonic([-1, 1, 2, 3, 4, 5, 3, 4, 0, 2, 1, 3, 1, 5]) == false
    @test monotonic([1, 3, 4, 5, 3, 4, 2, 1, 3]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 5, 4, 1, 4, 2]) == false
    @test monotonic([2, 2, 2, 1, 1, 0, 1, 0, 2]) == false
    @test monotonic([4, 1, 1, 1, 0, 4, 5, 5]) == false
    @test monotonic([1, 2, 3, 3, 5, 2, 3, 2, 4]) == false
    @test monotonic([1, 2, 3, 4, 4, 3, 2, 1, 3, 3]) == false
    @test monotonic([1, 0, 2, 3, -2, 4, 5, 0, 4, 3, 4, 1, 2, -2]) == false
    @test monotonic([2, 7, 3, 4, 5, 6, 3, 2, 0, 1, 9]) == false
    @test monotonic([1, 2, 1, 1, 3, 0, 1]) == false
    @test monotonic([2, 2, 1, 1, -1, 1, 5, 5, 5, 5]) == false
    @test monotonic([1, 2, 3, -2, 4, 5, 4, 3, 2, 4, 2, 2, 2]) == false
    @test monotonic([4, 1, 1, 1, 0, 10, 4, 5, 5]) == false
    @test monotonic([1, 7, 2, 2, 2, 1, 1, 1, 4, 4, 1, 1]) == false
    @test monotonic([1, 3, 4, 4, 4, 2, 1, 4]) == false
    @test monotonic([5, 5, 4, 3, 2, 1, 2, 3, 4, 5, 3]) == false
    @test monotonic([1, 2, 7, 5, 3, 4, 4, 4, 3, -1, 2, 1, 6, 4]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 4, 4, 4, 2]) == false
    @test monotonic([2, 2, 1, 1, 1, 2, 1, 4, 4, 5, 4, 1, 4, 4]) == false
    @test monotonic([4, 2, 1, 1, 1, 4, 4, 1]) == false
    @test monotonic([4, 1, 1, 1, 0, 4, 5, 5, 5]) == false
    @test monotonic([2, 1, 1, 1, 1, 1, 4, 1, 4, 4, 4]) == false
    @test monotonic([2, 2, -1, 2, 1, 1, 1, 4, 4, 5, 4, 1, 4, 4]) == false
    @test monotonic([-3, 2, 1, 1, 1, 0, 4, 0, 5, 4]) == false
    @test monotonic([2, 3, 4, 5, 6, 3, 2, 1, 9, 3]) == false
    @test monotonic([1, 9, 2, 3, 4, 4, 4, 3, 2, 1, 4]) == false
    @test monotonic([4, 1, 1, 1, 0, 4, 5, 5, 1]) == false
    @test monotonic([3, 1, 1, 0, 1, 1, 4, 4, 4]) == false
    @test monotonic([5, 4, 3, 2, 1, 1, 1, 2, 3, 4, 5, 2]) == false
    @test monotonic([2, 2, 0, 2, 1, 1, 1, 4, 4, 5, 4, 4, 4]) == false
    @test monotonic([1, 2, 3, 4, 5, 3, 4, 2, 1, -1, 3]) == false
    @test monotonic([2, 2, 0, 2, 1, 1, 4, 4, 5, 4, 4, 4]) == false
    @test monotonic([2, 2, 0, 1, 1, 4, 5, 5, 2]) == false
    @test monotonic([1, 2, 3, 4, 1, 4, 3, 2, 1, 4, 3]) == false
    @test monotonic([5, 5, 3, 2, 1, 1, 2, 3, 4, -2, 3, 1, 3]) == false
    @test monotonic([1, 1, 1, 1, 1, 1, 1, 1]) == true
    @test monotonic([1, 2, 3, 4, 3, 3, 4, 3, -1, 2, 1, 4, 4]) == false
    @test monotonic([2, 2, 2, 1, -1, 1, 0, 1, 2]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 4, 4, 1]) == false
    @test monotonic([4, 2, 1, 2, 3, 4, 5, 5, 3, 4, 2, 4]) == false
    @test monotonic([1, 2, 3, 4, 4, 3, 1, 3]) == false
    @test monotonic([2, 2, 1, 1, -1, 4, 1, 5, 5, 1]) == false
    @test monotonic([2, 0, -2, 1, 1, 4, 4, 5]) == false
    @test monotonic([2, 2, 1, 1, -1, 1, 5, 5, 5, -1]) == false
    @test monotonic([1, 1, 0, 1, 1, 0, 1]) == false
    @test monotonic([10, 2, 5, 3, 2, 2, 6, 9, 7, 5, 4, 4, 3]) == false
    @test monotonic([1, 3, 1, 2, 2, 4, 4]) == false
    @test monotonic([4, 1, 1, 1, 4, 5, 5]) == false
    @test monotonic([2, 2, 1, 1, 1, 0, 4, 4, 4, 4]) == false
    @test monotonic([2, 1, 1, 1, 1, 4, 4, 4, 1]) == false
    @test monotonic([2, 2, 1, 2, 1, 4, 4, 4]) == false
    @test monotonic([2, 1, 1, 1, 1, 4, 4, 4, 4]) == false
    @test monotonic([2, 0, -2, 1, 1, 4, 4, 5, 0]) == false
    @test monotonic([-2, -1, 0, 1, 2, 1, 0, -1, 1]) == false
    @test monotonic([2, 1, 0, 2, 1, 4, 4, 4, 4]) == false
    @test monotonic([2, 1, 1, 1, 1, 4, 4, 4, 4, 1, 2]) == false
    @test monotonic([1, 2, 5, 3, 4, 4, 4, 3, -1, 2, 1, 6, 4, 5]) == false
    @test monotonic([5, 4, 1, 4, 2, 1, 1, 1, 2, 3, 4, 5, 3, 1]) == false
    @test monotonic([5, 1, 10, 10, 1]) == false
    @test monotonic([4, 2, 1, 1, 1, 4, 5, 1]) == false
    @test monotonic([1, 2, 1, 4, 1, 3, 0, 1, 5, 1]) == false
    @test monotonic([2, 2, -3, 1, -3, 1, 4, 4, 4, 4, 1]) == false
    @test monotonic([-2, -2, 0, 1, 2, 1, 0, -1, -2, 0]) == false
    @test monotonic([1, 2, 1, 1, 0, 1, 5, 1]) == false
    @test monotonic([-2, -1, 0, 0, 2, 2, 0, -1, -2, 2]) == false
    @test monotonic([1, 2, 3, 4, 5, 3, 1, 3]) == false
    @test monotonic([10, 9, 2, 3, 4, 4, 4, 3, 2, 1, 4]) == false
    @test monotonic([10, 9, 2, 5, 3, 2, 6, 9, 7, 5, 4]) == false
    @test monotonic([2, 4, 2, 1, 1, -1, 0, 5, 5, 5, 5]) == false
    @test monotonic([2, 1, 1, 1, 4, 4, 5, 1]) == false
    @test monotonic([2, 2, 2, 1, 1, 1, 4, -2, 4, 4, 2]) == false
    @test monotonic([2, 2, 1, 1, 1, 4, 4, 4]) == false
    @test monotonic([1, 2, 3, 3, 5, 2, 3, 2, 4, 3]) == false
    @test monotonic([5, 5, 3, -3, 2, 1, 1, 1, 2, 3, 4, -2, 3, 1, -2, -2]) == false
    @test monotonic([2, 2, 1, 0, 1, 4, 1]) == false
    @test monotonic([1, 2, 3, 0, 5, 4, 3, 2, 4]) == false
    @test monotonic([2, 1, 9, 0, 1, 4, 1]) == false
    @test monotonic([-2, -1, 0, 1, 2, 1, 0, -1, 1, 2]) == false
    @test monotonic([2, 2, 0, 1, 4, 4, 5, 1]) == false
    @test monotonic([1, 2, 7, 3, 4, 10, 4, 3, 3, 2, 1, 4]) == false
    @test monotonic([2, 2, 1, 0, 2, 1, 4, 4, 4, 4]) == false
    @test monotonic([6, 2, 2, 1, 10, 1, 4, 4, 5, 5, 1, 4]) == false
    @test monotonic([10, 9, 2, 3, 4, 4, -3, 4, 1, 3, 6, 2, 1, 4]) == false
    @test monotonic([5, 4, 5, 2, 1, 1, 1, 2, 3, 4, 5, 1, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 0]) == true
    @test monotonic([2, 1, 1, 1, 1, 1, 4, 4, 4]) == false
    @test monotonic([5, -1, 4, 3, 2, 1, 1, 1, 2, 3, 4, 5, 3]) == false
    @test monotonic([1, 10, 1, 1, 3, 0, 1, 5]) == false
    @test monotonic([4, 1, 1, 1, 0, 4, 5, 5, 5, 1]) == false
    @test monotonic([-2, -1, 0, 0, 2, 2, 5, 0, 2, -2]) == false
    @test monotonic([1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 3]) == false
    @test monotonic([3, 1, 2, 2, 4, 4, 2, 2]) == false
    @test monotonic([1, 2, 3, 3, 5, 2, 2, 3, 2, 4]) == false
    @test monotonic([1, 1, 0, 1, 5]) == false
    @test monotonic([-2, 2, -1, 2, 1, 0, -1, 0, 2]) == false
    @test monotonic([1, 2, 2, 3, 5, 3, 4, 2, 1, 1, 3]) == false
    @test monotonic([1, 2, 3, 4, 9, 4, 3, 2, 4]) == false
    @test monotonic([4, 2, 1, 1, 1, 4, 4, 1, 10, 4]) == false
    @test monotonic([1, 5, 3, 4, 5, 4, 6, 2, 1, 4, 4, 1]) == false
    @test monotonic([2, 1, -1, 1, 5, 5, 5, -1]) == false
    @test monotonic([2, 1, 0, 2, 1, 4, 4, 5, 4, 4]) == false
    @test monotonic([2, 1, 1, 1, 10, 1, 4, 4, 4, 4]) == false
    @test monotonic([4, 2, 1, 1, 1, 1]) == true
    @test monotonic([-2, -1, 0, 1, 2, 1, 3, 0, -2, 1, 0]) == false
    @test monotonic([1, 2, 3, 3, 5, 2, 3, 2, 4, 3, 4, 3, 3]) == false
    @test monotonic([0, 1, 3, 3, 2, 2, 4, 4]) == false
    @test monotonic([-2, 0, 0, 0, 2, 2, 0, -1, -2]) == false
    @test monotonic([5, 4, 5, 2, 1, 1, 1, 2, -2, 3, 4, 5, 1, 1]) == false
    @test monotonic([5, 1, 1, 10, 5, 10, 1]) == false
    @test monotonic([1, 2, 2, 1, 1, 1, 4, 4, 5, 4, 1, 4, 4]) == false
    @test monotonic([2, 2, 3, 0, 1, 1, 4, 4]) == false
    @test monotonic([1, 2, 1, 1, 1, 4, 4, -1, 4, 2, -1]) == false
    @test monotonic([4, 2, 1, 1, 1, 4, 3, 4, 1, 10, 4]) == false
    @test monotonic([1, 2, 1, 4, 1, 2, 3, 0, 1, 5, 1]) == false
    @test monotonic([1, 1, 0, 1, 5, 1, 1]) == false
    @test monotonic([1, 2, 3, 4, 5, 3, 2, 1, 3, 3]) == false
    @test monotonic([2, 2, 1, 1, -1, 1, 5, 5, 5, -1, 2]) == false
    @test monotonic([1, 3, 0, 4, 3, 4, 3, 3, 2, 1, 5, 4]) == false
    @test monotonic([3, 1, 2, 2, 0, 4, 4, 2, -1, 1]) == false
    @test monotonic([2, 2, 1, 2, 1, 3, 4, 4]) == false
    @test monotonic([1, 2, -2, 3, 3, 5, 2, 3, 2, 4, 3]) == false
    @test monotonic([2, 2, 1, 1, 1, 1, 4, -2, 4, -3, 4, 2]) == false
    @test monotonic([5, 5, 3, 2, 1, 1, 1, 1, 2, 3, 4, -2, 3, 1]) == false
    @test monotonic([5, 1, 1, 0, 4, 5, 4, 5]) == false
    @test monotonic([4, 5, 3, 2, 1, 1, 2, 3, 4, -2, 3, 1, 3]) == false
    @test monotonic([2, 0, -2, 1, 1, 4, 4, 5, 4]) == false
    @test monotonic([2, 2, 2, 1, 1, 0, 1, 2, 0]) == false
    @test monotonic([2, 3, 4, 5, 6, 3, 1, 9, 3]) == false
    @test monotonic([1, 2, 1, 1, 0, 1, 4, 5]) == false
    @test monotonic([1, 1, 1, 2, 1, 9, 1]) == false
    @test monotonic([1, 1, 1, 10, 1, 10]) == false
    @test monotonic([5, 3, 2, 1, 1, 2, 3, 4, -2, 3, 1, 3]) == false
    @test monotonic([0, 1, 2, 3, 4, 5, 3, 4, 2, 6, 1]) == false
    @test monotonic([4, 1, 1, 1, 0, 10, 3, 5, 5]) == false
    @test monotonic([-2, -1, 0, 1, 2, 2, 0, -1, -2, -1, -2, -1]) == false
    @test monotonic([2, 1, 1, 0, 0, 4, 4, 4]) == false
    @test monotonic([5, 1, 2, 3, 4, 10, 4, 3, 2, 1, 3]) == false
    @test monotonic([1, 2, 3, 4, 5, 4, 3, 2, 3]) == false
    @test monotonic([3, 2, 0, 2, 1, 1, 4, 4]) == false
    @test monotonic([1, 7, 2, 2, 2, 1, 1, 1, 4, 4, 1, 1, 2, 2]) == false
    @test monotonic([5, 2, 4, 1, 4, -3, 1, 1, 5, 1, 2, 3, 4, 5, 3, 1]) == false
    @test monotonic([5, 1, 10, 1, 10, 2, 1]) == false
    @test monotonic([5, 4, 3, 2, 1, 1, 1, 2, 3, 4, 5, 3, 1, 1]) == false
    @test monotonic([2, 2, 7, 2, 1, 1, 1, 4, -2, 4]) == false
    @test monotonic([1, 1, 7, 1, 0, 1]) == false
    @test monotonic([-2, -1, 0, 1, 2, 1, 0, -2, 1, -1]) == false
    @test monotonic([-2, -1, 1, 2, 1, 0, -1, 2, 1]) == false
    @test monotonic([5, 5, 3, 2, 1, 1, 10, 1, 1, 2, 3, 4, -2, 3, 1]) == false
    @test monotonic([2, 2, 1, 6, 2, 1, 4, 3, 4, 6]) == false
    @test monotonic([2, 1, 3, 6, 1, 1, 1, 4, 1, 4, 4, 4]) == false
    @test monotonic([1, 2, 7, 5, 3, 4, 4, 4, 3, -1, 2, 1, 6, 4, 1]) == false
    @test monotonic([5, 5, 3, 2, 1, 1, 2, 3, -2, 3, 1, 3, 2]) == false
    @test monotonic([1, 2, 3, 4, 5, 3, 1]) == false
    @test monotonic([2, 2, 1, 0, 2, 1, -2, 4, 4, 4, 4]) == false
    @test monotonic([-3, 2, 2, 1, 1, 1, 4, 4, 5]) == false
    @test monotonic([2, 1, 1, 1, 4, 5, 1, 1]) == false
    @test monotonic([1, 2, 3, 4, 5, 1, 4, 3, 2, 1, 3, 3]) == false
    @test monotonic([2, 2, 1, -1, 1, 0, 4, 5, 5, 2, 5]) == false
    @test monotonic([3, 3, 2, 0, 2, 1, 1, 4, 4, 4]) == false
    @test monotonic([10, 9, 2, -3, 3, 2, 6, 9, 7, 5, 4, 10]) == false
    @test monotonic([10, 9, 2, 5, 2, 6, 9, 7, 5, 4]) == false
    @test monotonic([2, 3, 1, 1, 1, 1, 1, 4, 4, 4, 4, 1]) == false
    @test monotonic([1, 2, 3, 2, 10, 4, 3, 2, 2, 1, 4, 1]) == false
    @test monotonic([1, 1, 1, 9, 1]) == false
    @test monotonic([2, 2, 1, 1, 1, 2]) == false
    @test monotonic([5, 1, 1, 0, 4, 5, 4, 5, 4]) == false
    @test monotonic([1, 0, 2, 3, -2, 4, 5, 0, 4, 3, 4, 1, 2, -2, 2]) == false
    @test monotonic([1, 2, 3, 4, 4, 4, 4, 3, 2, 1, 4]) == false
    @test monotonic([3, 2, 2, 1, 1, 1, 4, 4, 4, 2]) == false
    @test monotonic([-2, -1, 0, 1, 2, 1, 0, -1, -2, 2]) == false
    @test monotonic([2, 1, 0, 2, 1, 4, 4, 3, 4, 4]) == false
    @test monotonic([1, 0, 2, 3, -2, 4, 5, 0, 4, 3, 4, 1, 10, -2]) == false
    @test monotonic([1, 10, 1, 1, 3, 1, 5]) == false
    @test monotonic([5, 4, 5, 2, 1, 1, 1, 2, 3, 4, 1, 1, 1]) == false
    @test monotonic([4, 2, 1, 2, 3, 4, 5, 5, 5, 3, 4, 2, 4]) == false
    @test monotonic([1, 2, 3, 4, 10, 4, 3, 2, 2, 1, 4, 1, 4]) == false
    @test monotonic([2, 2, -1, 1, 1, 1, 4, 4, 5, 4, 1, 4, 4, 2]) == false
    @test monotonic([3, 1, 2, 1, 1, 4, 4, 4]) == false
    @test monotonic([1, 2, 3, 4, 4, 2, 1, 3, 3]) == false
    @test monotonic([5, 4, 5, 2, 1, 1, 1, 2, 3, 4, 5, 1, 1, 5]) == false
    @test monotonic([2, 7, 3, 4, 5, 6, 3, 2, 0, 6, 1, 1, 9]) == false
    @test monotonic([4, 2, 1, 1, 1, 3, 5, 1]) == false
    @test monotonic([2, 0, 2, 2, 1, 1, 1, 4, -2, 4, 4]) == false
    @test monotonic([2, 3, 4, 5, 6, 3, 2, 3, 1, 9, 3, 1]) == false
    @test monotonic([-3, 1, 2, 3, 4, 2, 10, 4, 3, 2, 2, 1, 4, 1, 4]) == false
    @test monotonic([2, 1, 2, 4, 5]) == false
    @test monotonic([4, 1, 1, 0, 4, 5, 5]) == false
    @test monotonic([-2, -1, -1, 1, 2, 0, -2]) == false
    @test monotonic([-2, 0, 0, 2, 2, 0, -1, -2]) == false
    @test monotonic([1, 1, 1, 10, 1, 10, 1]) == false
    @test monotonic([4, 2, 2, 1, 1, 3, 5, 1]) == false
    @test monotonic([1, 10, 1, 1, 1, 1]) == false
    @test monotonic([2, 2, 2, 1, 0, 2, 1, 3, 4, 4, 4, 4]) == false
    @test monotonic([2, 7, 3, 3, 5, 6, 3, 2, 0, 1, 9]) == false
    @test monotonic([5, 4, 3, 2, 1, 1, 2, 3, 4]) == false
    @test monotonic([-2, -1, 2, 1, 0, -1]) == false
    @test monotonic([0, 1, 2, 3, 4, 5, 3, 4, 0, 2, 1, 1, 5]) == false
    @test monotonic([2, 2, 1, 1, 5, 0, 4, 5, 5]) == false
    @test monotonic([2, 2, 1, 4, 1, -1, 1, 5, 5, 5, 5]) == false
    @test monotonic([2, 1, 1, 1, 0, 4, 0, 5, 4, 2, 1]) == false
    @test monotonic([2, 2, 1, 1, 0, 2]) == false
    @test monotonic([1, 2, 3, 4, 4, 4, 11, 2, 1, 4]) == false
    @test monotonic([2, 2, 1, 0, 2, 1, 9, 4, 4]) == false
    @test monotonic([5, 3, 2, 1, 1, 2, 3, 4, -2, -1, 1, 3]) == false
    @test monotonic([1, 2, 7, 5, 3, 4, 4, 4, 3, -1, 5, 2, 1, 6, 4]) == false
    @test monotonic([2, 2, 1, 0, 1, 9, 4, 5, 1]) == false
    @test monotonic([2, 4, 2, 1, 1, 1, 4, 4, 4, 4, 4]) == false
    @test monotonic([3, 1, 2, 2, 0, 4, 10, 2, -1, 1]) == false
    @test monotonic([2, 2, 1, 1, 2, 1, 4, 4]) == false
    @test monotonic([1, 1, 1, 0, 1, 5]) == false
    @test monotonic([1, 1, 3, 4, 5, 3, 4, 2, 1, 3, 1]) == false
end
