@testitem "160_do_algebra_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "160_do_algebra.jl"))
    @test do_algebra(["+", "-", "*", "÷"],[5, 2, 3, 4, 7]) == 6
    @test do_algebra(["^", "-", "÷"],[9, 2, 5, 3]) == 80
    @test do_algebra(["*", "-", "*", "÷"],[3, 6, 2, 4, 2]) == 14
    @test do_algebra(["-", "÷", "+", "*"],[10, 2, 4, 3, 6]) == 28
    @test do_algebra(["+", "-", "*", "^"],[2, 3, 4, 5, 2]) == -95
    @test do_algebra(["*", "+", "-"],[1, 2, 3, 4]) == 1
    @test do_algebra(["-", "+", "*", "^"],[5, 4, 3, 2, 1]) == 7
    @test do_algebra(["*", "÷", "-"],[10, 5, 3, 2]) == 14
    @test do_algebra(["^", "+", "-"],[3, 2, 1, 4]) == 6
    @test do_algebra(["*", "+", "÷"],[2, 5, 3, 8]) == 10
    @test do_algebra(["-", "+", "*", "^"],[5, 3, 3, 2, 1]) == 8
    @test do_algebra(["*", "-", "*"],[10, 5, 3, 2]) == 44
    @test do_algebra(["-", "÷", "-"],[10, 5, 3, 2]) == 7
    @test do_algebra(["*", "*", "-"],[10, 5, 3, 2]) == 148
    @test do_algebra(["-", "+", "*", "^"],[5, 3, 3, 2, 2]) == 14
    @test do_algebra(["*", "*", "-"],[9, 10, 3, 2]) == 268
    @test do_algebra(["*", "-", "*", "÷"],[2, 6, 2, 4, 2]) == 8
    @test do_algebra(["+", "-", "*", "*"],[2, 3, 4, 5, 2]) == -35
    @test do_algebra(["*", "+", "÷"],[2, 3, 8, 5]) == 7
    @test do_algebra(["-", "÷", "+", "*"],[9, 2, 4, 3, 6]) == 27
    @test do_algebra(["*", "+", "÷"],[2, 5, 4, 8]) == 10
    @test do_algebra(["*", "-", "^"],[10, 5, 3, 2]) == 41
    @test do_algebra(["-", "+", "*", "^"],[5, 3, 2, 2, 2]) == 10
    @test do_algebra(["-", "÷", "+"],[10, 2, 4, 3]) == 13
    @test do_algebra(["*", "÷", "÷"],[2, 5, 8, 5]) == 0
    @test do_algebra(["-", "÷", "-"],[10, 2, 3, 2]) == 8
    @test do_algebra(["*", "÷"],[2, 5, 5]) == 2
    @test do_algebra(["-", "+", "^", "^"],[5, 3, 3, 2, 2]) == 83
    @test do_algebra(["^", "^", "÷"],[9, 2, 5, 3]) == 2911028703904022272
    @test do_algebra(["*", "-", "*", "÷"],[2, 6, 2, 3, 2]) == 9
    @test do_algebra(["*", "÷", "+"],[2, 5, 8, 5]) == 6
    @test do_algebra(["-", "+", "*", "^"],[5, 4, 3, 2, 2]) == 13
    @test do_algebra(["÷", "÷", "+"],[2, 4, 3, 4]) == 4
    @test do_algebra(["+", "÷", "÷"],[2, 5, 4, 8]) == 2
    @test do_algebra(["^", "÷", "÷"],[2, 5, 4, 8]) == 1
    @test do_algebra(["^", "+", "÷"],[2, 5, 4, 8]) == 32
    @test do_algebra(["*", "÷", "÷"],[2, 3, 8, 5]) == 0
    @test do_algebra(["-", "÷", "+", "*", "*"],[10, 2, 4, 2, 6, 2]) == 34
    @test do_algebra(["*", "-", "*", "*"],[10, 5, 3, 2, 5]) == 20
    @test do_algebra(["^", "+", "-"],[3, 2, 0, 4]) == 5
    @test do_algebra(["-", "+", "*", "^"],[5, 5, 3, 2, 2]) == 12
    @test do_algebra(["-", "÷", "+", "*", "*"],[10, 2, 4, 2, 5, 2]) == 30
    @test do_algebra(["^", "^", "÷"],[9, 2, 5, 4]) == 2183271527928016704
    @test do_algebra(["-", "-", "+", "*", "*"],[10, 2, 4, 2, 5, 2]) == 24
    @test do_algebra(["*", "*", "-"],[10, 4, 3, 2]) == 118
    @test do_algebra(["-", "+", "*", "^"],[8, 4, 2, 2, 2]) == 12
    @test do_algebra(["+", "÷", "*", "^"],[2, 3, 4, 5, 2]) == 2
    @test do_algebra(["÷", "+", "÷"],[2, 4, 3, 4]) == 0
    @test do_algebra(["-", "+", "-", "^"],[5, 4, 3, 2, 1]) == 2
    @test do_algebra(["-", "+", "^", "^"],[5, 5, 3, 2, 2]) == 81
    @test do_algebra(["-", "+", "^"],[5, 3, 3, 2]) == 11
    @test do_algebra(["+", "-", "*", "^"],[8, 3, 4, 5, 2]) == -89
    @test do_algebra(["+", "÷", "*", "^"],[2, 3, 3, 5, 2]) == 27
    @test do_algebra(["-", "+", "-", "^", "^"],[5, 4, 3, 2, 1, 5]) == 2
    @test do_algebra(["-", "÷", "+", "*", "*"],[10, 2, 4, 3, 5, 2]) == 40
    @test do_algebra(["-", "+", "*", "^", "*"],[5, 3, 2, 2, 2, 2]) == 18
    @test do_algebra(["^", "^", "÷"],[9, 2, 6, 4]) == -2301193035446116735
    @test do_algebra(["÷", "+", "÷"],[1, 4, 3, 4]) == 0
    @test do_algebra(["+", "-", "*", "^", "+"],[2, 2, 3, 4, 5, 2]) == -3066
    @test do_algebra(["*", "*", "-"],[10, 5, 10, 2]) == 498
    @test do_algebra(["-", "÷", "-"],[2, 3, 6, 2]) == 0
    @test do_algebra(["-", "+", "^", "^"],[5, 3, 3, 2, 1]) == 11
    @test do_algebra(["+", "+", "÷"],[6, 4, 3, 8]) == 10
    @test do_algebra(["÷", "+", "÷"],[8, 4, 3, 4]) == 2
    @test do_algebra(["^", "÷"],[9, 5, 4]) == 14762
    @test do_algebra(["^", "+", "-"],[4, 2, 0, 4]) == 12
    @test do_algebra(["*", "-", "^"],[10, 5, 2, 6]) == -14
    @test do_algebra(["-", "+", "^"],[10, 3, 3, 2]) == 16
    @test do_algebra(["^", "+", "÷"],[8, 5, 4, 8]) == 32768
    @test do_algebra(["^", "+", "-"],[2, 2, 2, 4]) == 2
    @test do_algebra(["*", "^", "÷", "-"],[10, 5, 3, 3, 2]) == 414
    @test do_algebra(["-", "÷", "+", "÷", "*", "*"],[10, 2, 4, 3, 5, 2, 4]) == 10
    @test do_algebra(["^", "+", "-"],[0, 2, 1, 4]) == -3
    @test do_algebra(["-", "÷", "-"],[1, 5, 3, 2]) == -2
    @test do_algebra(["÷", "-"],[1, 5, 3]) == -3
    @test do_algebra(["-", "-", "÷"],[1, 5, 3, 2]) == -5
    @test do_algebra(["÷", "+", "*", "^"],[5, 3, 3, 2, 2]) == 13
    @test do_algebra(["^", "+", "-"],[2, 8, 2, 4]) == 254
    @test do_algebra(["*", "÷", "+"],[2, 5, 8, 6]) == 7
    @test do_algebra(["-", "+", "^"],[5, 3, 2, 3]) == 10
    @test do_algebra(["*", "-"],[10, 5, 2]) == 48
    @test do_algebra(["-", "+", "*", "^", "*"],[5, 3, 2, 2, 2, 4]) == 34
    @test do_algebra(["^", "+", "-"],[3, 2, 0, 5]) == 4
    @test do_algebra(["*", "*"],[9, 10, 3]) == 270
    @test do_algebra(["÷", "+"],[4, 3, 4]) == 5
    @test do_algebra(["-", "+", "*", "^"],[8, 4, 2, 1, 2]) == 6
    @test do_algebra(["*", "-", "*", "*", "-"],[10, 5, 3, 2, 5, 3]) == 17
    @test do_algebra(["*", "÷"],[2, 3, 8]) == 0
    @test do_algebra(["^", "÷", "÷"],[5, 4, 8, 4]) == 19
    @test do_algebra(["+", "-", "*", "÷"],[3, 2, 3, 4, 7]) == 4
    @test do_algebra(["*", "-", "-", "*"],[10, 5, 3, 2, 5]) == 37
    @test do_algebra(["-", "+", "-", "^", "^", "+"],[5, 4, 3, 2, 1, 5, 2]) == 4
    @test do_algebra(["*", "*", "-", "*"],[10, 10, 5, 10, 2]) == 480
    @test do_algebra(["÷", "+", "÷", "÷"],[8, 4, 3, 4, 4]) == 2
    @test do_algebra(["-", "+", "^", "^"],[5, 3, 10, 2, 1]) == 102
    @test do_algebra(["^", "+", "-"],[3, 1, 1, 4]) == 0
    @test do_algebra(["^", "+", "-", "+"],[2, 2, 2, 4, 2]) == 4
    @test do_algebra(["*", "+", "-"],[10, 4, 3, 2]) == 41
    @test do_algebra(["*", "+", "÷"],[2, 3, 8, 3]) == 8
    @test do_algebra(["+", "-", "*", "*"],[2, 3, 4, 5, 10]) == -195
    @test do_algebra(["+", "-", "*", "÷"],[10, 5, 2, 3, 9]) == 15
    @test do_algebra(["*", "^", "-", "÷"],[5, 2, 7, 10, 3]) == 637
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 4, 5, 6, 7]) == 50
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 3, 5, 2, 7, 1]) == -636
    @test do_algebra(["*", "*", "-", "^", "÷", "+"],[2, 4, 5, 2, 10, 3, 8]) == -293
    @test do_algebra(["÷", "^", "-", "+"],[7, 5, 3, 9, 2]) == -7
    @test do_algebra(["*", "+", "÷", "-", "^"],[9, 3, 8, 2, 10, 7]) == -9999969
    @test do_algebra(["^", "÷", "-", "*", "+"],[3, 4, 5, 6, 7, 8]) == -18
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 5, 2, 4, 3, 8]) == 15
    @test do_algebra(["-", "÷", "*", "^", "+"],[7, 8, 3, 10, 2, 4]) == -189
    @test do_algebra(["-", "÷", "*", "^", "+"],[7, 8, 3, 8, 2, 4]) == -117
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 3, 6, 2, 7, 2]) == -763
    @test do_algebra(["÷", "^", "-", "+"],[7, 5, 3, 9, 9]) == 0
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 2, 6, 2, 7, 2]) == -761
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 6, 2, 7, 2, 6]) == -91
    @test do_algebra(["÷", "-", "^", "+"],[10, 6, 2, 7, 2]) == -125
    @test do_algebra(["÷", "-", "^", "+"],[10, 6, 2, 6, 2]) == -61
    @test do_algebra(["*", "+", "÷", "-", "^"],[9, 3, 8, 2, 10, 2]) == -69
    @test do_algebra(["^", "÷", "-", "*", "+"],[3, 4, 3, 6, 7, 8]) == -7
    @test do_algebra(["-", "÷", "*", "^", "+"],[9, 8, 3, 8, 2, 4]) == -115
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 5, 1, 4, 3, 8]) == 15
    @test do_algebra(["÷", "-", "*", "^"],[10, 3, 2, 7, 2]) == -95
    @test do_algebra(["÷", "^", "-", "+"],[4, 5, 3, 9, 9]) == 0
    @test do_algebra(["*", "+", "÷", "-", "^"],[9, 3, 8, 2, 10, 6]) == -999969
    @test do_algebra(["÷", "-", "*", "÷"],[10, 3, 2, 7, 2]) == -4
    @test do_algebra(["*", "+", "÷", "-", "^"],[2, 3, 8, 2, 10, 2]) == -90
    @test do_algebra(["÷", "^", "-", "+"],[7, 5, 9, 3, 9]) == 6
    @test do_algebra(["-", "÷", "+", "^", "+"],[7, 8, 3, 8, 2, 4]) == 73
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 5, 1, 4, 6, 8]) == 15
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 2, 5, 6, 7]) == 50
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 5, 2, 4, 3, 7]) == 15
    @test do_algebra(["*", "+", "÷", "-", "^", "*"],[9, 3, 8, 2, 10, 6, 9]) == -8999969
    @test do_algebra(["÷", "^", "-", "+", "+"],[7, 5, 4, 9, 3, 9]) == 3
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 6, 2, 2, 6, 10]) == -117
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 2, 5, 6, 6]) == 44
    @test do_algebra(["*", "+", "÷", "-", "^"],[9, 3, 8, 1, 10, 6]) == -999965
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 2, 6, 2, 5, 2]) == -185
    @test do_algebra(["÷", "^", "-", "+"],[2, 5, 9, 3, 9]) == 6
    @test do_algebra(["-", "÷", "+", "^", "-"],[7, 8, 3, 8, 2, 4]) == 65
    @test do_algebra(["-", "^", "*", "^", "+"],[9, 8, 3, 8, 2, 4]) == -32755
    @test do_algebra(["+", "-", "*", "^", "-"],[10, 5, 1, 4, 3, 8]) == -57
    @test do_algebra(["-", "÷", "*", "^", "+"],[7, 8, 8, 10, 2, 4]) == -89
    @test do_algebra(["÷", "-", "^", "÷"],[10, 3, 2, 7, 2]) == -61
    @test do_algebra(["+", "-", "÷", "*", "^"],[3, 5, 1, 4, 6, 8]) == 8
    @test do_algebra(["-", "÷", "*", "^", "^"],[7, 8, 3, 8, 2, 4]) == -562949953421305
    @test do_algebra(["^", "÷", "-", "^", "+"],[3, 4, 3, 6, 7, 8]) == -279901
    @test do_algebra(["*", "+", "÷", "-", "^"],[9, 3, 8, 6, 10, 7]) == -9999972
    @test do_algebra(["^", "-", "÷", "*", "*"],[2, 3, 8, 5, 6, 6]) == -28
    @test do_algebra(["^", "-", "+"],[7, 9, 3, 9]) == 40353613
    @test do_algebra(["^", "^", "-", "+", "+"],[7, 5, 4, 9, 3, 9]) == 2135150283747857802
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 5, 5, 6, 8]) == 55
    @test do_algebra(["-", "*", "+"],[5, 9, 3, 9]) == -13
    @test do_algebra(["^", "-", "÷", "+", "^"],[2, 3, 4, 5, 6, 7]) == 279944
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 1, 5, 6, 6]) == 44
    @test do_algebra(["-", "÷", "*", "^", "+"],[8, 8, 10, 1, 2, 4]) == 12
    @test do_algebra(["÷", "^", "-", "+"],[10, 7, 3, 9, 9]) == 0
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 1, 9, 6, 6]) == 44
    @test do_algebra(["*", "-", "^", "÷"],[10, 3, 2, 7, 2]) == -34
    @test do_algebra(["^", "-", "+"],[7, 4, 3, 9]) == 2407
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 5, 6, 2, 7, 2]) == -764
    @test do_algebra(["÷", "^", "-", "+", "+"],[7, 5, 4, 9, 3, 3]) == -3
    @test do_algebra(["÷", "-", "+", "÷"],[10, 3, 2, 7, 2]) == 4
    @test do_algebra(["-", "÷", "*", "^", "+"],[8, 7, 10, 1, 2, 4]) == 12
    @test do_algebra(["+", "-", "÷", "-", "^"],[3, 5, 1, 4, 6, 8]) == -1679608
    @test do_algebra(["÷", "^", "-", "+"],[7, 4, 9, 3, 9]) == 6
    @test do_algebra(["-", "+", "*", "^", "+"],[7, 8, 3, 8, 2, 4]) == 195
    @test do_algebra(["+", "-", "÷", "-", "^"],[3, 5, 1, 4, 6, 2]) == -28
    @test do_algebra(["^", "-", "*", "÷", "+", "*"],[2, 3, 1, 5, 6, 6, 6]) == 44
    @test do_algebra(["÷", "^", "-", "+", "+"],[7, 5, 4, 10, 3, 9]) == 2
    @test do_algebra(["-", "-", "*", "^", "+"],[7, 8, 8, 10, 2, 4]) == -797
    @test do_algebra(["^", "-", "÷", "+", "^"],[2, 9, 4, 5, 6, 7]) == 280448
    @test do_algebra(["+", "-", "÷", "-", "^"],[3, 5, 1, 4, 6, 5]) == -7768
    @test do_algebra(["^", "-", "+"],[7, 2, 9, 3]) == 43
    @test do_algebra(["^", "-", "+"],[7, 9, 10, 9]) == 40353606
    @test do_algebra(["^", "÷", "-", "*", "+"],[3, 4, 2, 6, 7, 8]) == 6
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 3, 5, 6, 5]) == 38
    @test do_algebra(["+", "-", "÷", "*"],[10, 2, 4, 3, 8]) == 4
    @test do_algebra(["÷", "-", "^", "^", "+"],[10, 6, 2, 7, 2, 6]) == -562949953421305
    @test do_algebra(["-", "÷", "*", "^", "+"],[7, 8, 8, 9, 2, 4]) == -70
    @test do_algebra(["-", "-", "*", "^", "+"],[10, 6, 2, 2, 6, 10]) == -114
    @test do_algebra(["^", "-", "+"],[7, 2, 3, 3]) == 49
    @test do_algebra(["^", "-", "+"],[7, 2, 3, 9]) == 55
    @test do_algebra(["-", "÷", "*", "^", "+"],[7, 9, 8, 10, 2, 4]) == -89
    @test do_algebra(["-", "÷", "*", "^", "+"],[7, 8, 3, 7, 8, 4]) == -11529591
    @test do_algebra(["+", "-", "÷", "-", "^"],[3, 1, 1, 4, 6, 8]) == -1679612
    @test do_algebra(["+", "-", "÷", "-", "^"],[6, 3, 1, 4, 6, 8]) == -1679607
    @test do_algebra(["*", "^", "-", "÷"],[5, 2, 7, 10, 1]) == 630
    @test do_algebra(["*", "^", "-", "*"],[3, 2, 7, 10, 3]) == 354
    @test do_algebra(["-", "÷", "*", "*", "+"],[7, 8, 3, 8, 2, 4]) == -21
    @test do_algebra(["*", "^", "-", "÷"],[3, 2, 7, 10, 3]) == 381
    @test do_algebra(["*", "+", "÷", "-", "^", "-"],[9, 3, 8, 2, 10, 6, 10]) == -999979
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 4, 4, 6, 7]) == 49
    @test do_algebra(["-", "÷", "*", "^", "+", "+"],[7, 8, 8, 9, 2, 4, 2]) == -68
    @test do_algebra(["-", "÷", "*", "^", "+"],[7, 8, 2, 7, 8, 4]) == -23059193
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 6, 6, 7, 2, 6]) == -287
    @test do_algebra(["÷", "+", "*", "÷"],[10, 3, 2, 7, 2]) == 10
    @test do_algebra(["*", "*", "-", "^", "÷", "+"],[2, 4, 5, 2, 10, 3, 10]) == -291
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 4, 5, 6, 1]) == 14
    @test do_algebra(["+", "-", "*", "+", "*"],[2, 3, 1, 5, 6, 6]) == 36
    @test do_algebra(["-", "÷", "+", "^", "+"],[7, 4, 8, 3, 2, 4]) == 20
    @test do_algebra(["÷", "^", "-", "+"],[7, 5, 9, 3, 7]) == 4
    @test do_algebra(["^", "-", "^", "÷"],[10, 3, 2, 7, 2]) == 936
    @test do_algebra(["*", "+", "÷", "-", "^"],[9, 3, 7, 2, 10, 7]) == -9999970
    @test do_algebra(["^", "-", "÷", "+", "*"],[9, 3, 3, 5, 6, 5]) == 759
    @test do_algebra(["*", "^", "-", "÷", "*"],[5, 2, 7, 10, 1, 5]) == 590
    @test do_algebra(["÷", "^", "-", "+", "+"],[4, 10, 3, 10, 9, 9]) == 8
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 6, 2, 6, 2, 6]) == -65
    @test do_algebra(["*", "+", "÷", "-", "*"],[9, 3, 8, 2, 10, 6]) == -29
    @test do_algebra(["*", "+", "÷", "-", "*"],[10, 3, 8, 2, 10, 6]) == -26
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 5, 2, 6, 2, 6]) == -64
    @test do_algebra(["^", "-", "+", "+"],[7, 2, 6, 3, 3]) == 49
    @test do_algebra(["^", "-", "*", "÷", "+", "*"],[2, 3, 1, 5, 1, 6, 6]) == 39
    @test do_algebra(["÷", "-", "*", "^", "-"],[10, 6, 2, 6, 2, 6]) == -77
    @test do_algebra(["*", "-", "^", "÷"],[10, 3, 2, 2, 7]) == 30
    @test do_algebra(["+", "-", "÷", "*"],[10, 2, 4, 3, 7]) == 5
    @test do_algebra(["^", "÷", "-", "*", "+"],[4, 9, 5, 6, 7, 8]) == 52394
    @test do_algebra(["-", "^", "÷", "*", "^", "+"],[9, 8, 8, 10, 2, 4, 2]) == -26843525
    @test do_algebra(["^", "-", "+"],[7, 2, 9, 2]) == 42
    @test do_algebra(["*", "+", "÷", "-", "^"],[9, 4, 8, 2, 10, 7]) == -9999960
    @test do_algebra(["÷", "-", "^", "^", "+"],[10, 6, 6, 7, 2, 6]) == -4793518853382471673
    @test do_algebra(["-", "*", "+"],[4, 9, 3, 9]) == -14
    @test do_algebra(["+", "-", "*", "^"],[3, 0, 4, 6, 8]) == -6718461
    @test do_algebra(["÷", "-", "^", "^", "+"],[10, 5, 2, 6, 2, 6]) == -68719476728
    @test do_algebra(["÷", "-", "^", "-", "^", "+"],[10, 5, 2, 6, 2, 6, 2]) == -124
    @test do_algebra(["^", "-", "÷", "^", "*"],[2, 3, 3, 5, 6, 5]) == 8
    @test do_algebra(["+", "-", "*", "^", "-", "*"],[10, 5, 1, 4, 3, 8, 1]) == -57
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 2, 1, 6, 6]) == 42
    @test do_algebra(["*", "+", "^", "-", "^"],[9, 3, 8, 1, 10, 6]) == -999965
    @test do_algebra(["-", "-", "*", "^", "+"],[7, 8, 8, 10, 2, 3]) == -798
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 5, 1, 4, 6, 4]) == 15
    @test do_algebra(["+", "-", "÷", "*"],[10, 2, 4, 3, 6]) == 6
    @test do_algebra(["÷", "^", "-", "+"],[7, 4, 8, 3, 9]) == 6
    @test do_algebra(["+", "-", "÷", "-", "^"],[6, 3, 6, 4, 6, 8]) == -1679608
    @test do_algebra(["^", "-", "*", "÷", "+", "*"],[9, 8, 1, 5, 1, 6, 6]) == 43046752
    @test do_algebra(["-", "÷", "*", "^", "+"],[7, 9, 8, 5, 2, 4]) == -14
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 6, 2, 6, 6, 6]) == -93305
    @test do_algebra(["^", "-", "÷", "+", "*"],[9, 3, 4, 5, 6, 5]) == 759
    @test do_algebra(["^", "-", "÷", "+", "*", "÷"],[4, 9, 3, 3, 5, 6, 5]) == 262149
    @test do_algebra(["-", "*", "÷", "+", "*", "+"],[2, 3, 1, 5, 1, 6, 6]) == 14
    @test do_algebra(["÷", "-", "^", "^", "+"],[10, 5, 2, 6, 5, 6]) == 8
    @test do_algebra(["÷", "-", "*", "*", "+"],[10, 5, 6, 2, 7, 2]) == -80
    @test do_algebra(["^", "-", "÷", "-", "+", "*"],[9, 3, 4, 5, 6, 5, 6]) == 753
    @test do_algebra(["÷", "^", "-", "+"],[7, 5, 2, 9, 2]) == -7
    @test do_algebra(["*", "+", "÷", "-", "^"],[9, 4, 9, 2, 10, 7]) == -9999960
    @test do_algebra(["÷", "*", "^", "+", "^"],[7, 8, 3, 10, 2, 4]) == 16
    @test do_algebra(["-", "-", "*", "^", "+"],[8, 8, 8, 10, 2, 3]) == -797
    @test do_algebra(["+", "-", "*", "^", "*", "-"],[10, 5, 1, 4, 3, 8, 3]) == -500
    @test do_algebra(["^", "-", "+", "+"],[7, 5, 9, 3, 9]) == 16810
    @test do_algebra(["^", "-", "÷", "^", "÷"],[2, 3, 3, 5, 6, 5]) == 8
    @test do_algebra(["^", "-", "*", "+"],[4, 3, 6, 7, 8]) == 30
    @test do_algebra(["+", "÷", "*", "^"],[10, 5, 3, 4, 3]) == 74
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 4, 4, 7, 7]) == 56
    @test do_algebra(["*", "+", "÷", "-", "*"],[9, 10, 8, 2, 10, 6]) == 34
    @test do_algebra(["÷", "-", "^", "÷"],[10, 3, 2, 7, 3]) == -39
    @test do_algebra(["^", "÷", "*", "^", "+"],[7, 9, 8, 10, 2, 4]) == 504420004
    @test do_algebra(["^", "-", "÷", "^", "÷"],[2, 2, 3, 5, 6, 5]) == 4
    @test do_algebra(["-", "÷", "+", "^", "-"],[7, 8, 3, 8, 3, 4]) == 513
    @test do_algebra(["-", "^", "*", "^", "*"],[9, 8, 3, 8, 2, 4]) == -131063
    @test do_algebra(["+", "-", "÷", "-", "^"],[6, 3, 0, 4, 6, 8]) == -1679607
    @test do_algebra(["-", "÷", "*", "÷", "+"],[7, 8, 3, 8, 2, 4]) == 3
    @test do_algebra(["÷", "^", "-", "+"],[2, 5, 10, 3, 9]) == 6
    @test do_algebra(["^", "-", "*", "+"],[4, 3, 6, 7, 5]) == 27
    @test do_algebra(["*", "+", "÷", "-", "*"],[9, 10, 10, 2, 10, 6]) == 35
    @test do_algebra(["*", "*", "-", "^", "÷", "+", "÷"],[9, 2, 4, 5, 2, 10, 3, 10]) == 70
    @test do_algebra(["÷", "-", "*", "^", "+", "+"],[10, 6, 9, 2, 2, 6, 10]) == -19
    @test do_algebra(["*", "+", "÷", "-", "*", "÷"],[9, 10, 10, 2, 10, 2, 9]) == 93
    @test do_algebra(["÷", "-", "*", "+", "+"],[10, 5, 6, 2, 7, 2]) == -1
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 3, 1, 1, 5, 6]) == 37
    @test do_algebra(["-", "÷", "*", "^", "+"],[7, 8, 8, 10, 2, 0]) == -93
    @test do_algebra(["^", "-", "÷", "+", "^"],[2, 3, 4, 5, 0, 7]) == 8
    @test do_algebra(["-", "÷", "+", "^", "-"],[7, 8, 3, 9, 2, 4]) == 82
    @test do_algebra(["^", "^", "-", "+", "+"],[7, 3, 4, 9, 3, 9]) == -8096086233342170998
    @test do_algebra(["^", "-", "÷", "*", "*"],[2, 3, 8, 4, 6, 6]) == -64
    @test do_algebra(["÷", "-", "^", "+"],[10, 6, 2, 2, 6]) == 3
    @test do_algebra(["-", "÷", "+", "^", "*"],[7, 8, 3, 8, 2, 4]) == 261
    @test do_algebra(["-", "÷", "*", "^", "+"],[7, 8, 3, 8, 7, 4]) == -4194293
    @test do_algebra(["+"],[5, 10]) == 15
    @test do_algebra(["+", "*", "-"],[0, 0, 0, 0]) == 0
    @test do_algebra(["÷", "-", "*", "^", "+", "^"],[10, 3, 5, 2, 7, 1, 3]) == -636
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 3, 7, 5, 7, 1]) == -546871
    @test do_algebra(["÷", "-", "*", "^", "+", "^"],[10, 3, 5, 2, 4, 1, 3]) == -76
    @test do_algebra(["+", "-", "*", "÷"],[1, 5, 2, 3, 9]) == 6
    @test do_algebra(["*", "-", "^", "÷", "+", "÷"],[2, 4, 5, 2, 10, 3, 8]) == 6
    @test do_algebra(["÷", "-", "*", "*", "+"],[10, 3, 5, 2, 7, 1]) == -66
    @test do_algebra(["^", "*", "*", "-", "÷", "+"],[2, 4, 5, 2, 10, 3, 8]) == 165
    @test do_algebra(["÷", "-", "*", "*"],[10, 3, 5, 2, 1]) == -7
    @test do_algebra(["÷", "-", "*", "^", "+", "^"],[10, 4, 5, 2, 4, 1, 7]) == -77
    @test do_algebra(["÷", "^", "-", "+"],[7, 5, 4, 9, 2]) == -7
    @test do_algebra(["÷", "^", "-", "+"],[7, 4, 4, 9, 2]) == -7
    @test do_algebra(["^", "*", "*", "-", "÷", "÷"],[2, 4, 5, 2, 10, 3, 8]) == 160
    @test do_algebra(["*", "^", "-", "÷"],[5, 1, 7, 10, 2]) == 0
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 5, 1, 4, 3, 7]) == 15
    @test do_algebra(["÷", "^", "-", "+"],[1, 5, 4, 9, 2]) == -7
    @test do_algebra(["÷", "-", "*", "*"],[8, 3, 5, 8, 1]) == -38
    @test do_algebra(["*", "^", "+"],[2, 7, 10, 3]) == 564950501
    @test do_algebra(["*", "*", "-", "^", "÷", "+"],[2, 4, 5, 2, 10, 7, 8]) == -98
    @test do_algebra(["*", "^", "-", "*", "÷"],[11, 5, 2, 7, 10, 3]) == 252
    @test do_algebra(["*", "^", "-", "*", "÷", "÷"],[11, 5, 2, 6, 7, 10, 3]) == 274
    @test do_algebra(["÷", "-", "*", "^", "+", "+"],[10, 3, 7, 5, 7, 9, 1]) == -546862
    @test do_algebra(["+", "-", "*", "÷"],[1, 5, 3, 3, 9]) == 5
    @test do_algebra(["+", "-", "÷", "*", "^"],[3, 5, 1, 4, 3, 7]) == 8
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 5, 4, 3, 8, 4]) == -4081
    @test do_algebra(["÷", "^", "-", "-"],[1, 5, 4, 9, 2]) == -11
    @test do_algebra(["*", "^", "-", "*", "÷"],[11, 5, 2, 6, 7, 10]) == 271
    @test do_algebra(["÷", "+", "^", "+"],[7, 5, 4, 9, 2]) == 262147
    @test do_algebra(["+", "-", "÷", "*", "^", "-"],[10, 5, 4, 3, 4, 3, 8]) == -57
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 3, 5, 7, 1, 1]) == -31
    @test do_algebra(["*", "^", "-", "÷"],[2, 1, 7, 10, 2]) == -3
    @test do_algebra(["÷", "+", "-", "+"],[7, 4, 4, 9, 2]) == -2
    @test do_algebra(["÷", "-", "^", "*", "*"],[10, 3, 5, 2, 1, 1]) == -22
    @test do_algebra(["+", "-", "÷", "*", "^"],[3, 4, 1, 4, 3, 7]) == 7
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 5, 2, 3, 11, 8]) == 15
    @test do_algebra(["+", "-", "÷", "*", "^"],[7, 5, 1, 4, 3, 7]) == 12
    @test do_algebra(["*", "^", "÷", "÷"],[2, 1, 7, 10, 11]) == 0
    @test do_algebra(["*", "-", "^", "÷", "+", "÷"],[2, 4, 5, 2, 10, 7, 8]) == 6
    @test do_algebra(["÷", "-", "*", "*", "*"],[8, 6, 3, 5, 8, 1]) == -119
    @test do_algebra(["+", "-", "÷", "*", "^"],[8, 5, 1, 4, 3, 7]) == 13
    @test do_algebra(["-", "÷", "÷", "^", "+"],[7, 8, 3, 10, 2, 4]) == 11
    @test do_algebra(["*", "^", "-", "^", "÷", "÷"],[11, 5, 2, 6, 7, 10, 3]) == -9056
    @test do_algebra(["÷", "-", "^", "*", "*"],[10, 3, 1, 5, 2, 1]) == 1
    @test do_algebra(["+", "-", "*", "÷"],[7, 5, 3, 3, 9]) == 11
    @test do_algebra(["÷", "^", "-", "-"],[1, 8, 4, 9, 2]) == -11
    @test do_algebra(["÷", "-", "*", "*", "*"],[8, 10, 3, 5, 8, 1]) == -120
    @test do_algebra(["÷", "^", "-", "-"],[7, 4, 4, 9, 2]) == -11
    @test do_algebra(["÷", "-", "*", "^", "+", "^"],[10, 3, 5, 2, 6, 1, 3]) == -316
    @test do_algebra(["÷", "-", "*", "^", "+", "^"],[10, 3, 5, 2, 4, 1, 5]) == -76
    @test do_algebra(["^", "*", "*", "-", "÷", "-"],[2, 4, 5, 2, 10, 3, 8]) == 149
    @test do_algebra(["÷", "-", "^", "*", "*", "^"],[10, 9, 3, 5, 2, 1, 1]) == -485
    @test do_algebra(["^", "*", "*", "-", "÷", "÷"],[2, 4, 2, 10, 3, 8, 4]) == 320
    @test do_algebra(["÷", "^", "-", "-"],[7, 4, 7, 9, 2]) == -11
    @test do_algebra(["*", "^", "-", "^", "÷", "÷", "-"],[11, 5, 2, 6, 7, 10, 3, 10]) == -9066
    @test do_algebra(["+", "-", "*", "÷"],[1, 5, 2, 3, 3]) == 4
    @test do_algebra(["+", "-", "÷", "*", "^"],[7, 5, 1, 4, 2, 7]) == 12
    @test do_algebra(["÷", "-", "*", "*", "*", "÷"],[8, 4, 6, 3, 5, 8, 1]) == -718
    @test do_algebra(["÷", "-", "*", "÷", "+", "^"],[10, 3, 5, 2, 7, 1, 3]) == 3
    @test do_algebra(["÷", "*", "*", "^", "+", "^"],[10, 3, 5, 2, 4, 1, 3]) == 241
    @test do_algebra(["+", "-", "^", "*", "÷"],[10, 5, 2, 3, 9, 10]) == 8
    @test do_algebra(["÷", "-", "*", "*", "*", "÷"],[8, 4, 10, 3, 5, 8, 1]) == -1198
    @test do_algebra(["÷", "^", "-", "+"],[7, 4, 3, 9, 2]) == -7
    @test do_algebra(["÷", "-", "*", "^", "÷", "^"],[10, 3, 5, 2, 7, 1, 3]) == -637
    @test do_algebra(["÷", "+", "^", "+", "÷"],[7, 5, 4, 9, 2, 9]) == 262145
    @test do_algebra(["÷", "*", "*", "^", "+", "*"],[10, 3, 5, 2, 4, 1, 3]) == 243
    @test do_algebra(["+", "-", "*", "+"],[1, 5, 2, 3, 9]) == 9
    @test do_algebra(["÷", "-", "*", "^", "+", "^"],[10, 4, 5, 2, 4, 1, 8]) == -77
    @test do_algebra(["*", "^", "-", "*"],[5, 1, 7, 10, 2]) == -15
    @test do_algebra(["+", "-", "*", "÷", "-"],[10, 11, 2, 3, 9, 3]) == 18
    @test do_algebra(["*", "-", "^", "÷", "÷"],[11, 5, 2, 6, 7, 3]) == 52
    @test do_algebra(["-", "÷", "*", "+"],[7, 8, 3, 10, 4]) == -9
    @test do_algebra(["*", "^", "-", "÷"],[5, 1, 7, 10, 3]) == 2
    @test do_algebra(["÷", "+", "-", "+"],[7, 5, 4, 9, 2]) == -2
    @test do_algebra(["*", "^", "-", "^", "+", "÷", "-"],[11, 5, 2, 6, 7, 10, 3, 10]) == -279668
    @test do_algebra(["^", "^", "-", "*"],[4, 1, 7, 10, 2]) == -16
    @test do_algebra(["^", "÷", "-", "*", "*", "+"],[10, 3, 5, 2, 7, 1, 7]) == 193
    @test do_algebra(["÷", "-", "*", "*", "*", "÷"],[8, 10, 3, 5, 8, 1, 1]) == -120
    @test do_algebra(["*", "^", "-", "^", "+", "÷", "-"],[11, 5, 2, 4, 7, 10, 3, 10]) == -16116
    @test do_algebra(["*", "*", "-", "^", "÷", "+"],[2, 4, 5, 8, 2, 10, 7]) == 41
    @test do_algebra(["*", "*", "-", "^", "÷", "+", "+"],[2, 4, 5, 5, 8, 2, 10, 7]) == -195255
    @test do_algebra(["*", "*", "*", "^", "+", "^"],[10, 3, 5, 2, 4, 1, 3]) == 2401
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 4, 1, 4, 3, 7]) == 14
    @test do_algebra(["*", "^", "-", "^", "÷", "-"],[11, 5, 2, 4, 7, 3, 10]) == -5196
    @test do_algebra(["÷", "^", "*", "^", "+", "^"],[10, 4, 5, 2, 4, 1, 8]) == 1
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 5, 2, 4, 4, 8]) == 15
    @test do_algebra(["^", "*", "-", "*", "+"],[3, 4, 5, 6, 7, 8]) == 371
    @test do_algebra(["+", "-", "*", "÷", "-"],[10, 11, 2, 3, 3, 3]) == 16
    @test do_algebra(["*", "^", "-", "÷"],[2, 4, 7, 10, 2]) == 32763
    @test do_algebra(["+", "-", "*", "÷"],[7, 5, 3, 3, 3]) == 9
    @test do_algebra(["+", "-", "÷", "*", "^"],[9, 4, 1, 4, 3, 7]) == 13
    @test do_algebra(["÷", "-", "*", "^"],[8, 3, 5, 8, 1]) == -38
    @test do_algebra(["+", "-", "÷", "*", "^"],[7, 5, 2, 4, 3, 7]) == 12
    @test do_algebra(["-", "*", "÷", "÷"],[7, 5, 3, 3, 9]) == 7
    @test do_algebra(["*", "*", "-", "÷", "*", "*"],[2, 4, 5, 2, 10, 3, 8]) == 40
    @test do_algebra(["÷", "-", "*", "^", "+", "^"],[11, 3, 5, 2, 4, 1, 3]) == -76
    @test do_algebra(["÷", "-", "*", "^", "+"],[9, 3, 5, 7, 1, 1]) == -31
    @test do_algebra(["+", "-", "*", "+"],[1, 5, 2, 4, 9]) == 7
    @test do_algebra(["÷", "-", "^", "*", "*", "^"],[10, 9, 3, 10, 2, 1, 1]) == -118097
    @test do_algebra(["+", "-", "^", "*", "^"],[10, 5, 1, 4, 3, 8]) == -6546
    @test do_algebra(["*", "^", "-", "^", "÷", "÷", "-"],[11, 5, 2, 6, 7, 10, 10, 10]) == -2534
    @test do_algebra(["*", "*", "-", "^", "÷", "+"],[2, 4, 5, 8, 3, 10, 7]) == -4
    @test do_algebra(["*", "÷", "-", "*", "*", "+"],[10, 3, 5, 2, 7, 1, 7]) == -1
    @test do_algebra(["÷", "*", "*", "^", "+", "^"],[4, 3, 5, 2, 4, 1, 3]) == 81
    @test do_algebra(["÷", "-", "*", "^", "+", "+"],[10, 3, 7, 5, 5, 9, 1]) == -21862
    @test do_algebra(["*", "^", "-", "÷"],[5, 6, 7, 10, 3]) == 1399677
    @test do_algebra(["+", "-", "÷", "-", "^"],[8, 5, 1, 4, 3, 7]) == -2174
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 3, 5, 7, 6, 1]) == -588241
    @test do_algebra(["÷", "^", "-", "+"],[1, 5, 4, 6, 2]) == -4
    @test do_algebra(["*", "-", "^", "÷"],[5, 2, 6, 7, 3]) == -93302
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 4, 8, 4, 3, 7]) == -4360
    @test do_algebra(["^", "*", "*", "-", "÷", "÷"],[2, 4, 5, 2, 10, 3, 9]) == 160
    @test do_algebra(["+", "-", "*", "÷", "-", "-"],[10, 11, 2, 2, 3, 3, 3]) == 14
    @test do_algebra(["^", "-", "÷", "+", "*"],[3, 3, 4, 5, 6, 7]) == 69
    @test do_algebra(["+", "-", "÷", "*", "^"],[4, 4, 1, 4, 3, 7]) == 8
    @test do_algebra(["^", "*", "*", "-", "÷", "-"],[2, 2, 5, 2, 10, 3, 8]) == 29
    @test do_algebra(["÷", "^", "-", "-"],[7, 5, 4, 9, 2]) == -11
    @test do_algebra(["÷", "-", "^", "^", "+"],[10, 3, 5, 2, 7, 1]) == -279109966635548157
    @test do_algebra(["-", "÷", "*", "+"],[6, 8, 3, 10, 4]) == -10
    @test do_algebra(["÷", "^", "-", "-", "÷"],[7, 4, 4, 9, 2, 9]) == -9
    @test do_algebra(["*", "^", "*", "-", "^", "÷", "÷", "-"],[11, 5, 2, 6, 7, 10, 3, 8, 10]) == -11768162
    @test do_algebra(["÷", "^", "-", "+"],[1, 5, 11, 6, 2]) == -4
    @test do_algebra(["÷", "^", "*", "*"],[10, 3, 5, 2, 1]) == 0
    @test do_algebra(["÷", "-", "*", "^", "+", "^"],[8, 3, 5, 2, 7, 1, 3]) == -637
    @test do_algebra(["÷", "-", "*", "*"],[10, 1, 5, 2, 1]) == 0
    @test do_algebra(["÷", "-", "*", "÷", "+", "^"],[10, 3, 5, 1, 7, 1, 3]) == 4
    @test do_algebra(["÷", "^", "*", "*"],[10, 3, 5, 6, 1]) == 0
    @test do_algebra(["+", "-", "÷", "*", "^"],[7, 5, 5, 4, 3, 7]) == -2175
    @test do_algebra(["^", "*", "*", "÷", "÷", "÷"],[8, 4, 5, 2, 10, 4, 3]) == 341
    @test do_algebra(["*", "^", "-", "^", "÷", "^", "-"],[11, 5, 2, 6, 7, 10, 3, 10]) == -14
    @test do_algebra(["÷", "^", "*", "^", "+", "^"],[10, 4, 1, 2, 4, 1, 8]) == 33
    @test do_algebra(["÷", "^", "*", "^", "+", "^"],[11, 4, 1, 2, 4, 1, 8]) == 33
    @test do_algebra(["*", "-", "*", "+", "*"],[3, 4, 6, 6, 1, 8]) == -16
    @test do_algebra(["+", "-", "*", "*"],[1, 5, 2, 3, 3]) == -12
    @test do_algebra(["+", "-", "÷", "^", "^"],[1, 4, 3, 7, 5, 5]) == 5
    @test do_algebra(["-", "÷", "÷", "^", "+"],[7, 9, 3, 10, 2, 4]) == 11
    @test do_algebra(["+", "-", "÷", "*", "-"],[10, 5, 4, 3, 8, 4]) == 3
    @test do_algebra(["+", "-", "^", "+"],[1, 5, 2, 4, 9]) == -1
    @test do_algebra(["÷", "-", "*", "÷", "+", "^"],[10, 3, 5, 1, 5, 1, 3]) == 3
    @test do_algebra(["*", "^", "-", "÷"],[8, 1, 7, 10, 2]) == 3
    @test do_algebra(["+", "-", "÷", "*", "-"],[10, 5, 4, 3, 9, 4]) == 2
    @test do_algebra(["^", "-", "÷", "+", "*"],[1, 3, 4, 5, 6, 7]) == 43
    @test do_algebra(["+", "-", "÷", "*", "^"],[10, 5, 11, 4, 4, 8]) == -131057
    @test do_algebra(["÷", "*", "*", "^", "+", "^", "+"],[10, 3, 5, 2, 4, 1, 3, 5]) == 246
    @test do_algebra(["*", "^", "-", "÷"],[5, 1, 7, 10, 1]) == -5
    @test do_algebra(["÷", "-", "^", "-", "*", "*", "^"],[10, 9, 3, 5, 2, 1, 1, 10]) == -244
    @test do_algebra(["*", "^", "-", "*", "÷"],[11, 5, 2, 6, 7, 11]) == 272
    @test do_algebra(["*", "*", "*", "^", "+", "^"],[11, 3, 5, 2, 4, 1, 3]) == 2641
    @test do_algebra(["÷", "-", "^", "^", "*", "^"],[10, 9, 3, 5, 2, 1, 1]) == -847288609442
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 3, 5, 6, 6, 1]) == -233276
    @test do_algebra(["÷", "-", "*", "^", "*"],[9, 3, 5, 7, 1, 1]) == -32
    @test do_algebra(["^", "-", "÷", "+", "*"],[2, 4, 4, 5, 6, 7]) == 58
    @test do_algebra(["*", "^", "÷"],[1, 7, 10, 2]) == 141237624
    @test do_algebra(["÷", "-", "*", "^", "+", "^"],[10, 5, 2, 4, 1, 5, 3]) == 119
    @test do_algebra(["÷", "+", "-", "*"],[7, 5, 4, 9, 2]) == -13
    @test do_algebra(["-", "*", "÷", "÷"],[6, 5, 3, 3, 9]) == 6
    @test do_algebra(["÷", "-", "^", "*", "-", "^"],[10, 9, 3, 5, 2, 1, 1]) == -486
    @test do_algebra(["*", "^", "-", "^", "+", "÷", "-"],[11, 5, 6, 6, 7, 10, 3, 10]) == -108068
    @test do_algebra(["*", "^", "-", "÷"],[5, 1, 7, 10, 7]) == 4
    @test do_algebra(["*", "-", "*", "+", "-"],[3, 4, 6, 6, 1, 8]) == -31
    @test do_algebra(["^", "^", "-", "÷"],[5, 1, 7, 10, 3]) == 2
    @test do_algebra(["÷", "-", "*", "^", "+", "^"],[5, 3, 5, 2, 6, 1, 3]) == -318
    @test do_algebra(["÷", "*", "*", "^", "+", "^"],[4, 3, 5, 3, 4, 1, 3]) == 406
    @test do_algebra(["-", "*", "-", "*", "+"],[3, 4, 5, 6, 7, 8]) == -51
    @test do_algebra(["+", "-", "*", "÷"],[10, 5, 3, 3, 9]) == 14
    @test do_algebra(["-", "÷", "+"],[8, 3, 10, 4]) == 12
    @test do_algebra(["*", "^", "÷", "*"],[2, 1, 7, 10, 11]) == 0
    @test do_algebra(["÷", "-", "*", "^", "+"],[10, 3, 5, 6, 6, 3]) == -233274
    @test do_algebra(["+", "-", "+", "-"],[1, 5, 2, 4, 9]) == -1
    @test do_algebra(["÷", "-", "^", "*", "*", "^"],[10, 9, 3, 2, 1, 1, 10]) == -8
    @test do_algebra(["÷", "-", "^", "*", "*", "*"],[10, 3, 5, 2, 1, 1, 5]) == -122
end
