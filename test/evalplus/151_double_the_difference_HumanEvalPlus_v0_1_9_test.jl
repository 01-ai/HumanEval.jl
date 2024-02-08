@testitem "151_double_the_difference_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "151_double_the_difference.jl"))
    @test double_the_difference([3, 5, 7]) == 83
    @test double_the_difference([2, 4, 6]) == 0
    @test double_the_difference([1, 2, 3, 4, 5, 6]) == 35
    @test double_the_difference([-5, 7, 9]) == 130
    @test double_the_difference(Union{Float64, Int64}[1, 3.5, -4.6]) == 1
    @test double_the_difference([1, 3, 5]) == 35
    @test double_the_difference([0, 1, 2, 3, 4, 5, -6, -7]) == 35
    @test double_the_difference(Union{Float64, Int64}[2, 2.5, 3, 3.5, 4, 4.5, 5]) == 34
    @test double_the_difference([5, 7, 9, -10, -12]) == 155
    @test double_the_difference([2, 4, 6, 8]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -4.6]) == 1
    @test double_the_difference([1, 2, 3, 5, 5, 6]) == 60
    @test double_the_difference(Union{Float64, Int64}[2, 2.5, 3, 3.5, 4.5, 5]) == 34
    @test double_the_difference([2, 4, 5, 8]) == 25
    @test double_the_difference([1, 3, 1, 5]) == 36
    @test double_the_difference([-12, 7, 9]) == 130
    @test double_the_difference([2, 4]) == 0
    @test double_the_difference([2, 4, 5, 7, 8]) == 74
    @test double_the_difference([3, 5]) == 34
    @test double_the_difference([0, 3, 1, 5]) == 35
    @test double_the_difference([-10, 2]) == 0
    @test double_the_difference([2, -10, 2]) == 0
    @test double_the_difference([0, 1, 2, 3, 4, 5, -6, -8, 4, 0]) == 35
    @test double_the_difference(Union{Float64, Int64}[2, 2.5, 3, 3.5, 4.5, 5, 2.5]) == 34
    @test double_the_difference([-10, 5]) == 25
    @test double_the_difference([0.6024368436456773, -4.6]) == 0
    @test double_the_difference([1, 5]) == 26
    @test double_the_difference([2, 4, 5, 1, 7, 8]) == 75
    @test double_the_difference([3, 5, 3, 7]) == 92
    @test double_the_difference([3, 5, 7, 3]) == 92
    @test double_the_difference([2, 6, 8]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, -5, 2.5, 3, 3.5, 4.5, -7]) == 9
    @test double_the_difference([2]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, -5, 3, 3.5, 4.5, -7]) == 9
    @test double_the_difference([1, 2, 3, 5, 5, 6, 5]) == 85
    @test double_the_difference([1, -10, 9]) == 82
    @test double_the_difference([2, 3, 4, 5, 6]) == 34
    @test double_the_difference([5, 7, 7, 9, -10, -12, -12]) == 204
    @test double_the_difference(Union{Float64, Int64}[2, -5, 2.5, 3, 3.5, 4.5, -6, 3.5]) == 9
    @test double_the_difference([2, 5, 4, 6, 6]) == 25
    @test double_the_difference([3, 5, 3, 7, 7]) == 141
    @test double_the_difference([2, 6, 8, 8]) == 0
    @test double_the_difference([7, 6, 8, 8, 8]) == 49
    @test double_the_difference(Union{Float64, Int64}[2, -5, 5, 6, 3, 3.5, 4.5, 5, -7]) == 59
    @test double_the_difference([-4.6, -4.6]) == 0
    @test double_the_difference([2, 6, 8, 2, 6]) == 0
    @test double_the_difference([1, 2, 3, 2, 5, 5, 7]) == 109
    @test double_the_difference([0, 3, 1, 5, 5]) == 60
    @test double_the_difference([-4.6]) == 0
    @test double_the_difference([2, 5, 8, 7, 8]) == 74
    @test double_the_difference([-5, 3]) == 9
    @test double_the_difference(Union{}[]) == 0
    @test double_the_difference([0, 2, 1, 5, 5, 0]) == 51
    @test double_the_difference(Union{Float64, Int64}[2, -5, 2.5, 3, 3.5, 4.5, 3.5]) == 9
    @test double_the_difference([2, 4, 5, 7, 7, 8]) == 123
    @test double_the_difference([0, 1, 2, 3, 4, 5, -6, 4, 0]) == 35
    @test double_the_difference([3, 5, 7, 3, 3]) == 101
    @test double_the_difference([5, 4, 6, 6]) == 25
    @test double_the_difference(Union{Float64, Int64}[2, 2.5, 3, 3.239486827292248, 3.5, 4, 4.5, 5, 2.5]) == 34
    @test double_the_difference([3, 5, 7, 5]) == 108
    @test double_the_difference([5, 4, 6]) == 25
    @test double_the_difference([-0.08450530644125998, -4.6]) == 0
    @test double_the_difference([1, 2, 3, 5, 5, 6, 5, 3]) == 94
    @test double_the_difference([7, 9]) == 130
    @test double_the_difference(Union{Float64, Int64}[2, -5, 1.4396458367146585, 3, 3.5, 4.5, -6, 3.5]) == 9
    @test double_the_difference([2, 4, 5, 5, 1, 7, 2]) == 100
    @test double_the_difference([0, 3, 1, 5, 1]) == 36
    @test double_the_difference([2, 4, 3, 5, 7, 8]) == 83
    @test double_the_difference([4, 5, 1, 7, 8]) == 75
    @test double_the_difference(Union{Float64, Int64}[2, -5, 5, 6, 3, 3.5, 4.5, -7, -7, -5]) == 34
    @test double_the_difference([0, 3, 1, 5, 5, 5]) == 85
    @test double_the_difference([1, 2, 3, 5, 4, 6]) == 35
    @test double_the_difference([3, 3, 5, 7]) == 92
    @test double_the_difference([9, 2, 4, 5, 1, 7, 8]) == 156
    @test double_the_difference([6, 7, 7, 9, -10, -12, -12, -7, 9]) == 260
    @test double_the_difference([2, 1, 2, 3, 5, 5, 6]) == 60
    @test double_the_difference([5, 7, 7, 9, -12, -12]) == 204
    @test double_the_difference(Union{Float64, Int64}[2, 2.5, 3, 5, 3.5, 4, 4.5, 5, 3.5]) == 59
    @test double_the_difference([2, 4, 4, 7, 8]) == 49
    @test double_the_difference([0, 1, 2, 3, 4, 5, -6, -7, 1]) == 36
    @test double_the_difference([0, 3, 1, 5, 5, 5, 5]) == 110
    @test double_the_difference([4, 4, 7, 8]) == 49
    @test double_the_difference([5, 2, 7, 9, -12]) == 155
    @test double_the_difference(Union{Float64, Int64}[2, 6, 3, 3.5, 4.5, -7, -7, -5, 6]) == 9
    @test double_the_difference([1, 2, 3, 5, 4, 5, 6]) == 60
    @test double_the_difference([3.239486827292248, 2.0, -5.0, 2.5, 5.0, 3.5, 4.5, 3.5]) == 0
    @test double_the_difference([2, 1, 2, 3, 5, 5, 1]) == 61
    @test double_the_difference([2, 1, 3, 1, 5, 1]) == 37
    @test double_the_difference([1, 2, 5, 4, 5, 6]) == 51
    @test double_the_difference([2, 8, 8, 8]) == 0
    @test double_the_difference([3, 7]) == 58
    @test double_the_difference([0, 1, 2, 3, 4, 5, -6, -8, 5, 4, 0]) == 60
    @test double_the_difference([2, -11]) == 0
    @test double_the_difference([0, 1, 2, 3, 4, 5, 4, 0]) == 35
    @test double_the_difference([0, 2, 5, 5, 0]) == 50
    @test double_the_difference([2, 4, 5, 7, 7, 8, 2]) == 123
    @test double_the_difference(Union{Float64, Int64}[2, 2.5, 3.5, 4.5, -0.08450530644125998, 3, 5]) == 34
    @test double_the_difference([1, 2, 3, 5, 4, 5, 6, 4]) == 60
    @test double_the_difference([3, 5, 7, 3, 3, 3]) == 110
    @test double_the_difference([3, 3, 1, 7, 1]) == 69
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 10.5, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29]) == 1035
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.5, 7.8, 9, -9]) == 91
    @test double_the_difference([1.25, 2.5, 3.75, -5.5]) == 0
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, 2.0, 0.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 5, 6, 7.5, 8.3]) == 25
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 15, 17, 19]) == 1330
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 0.5, 7, 9.9]) == 50
    @test double_the_difference([12, 10, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19]) == 1330
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 16.5, 17, 7.5, 18, 19.2, -20, 21, 22.5, 22.5]) == 860
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0]) == 0
    @test double_the_difference([12, 10, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 11]) == 1451
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -4.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, -29.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 5, 6, 7.5, 8.3, 0]) == 25
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 2.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -23.8]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, 5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -20, 0.5, 7, 9.9]) == 50
    @test double_the_difference([10.7, -15.2, 17.0, 2.0, 0.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 2.5]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.5, 8.944995751091522, 9, -9]) == 91
    @test double_the_difference([12, 3, 5, 0, 7, 9, 11, 13, 15, 17, 19, 15]) == 1554
    @test double_the_difference([1, 3, 5, 7, 0, 9, 11, 13, 15, 17, 19]) == 1330
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, -11]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, -3.7, 4.98, -5.6, -11, -3.7]) == 290
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, -16, 6, 7.5, 8.3]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.5, -14, 7.8, 9, -9]) == 91
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, 25.0, 0.0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, 5.0, 2.5]) == 0
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, 25.0, -15.3, 0.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 2.5, -3.7, 2.5]) == 290
    @test double_the_difference([0.6362946504056242, 1.0, -3.0, 2.5, -20.0, 0.5, 7.0, 9.9]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, -4, 5, 6, 7.5, 8.3]) == 25
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -4.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, -29.0, 10.5]) == 0
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, 2.0, 2.0, 0.0]) == 0
    @test double_the_difference([12, 3, 5, 0, 7, 3, 9, 11, 13, 15, 17, 19, 15]) == 1563
    @test double_the_difference([15, 3, 5, 7, 0, 9, 11, 13, 15, 17, 19, 0]) == 1554
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, 4.98, -4, 5, 6, 7.5, 8.3]) == 25
    @test double_the_difference([1, 3, 0, 5, 7, 0, 9, 11, 13, 15, 17, 18, 19]) == 1330
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -20, 0.5, 7, 10.836770442711284]) == 50
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -5.0, -15.3, -16.0, -18.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -23.8]) == 0
    @test double_the_difference(Union{Float64, Int64}[17, 10.7, 12.5, -15.2, 17, 25, 0]) == 1203
    @test double_the_difference([12, 3, 5, 0, 7, 3, 9, 11, 13, 15, 17, 19, 20, 15]) == 1563
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5]) == 1301
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference([10.7, 12.5, -15.2, 25.0, 0.0]) == 0
    @test double_the_difference([12, 10, 3, 5, 7, 9, 11, 13, 15, 17, 19]) == 1329
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5]) == 1301
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 5, 6, 7.5, 8.3, 6]) == 25
    @test double_the_difference([1, 3, 0, 17, 5, 12, 7, 0, 9, 11, 13, 15, 17, 18, 19]) == 1619
    @test double_the_difference(Union{Float64, Int64}[2, 0, 0, 0, -1, -2, -4, 5, 6, 7.5, 8.3, 8.3]) == 25
    @test double_the_difference(Union{Float64, Int64}[1, 2.648235404448685, -2, 2.5, -20, 2, 0.5, 7, 9.9]) == 50
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, -4, 5, 6, 7.5, 8.3, 6]) == 25
    @test double_the_difference([0, 1, 3, 0, 5, 7, 0, 9, 11, 13, 15, 17, 18, 19]) == 1330
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.5, 7.8, 9, -9, 1]) == 92
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 7.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5, -7]) == 1301
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, 3.578420498601563, -15.3, -16.0, 19.0, 20.2, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -20, 0.5, 7, 9.9, 0.5]) == 50
    @test double_the_difference([10.7, -15.882233515109174, 17.0, 2.0, 2.0, 0.0, 2.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -3, -2, 4.5, 8.944995751091522, 9, -9, 2]) == 91
    @test double_the_difference(Union{Float64, Int64}[0, 1, 0, -2, 8, -4, 5, 6, 7.5, 8.3]) == 26
    @test double_the_difference(Union{Float64, Int64}[11, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 2.5, -13]) == 290
    @test double_the_difference([1, 3, 0, 5, 7, 0, 9, 11, 13, 15, 17, 18, 19, 9]) == 1411
    @test double_the_difference(Union{Float64, Int64}[12, 13, -11, -12, -13, 2.5, -3.7, 0.5, -5.6]) == 169
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 9.9, 7, 9.9]) == 50
    @test double_the_difference([2.5, 3.7, -5.0, 10.836770442711284, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, 5.0, 2.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 6.699182334173166, 0, -3, -2, 4.5, 8.944995751091522, 9, -9, 2]) == 91
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 5, 6, 7.5, 8.3, 0, 0]) == 25
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 10.5, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29]) == 986
    @test double_the_difference(Union{Float64, Int64}[2, -21, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5]) == 1301
    @test double_the_difference(Union{Float64, Int64}[1, 2.648235404448685, -2, 2.5, -20, 2, 0.5, 9.9]) == 1
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0]) == 0
    @test double_the_difference([12, 10, 3, 5, 7, 9, 11, 13, 15, 19]) == 1040
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, -3, -4, 5, 6, 7.5]) == 25
    @test double_the_difference(Union{Float64, Int64}[1, -15, 2.5, -20, 0.5, 7, 9.9, 0.5, 7]) == 99
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0, 20.2]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, -21, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 17.92945384873627, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5]) == 1301
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference([12, 3, 5, 0, 16, 7, 9, 11, 13, 15, 17, 19, 15]) == 1554
    @test double_the_difference(Union{Float64, Int64}[1, -3, 1.9744036171913348, 2.5, -20, 0.5, 7, 9.9]) == 50
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, -3, -12, -4, 5, 6, 7.5, -4]) == 25
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 5, 6, -13, 7.5, 8.3, 0, -3]) == 25
    @test double_the_difference(Union{Float64, Int64}[0, 1, 0, -2, 8, -4, 5, 6, 7.5, 8.3, 0]) == 26
    @test double_the_difference([1.0850617393937045, 1.25, 2.5, 3.75, -5.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 5, 7.5, 6, 7.5, 8.3]) == 25
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21]) == 1301
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -14.0, -28.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[12, 13, -11, -11, -13, 2.5, -3.7, 0.5, -5.6]) == 169
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, 9.42570364349231, -4, 5, 6, 7.5, 8.3, 6]) == 25
    @test double_the_difference([-12, 3, 5, 14, 7, 0, 9, 11, 13, 15, 17, 19, 0]) == 1329
    @test double_the_difference([2.5, 1.25, -5.0, 7.0, 10.5, -11.0, -12.8, 24.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -14.0, -15.3, -17.0, 19.0, 20.2, 21.9, -23.8, 24.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -12, -13, 2.5, -3.7, 4.98, -5.6, -11]) == 290
    @test double_the_difference(Union{Float64, Int64}[-13, 10.7, -15.882233515109174, 17, 2, 2, 0, 2, -13]) == 289
    @test double_the_difference([15, 3, 5, 7, 0, 9, 11, 13, 15, 18, 19, 0, 17, 15]) == 1779
    @test double_the_difference(Union{Float64, Int64}[11, 12, -12, 13, -11, -12, -13, -3.7, 4.98, -5.6, -11, -3.7]) == 290
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -28.0, 5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, 1.9744036171913348, 2.5, -20, 0.5728382045605218, 0.5, 7, 9.9, -20]) == 50
    @test double_the_difference(Union{Float64, Int64}[0, 0, -1, -2, -3, -12, -4, 5, 6, 7.5, -4]) == 25
    @test double_the_difference([2.5, 10.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 0, 9, 13, 15, 17, 19, 19]) == 1570
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, -15.0, -27.5, -28.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -3, -2, 4.5, 8.944995751091522, 9, -9, 2, 6.699182334173166]) == 91
    @test double_the_difference(Union{Float64, Int64}[1, -3, 1.9744036171913348, 2.5, -20, 0.5, 7, 9.9, 7]) == 99
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, -3, -12, -4, 5, 6, 7.5, -4, -3]) == 25
    @test double_the_difference([10.7, 12.5, -10.364742151078504, 25.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[-21, 3, 4.5, 12, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 17.92945384873627, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5]) == 1301
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.5, -14, -28, 7.8, 9, -9]) == 91
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -3, -2, 4.5, 8.944995751091522, 9, -9, 0, 2, 6.699182334173166]) == 91
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, 3.578420498601563, -15.3, -16.0, 19.0, 20.2, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, 3.7, 11.361205730129923, -23.8]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 24, 0, 0, -2, -3, 9.42570364349231, -4, 5, 6, 7.5, 8.3, 6]) == 25
    @test double_the_difference([15, 3, 5, 7, 0, 9, 11, 13, 15, 17, 19, 0, 13]) == 1723
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -5.0, -15.3, -16.0, -18.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -23.8, -16.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, 6, -3, -4, 5, 6, 10.734885794872278]) == 25
    @test double_the_difference(Union{Float64, Int64}[17, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21]) == 1590
    @test double_the_difference([2.5, 3.75, -5.5, 3.75]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 1, 0, -2, 8, -14, 6, 7.5, 8.3, 0, -14]) == 1
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, 7.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 15, 17, 17]) == 1258
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, -4, 5, 6, 7.5, -29, 8.3]) == 25
    @test double_the_difference([2.5, -5.0, 7.0, -4.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, -29.0, -15.3]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 0.5728382045605218, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[12, 14, -12, -13, 2.5, -3.7, 0.5, -5.6]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, 4.98, -4, 17, 5, 6, 7.5, 8.3, 0]) == 314
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, 3.578420498601563, -15.3, -16.0, 19.0, 20.2, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, 3.7, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[12, 13, -11, -12, 26, -13, 2.5, -3.7, 0.5, -5.6]) == 169
    @test double_the_difference([15, 3, 5, 7, 0, 9, 11, 12, 15, 17, 19, 0, 13]) == 1554
    @test double_the_difference(Union{Float64, Int64}[12, -3.7, 14, -12, -13, 2.5, -3.7, -5.6]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, 1.9744036171913348, 2.5, -20, 0.5728382045605218, 0.5, 7, 9.9, -20, 0.5728382045605218]) == 50
    @test double_the_difference(Union{Float64, Int64}[-2, 11, 3.7, -5, 7, 10.5, -11, -12.8, -14, -15.3, -16, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29]) == 1156
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 7, 4.5, 6, -7, 8, 9.1, -10.5, 11, 0.4972309340547183, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 12, 3]) == 909
    @test double_the_difference([2.5, 3.7, -5.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -27.5, 5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[17, 3, 4.5, 6, -7, 8, 9.1, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, -13]) == 1590
    @test double_the_difference([12, 3, 5, 0, 7, 3, 9, 11, 14, 15, 17, 19, 20, 15]) == 1394
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -12, -13, 2.5, -3.7, 4.98, -13, -5.6, -11, 12]) == 290
    @test double_the_difference([12, 10, 3, 5, 7, 11, 13, 15, 17, 19]) == 1248
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -3, -2, 8.944995751091522, 9, -9, 2, 6.699182334173166]) == 91
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, 2.0, 0.0, 2.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 12, 6.699182334173166, 21, 16.5, 12]) == 860
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.5, 9, -9]) == 91
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -4.0, -5.6, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, -29.0, 10.5]) == 0
    @test double_the_difference([1.0850617393937045, 1.25, 2.5, 3.75, -5.5, -5.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, -16, 6, 7.5, 0.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -3, -2, 8.944995751091522, -4, 9, -9, 2, 6.699182334173166]) == 91
    @test double_the_difference([3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -28.06693171025116, 24.0, 25.0, 4.98, 6.0, -27.5, -28.0, 5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 2.968032886251095, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21]) == 1301
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, -4, 5, 6, 7.5, -1, 8.3]) == 25
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, 3, -3, -2, 4.5, 8.944995751091522, 9, -9]) == 100
    @test double_the_difference([3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -27.5, 2.968032886251095, 5.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 0, 9, 11, 13, 15, -1, 17, 19, 9]) == 1411
    @test double_the_difference([12, 10, 5, 7, 17, 9, 11, 13, 15, 19, 9, 10]) == 1401
    @test double_the_difference([12, 3, 5, 0, 7, 9, 11, 13, 15, 17, 15]) == 1193
    @test double_the_difference([10.7, -15.882233515109174, 17.0, 2.0, 3.0, 2.0, 0.0, -21.0, 2.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 0, 9, 11, 13, 15, 17, 18, 19]) == 1330
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -2, 8.944995751091522, -4, 9, -9, 2, 6.699182334173166, 2]) == 91
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 25.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference([21, 15, 3, 5, 7, 0, 9, 11, 13, 15, 17, 19, 0, 13]) == 2164
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 10.5, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 0.6362946504056242, -23.8, 24, 25, 26, -27.5, -28, -29]) == 986
    @test double_the_difference([2.5, 1.25, -5.0, 7.0, 10.5, -11.0, -12.8, -9.652220770073031, 24.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference([10.7, 10.5, -15.2, 17.0, 2.0, 2.0, -14.182301239639925, 0.0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference([10.7, -15.882233515109174, 17.0, 2.0, 3.0, 10.0, 2.0, 0.0, 2.0]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -14.0, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, 7.0]) == 0
    @test double_the_difference([2.5, 21.0, 3.7, 7.0, 10.5, -11.0, -12.8, -14.0, -16.0, 19.0, 20.2, 21.9, -14.702223789083934, -23.8, 24.0, 25.0, -27.5, -28.0, -29.0, -28.0, 7.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -17, -20, 0.5, -14, 10.836770442711284]) == 1
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, 7.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -23.8]) == 0
    @test double_the_difference([15, 3, 5, 7, 0, 9, 11, 13, 15, 17, 19, 0, 13, 0]) == 1723
    @test double_the_difference([0, 1, 3, 0, 5, 7, 0, 9, 11, 13, 15, 17, 18]) == 969
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 2.0, 20.2, 8.3, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -23.8]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 2.968032886251095, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 8.3, -20, 21, 22.5, 21]) == 1301
    @test double_the_difference(Union{Float64, Int64}[1, 0, 0, 0, -1, -2, -3, -4, 5, 6, 7.5, 8.3, 6]) == 26
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -12, -3.9536607283901284]) == 290
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 18.824471325684005, -16, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5]) == 1301
    @test double_the_difference([12, 3, 5, 0, 7, 9, 11, 14, 15, 17, 19, 20, 15]) == 1385
    @test double_the_difference(Union{Float64, Int64}[17, 12.5, -15.2, 17, 25, 0]) == 1203
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -14.0, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -16.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[17, 3, 4.5, 6, -7, 8, 9.1, 11, 12, -13, 2.5, -15, 22.037906984126526, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, -13]) == 1590
    @test double_the_difference(Union{Float64, Int64}[12, 12.5, -15.2, 17, 2, 2, 9, 0]) == 370
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 15, 19]) == 1041
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 29.075295240485364, 20.2, 21.9, -23.8, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[-15, 2.5221867302663594, -20, 0.5, 7, 9.9, 0.5, 7, 0.5]) == 98
    @test double_the_difference(Union{Float64, Int64}[1, 3, 11.361205730129923, 2, 0, -3, -2, 4.5, 8.944995751091522, -9]) == 10
    @test double_the_difference([15, 3, 5, 7, 0, 9, 11, 13, 15, 17, 19, 0, 19]) == 1915
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0.6362946504056242, 0, -3, -2, 10.976322735355664, 9, -9, 2, 6.699182334173166]) == 91
    @test double_the_difference([7, 1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 17]) == 1668
    @test double_the_difference(Union{Float64, Int64}[17, 3, 4.5, 6, -7, 8, 9.1, 11, 12, -13, 2.5, -15, 22.037906984126526, 16.5, 17, 18, 19.2, -20, 21, 21, -13]) == 1590
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, 24.0, -20.0, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, 24.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 11.361205730129923, 2, -3, -2, 4.5, 8.944995751091522, -9]) == 10
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -12, -3, -2, 4.5, 8.944995751091522, 9, -9, 1]) == 92
    @test double_the_difference(Union{Float64, Int64}[12, 14, -12, -13, 2.5, -3.7, 19, 0.5, -5.6, 0.5]) == 361
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -3, 8.944995751091522, -4, 9, -9, 2, 6.699182334173166]) == 91
    @test double_the_difference(Union{Float64, Int64}[2, 3, 2.968032886251095, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 19.2, -20, 21, 22.5, 21]) == 1301
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, 7.8, -14.0, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -23.8]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, 3, -3, -2, 4.5, 8.944995751091522, -9]) == 19
    @test double_the_difference(Union{Float64, Int64}[11, 12, 22.037906984126526, 13, -11, -12, -13, -3.7, 4.98, -5.6, 2.5, -3.7, 2.5]) == 290
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, 6, -20, -4, 5, 7, 10.734885794872278]) == 74
    @test double_the_difference([2.5, 1.25, -5.0, 7.0, 10.5, -11.0, -12.8, -9.652220770073031, 24.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, -27.5, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, 6, -3, -4, 5, 6, 10.734885794872278, 6]) == 25
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, -3, -4, 5, 6, 10.734885794872278]) == 25
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 10.5, -11, -12.8, -14, -15.3, -16, -17, 19, 20.2, 0.6362946504056242, 24, 25, 26, -27.5, -28, -29]) == 986
    @test double_the_difference([2.5, 10.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0, -11.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, -4, 5, 6, 7.5, -29, 8.3, 0]) == 25
    @test double_the_difference(Union{Float64, Int64}[1, 3, 11.361205730129923, 2, -3, -2, 8.944995751091522, -9]) == 10
    @test double_the_difference([3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -28.06693171025116, 24.0, 25.0, 4.98, 6.0, -27.5, -28.0, 5.0, -28.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 2.5, -13, -3.7]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, 1.9744036171913348, 2.5, -20, 0.5728382045605218, 0.5, 7, 9.9, -20, 0.5728382045605218]) == 50
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 10.5, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 0.6362946504056242, -23.8, 24, 25, 26, -27.5, -28, -29, 20.2]) == 986
    @test double_the_difference([0.6362946504056242, 1.0, -3.0, 2.5, -20.0, 0.5, 7.0]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, 24.0, -20.0, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, -9.0, 26.0, -27.5, -28.0, -29.0, -28.0, 24.0, 19.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, -4, 17, 5, -3, 6, 7.5, 8.3, 6, -3, 0]) == 314
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, 2.5221867302663594, -16.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -28.0, 5.0, 6.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, -21, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 17.92945384873627, 2.5, -15, 11.095438453845121, 17, 18, 19.2, -20, 21, 22.5, 8, 21, 16.5]) == 1301
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -14.0, -15.3, -17.0, 19.0, 20.2, 21.9, 10.7, 24.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5, 10.5]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -14.0, -15.3, -17.0, 19.0, 20.2, 21.9, 10.7, 24.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5, 10.5, -27.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[17, 13, -11, -11, -13, 2.5, -3.7, 0.5, -5.6]) == 458
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 5, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5]) == 1326
    @test double_the_difference([12, 10, 3, 5, 7, 9, 11, 13, 17, 19]) == 1104
    @test double_the_difference([7, 1, 3, 5, 7, 9, 11, 13, -15, 17, 19, 17]) == 1443
    @test double_the_difference(Union{Float64, Int64}[1, 3, 6.699182334173166, 0, -3, -2, 4.5, 8.944995751091522, 9, -9, 2, -9]) == 91
    @test double_the_difference([2.5, 3.75, -5.5, 3.75, 2.5]) == 0
    @test double_the_difference([2.5, 1.25, -5.0, 7.0, 10.5, -11.0, -12.8, -10.5, 24.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference([12, 3, 5, 0, 7, 9, 11, 13, 15, 17, 19, 15, 12]) == 1554
    @test double_the_difference([12, 10, 3, 5, 7, 11, 13, 15, 17, 14, 19]) == 1248
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 0.5728382045605218, 12, -13, -14.5, -15, 16.5, 17, 19.2, -20, 21, 22.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, 6, -3, 24, -4, -20, 6, 10.734885794872278, -20]) == 0
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, 25, -5, 10.5, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 0.3936190703250906, -23.8, 24, 25, 26, -27.5, -28, -29]) == 1611
    @test double_the_difference(Union{Float64, Int64}[0, 1, 0, -2, 7, -4, 5, 6, 7.5, 0]) == 75
    @test double_the_difference(Union{Float64, Int64}[12, 13, -14.182301239639925, -11, -12, 26, -13, 2.5, -3.7, 0.5, -5.6]) == 169
    @test double_the_difference([10.7, 12.5, 0.5728382045605218, -15.2, 17.0, 2.0, 0.0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -9.652220770073031, -28.0, -10.0, 5.0, -15.3]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.5, 7.8, 9, -9, 1, 0]) == 92
    @test double_the_difference(Union{Float64, Int64}[1, 3, 9.1, 2, 6.699182334173166, 0, -3, 18, 4.5, 8.944995751091522, 9, -9, 2, 6.699182334173166]) == 91
    @test double_the_difference(Union{Float64, Int64}[-4, 2.5, -20, 0.5, 7, 10.836770442711284]) == 49
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -27.5, 9.537146380431835, -28.0, 5.0, 20.2, 20.2]) == 0
    @test double_the_difference([10.7, 12.5, -10.364742151078504, 25.0, -10.364742151078504]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, 6, -3, -4, 5, 6, 10.734885794872278, 6]) == 25
    @test double_the_difference([12, 3, 19, 5, 0, 7, 3, 9, 11, 13, 15, 17, 19, 15]) == 1924
    @test double_the_difference([3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -28.06693171025116, 24.0, 4.98, 6.0, -27.5, -28.0, 5.0, -28.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 11.053352437966929, 2, 0, -3, -2, 4.5, 8.944995751091522, -9]) == 1
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 5, 6, 3.578420498601563, 8.3, 0, 0, -29]) == 25
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, -3, -12, -4, 5, 7.5, -4, -3]) == 25
    @test double_the_difference([2.5, -5.0, 20.0, -30.0, 7.0, -4.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, -29.0, -15.3]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -4.0, 10.5, -11.0, -12.8, -15.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, -29.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, -4, -28, 5, 6, 7.5, -1, 8.3]) == 25
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 7.8, 9, -9, 1, 0]) == 92
    @test double_the_difference([16, 1, 3, 5, 7, 9, 11, 15, 17, 17, 1]) == 1090
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -4.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 5.0, -28.0, -29.0, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, -1, -2, -3, -4, 5, 6, 10.734885794872278]) == 25
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -4.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[17, 3, 4.5, 6, -7, 8, 9.1, 11, -13, 2.5, -1, -15, 22.037906984126526, 0.4972309340547183, 17, 18, 19.2, -20, 21, 22.5, 21, -13]) == 1590
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, 20.2]) == 0
    @test double_the_difference([10.7, -15.882233515109174, 17.0, 2.0, 3.0, 10.0, 2.0, 0.0, 2.0, 10.7]) == 0
    @test double_the_difference([10.7, 12.5, -15.2, 25.0, 0.0, 9.903258604989631]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -15.0, -12.8, -14.0, -15.3, -16.0, -18.0, 2.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -23.8, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 10.976322735355664, -21, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5, 8]) == 1301
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, 4.98, -4, 17, 5, 6, 16, 7.5, 8.3, 0]) == 314
    @test double_the_difference(Union{Float64, Int64}[1, 2.648235404448685, -2, 2.5, -20, 2, 0.5, 9.9, 2]) == 1
    @test double_the_difference(Union{Float64, Int64}[12, -3.7, 14, -12, -13, 2.5, -5.6]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, -11]) == 290
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -4.0, 10.5, -11.0, -12.8, 18.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 26, 0, 0, -2, -3, -4, 5, -5, 6, 7.5, 8.3, 7.5]) == 25
    @test double_the_difference([2.5, 10.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, -27.5, -28.0, 5.0]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -18.0, 7.8, -14.0, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -23.8]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -4.0, 10.5, -11.0, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, -29.0, 19.0]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, 24.0, -11.0, -12.8, -14.0, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, -9.0, 26.0, -27.5, -28.0, -29.0, -28.0, 24.0, 19.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, -18, 0, 0, -2, -3, 9.42570364349231, -4, 5, 6, 7.5, 8.3]) == 25
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, 25, -5, 10.5, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 0.3936190703250906, -23.8, 24, 25, 26, -27.5, -28, -29, -11]) == 1611
    @test double_the_difference(Union{Float64, Int64}[1, 1.9744036171913348, 2.5, 16, 0.5728382045605218, 0.5, 7, 9.9, -20, 0.5728382045605218]) == 50
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -3, -2, -4, 9, -9, 2, 6.699182334173166]) == 91
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 7.5, 6, 7.5, 8.3]) == 0
    @test double_the_difference([3, 5, 7, 0, 9, 11, 12, 15, 17, 19, 0, 13]) == 1329
    @test double_the_difference(Union{Float64, Int64}[11, 13, -11, -12, -13, 2.5, 4.98, -5.6, -11]) == 290
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, 2.5221867302663594, -16.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -28.0, 5.0, 6.0, 24.0, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[14, -12, -13, 2.5, 0.5, -5.6]) == 0
    @test double_the_difference([21, 15, 3, 5, 7, 0, 9, 11, 2, 13, 15, 17, 19, 0, 13]) == 2164
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, 3, -3, -2, 8, 4.5, 8.944995751091522, 9, -9]) == 100
    @test double_the_difference(Union{Float64, Int64}[8, 0, 0, 0, -1, -2, -3, -12, -4, 5, 6, 7.5, -4]) == 25
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, -3.7, 4.98, -5.6, -11, -3.7, -3.7]) == 290
    @test double_the_difference(Union{Float64, Int64}[0, 24, 0, 0, 0, -2, -3, -4, 5, 6, 7.5, -29, 8.3, 0]) == 25
    @test double_the_difference([10.7, 15.059792296821433, 0.5728382045605218, -15.2, 17.0, 2.0, 0.0]) == 0
    @test double_the_difference([10.7, -15.2, 17.0, 2.0, -4.0, 0.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 0, 0, 0, -2, -3, -4, 5, 6, 7.5, 8.3, 6]) == 26
    @test double_the_difference([12, 3, 6, 0, 16, 7, 9, 11, 13, 15, 17, 19, 15, 5]) == 1554
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 10.5, -11, -12.8, -14, -16, -18, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 7]) == 723
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -28, -2, -3, -4, 5, 6, 7.5, -10, 8.3]) == 25
    @test double_the_difference(Union{Float64, Int64}[13, 1, 3, 2, 6.699182334173166, 0, -3, -2, -4, 9, -9, 2, 6.699182334173166]) == 260
    @test double_the_difference(Union{Float64, Int64}[2, 3, 2.968032886251095, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, -9.652220770073031, -20, 21, 22.5, 21, 2]) == 1301
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -3, -2, -4, 9, -9, 2, 6.699182334173166, 2]) == 91
    @test double_the_difference([12, 10, 1, 3, 5, 7, 9, 11, 13, 17, 19]) == 1105
    @test double_the_difference(Union{Float64, Int64}[1, 6, 3, 2, 0, 3, -3, -2, 4.5, 8.944995751091522, -9]) == 19
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0, -14.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[17, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 19.2]) == 1590
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 24.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, 5.0, 2.5]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, 24.0, -20.0, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, -9.0, 26.0, -27.5, -29.0, -28.0, 24.0, 19.0, -28.0]) == 0
    @test double_the_difference([0, 1, 3, 0, 5, 7, 0, 11, 13, 15, 17, 18]) == 888
    @test double_the_difference([15, 3, 5, 7, 0, 9, 10, 13, 15, 17, 19, 0, 19, 19]) == 2155
    @test double_the_difference(Union{Float64, Int64}[1, 2.648235404448685, 2.14036723477313, -2, 2.5, -20, 2, 0.5, 7]) == 50
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0, -14.0]) == 0
    @test double_the_difference([2.5, 3.75, -15.882233515109174]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 1, 0, -2, 8, -4, 5, 6, 7.5, 2.648235404448685, 8.3]) == 26
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, 24.0, -20.0, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, -9.0, 26.0, -27.5, -28.0, 18.0, -28.0, 24.0, 19.0]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, 24.0, -11.0, -12.8, -14.0, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, -9.0, 26.0, -27.5, -28.0, -29.0, -28.0, 24.0, 19.0, 24.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 6, 7.5, 8.3, 0, -1]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 0.5728382045605218, 12, -13, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5]) == 860
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -5.6, -29.0, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -23.8]) == 0
    @test double_the_difference([21, 15, 3, 5, 7, 0, 9, 11, 2, 13, 17, 19, 0, 13]) == 1939
    @test double_the_difference(Union{Float64, Int64}[5, 2.5, 3.7, 7, 10.5, 24, -20, -11, -12.8, -14, -15.3, -16, -23.973108943994585, 19, 21.9, -23.8, 24, 25, -9, 26, -27.5, -29, -28, 24, 19, -28, -28, -15.3]) == 1421
    @test double_the_difference([3, 5, 7, 0, 9, 11, 13, 15, 17, 19, 0]) == 1329
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, -16, 6, 7.5, 8.3, 0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 10.5, -11.0, -14.0, -15.3, -17.0, 19.0, 17.92945384873627, 21.9, -23.8, 24.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5, 10.5]) == 0
    @test double_the_difference([15, 3, 5, 7, 0, 9, 11, 13, 15, 18, 19, 0, 17, 15, 3]) == 1788
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 18.824471325684005, -16, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, -9.652220770073031, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5, 22.5]) == 1301
    @test double_the_difference(Union{Float64, Int64}[14, -12, -13, 2.5, 1.0850617393937045, -6.669508313211382, -5.6, -12]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 0.3936190703250906, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 10.5, -11, -12.8, -14, -15.3, -16, 19, 20.2, 0.6362946504056242, -23.8, 24, 25, 26, -27.5, -28, -29, 0.6362946504056242]) == 986
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, -3, -4, 5, 6, 7.5, 8.3]) == 25
    @test double_the_difference(Union{Float64, Int64}[12, 14, -13, 2.5, -3.7, 19, 0.5, -5.6, 0.5]) == 361
    @test double_the_difference([10.7, 12.5, -10.364742151078504, -10.469233820442215, 25.0, -10.364742151078504]) == 0
    @test double_the_difference([2.648235404448685, -2.0, 2.5, -20.0, 2.0, 0.5, 9.9]) == 0
    @test double_the_difference(Union{Float64, Int64}[12, 13, -11, -12, 26, -13, 2.5, 14, -3.7, 0.5, -5.6]) == 169
    @test double_the_difference(Union{Float64, Int64}[5, 0, 0, 0, -2, -3, -4, 5, 6, 7.5, 8.3]) == 50
    @test double_the_difference([3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, 1.0850617393937045, -31.65305994277872, 24.0, 25.0, 6.0, 2.968032886251095, 5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 1, 0, -1, -2, -3, -4, -16, 6, 7.5, 0.5]) == 1
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, 2.5221867302663594, -16.0, 20.2, -12.03483119536696, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -28.0, 5.0, 6.0, 24.0, 1.0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 26.0, -27.5, -29.0, 3.7, 10.5]) == 0
    @test double_the_difference([15, 3, 5, 7, 9, 9, 11, 13, 15, 17, 19, 0, 13]) == 1804
    @test double_the_difference(Union{Float64, Int64}[-3, -2, -4, 3.7, -5, 10.5, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 0.6362946504056242, -23.8, 24, 25, 26, -27.5, -28, -29, 20.2]) == 986
    @test double_the_difference([2.648235404448685, -2.0, 2.5, -20.0, 2.0, -9.956554799457813, 9.9]) == 0
    @test double_the_difference([0.6362946504056242, 1.0, -3.0, 2.5, -20.0, 0.5, 18.0, 7.0, 9.9]) == 0
    @test double_the_difference([12.5, -15.2, 17.0, 25.0, -15.3, 0.0]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -28.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -14.5, 2.5, -20, 0.5728382045605218, 0.5, 7, 9.9, -20, 0.5728382045605218]) == 50
    @test double_the_difference([12, 3, 5, 0, 7, 3, 9, 11, 13, 14, 15, 17, 19, 20, 15, 19, 19]) == 2285
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, -3, -4, 15, 6, 10.734885794872278]) == 225
    @test double_the_difference(Union{Float64, Int64}[0, 1, 0, -2, 8, -4, 5, 19, 6, 7.5, 2.648235404448685, 8.3]) == 387
    @test double_the_difference(Union{Float64, Int64}[2, 7, 4.5, 6, -7, 8, 9.1, -10.5, 11, 0.4972309340547183, 12, 7, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 12, 3]) == 958
    @test double_the_difference(Union{Float64, Int64}[12, 13, -14.182301239639925, -11, -12, 26, -13, 2.5, -3.7, 0.5]) == 169
    @test double_the_difference([21, 15, 3, 5, 7, 0, 9, 11, -10, 15, 17, 19, 0, 13]) == 1995
    @test double_the_difference([12, 10, 3, 5, 7, 9, 11, 13, 17, 19, 3]) == 1113
    @test double_the_difference(Union{Float64, Int64}[2, -21, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, -5.5, -20, 21, 22.5, 21, 16.5]) == 1301
    @test double_the_difference([2.5, 3.75, -5.5, 3.75, 2.5, 2.5]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, 7.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, -5.6]) == 290
    @test double_the_difference([2.5, 3.7, 2.14036723477313, 7.0, 10.5, -11.0, -12.8, -14.0, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -16.0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, 16.5, -16.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -28.0, 5.0, 6.0, -12.8]) == 0
    @test double_the_difference(Union{Float64, Int64}[5, 2.5, 3.7, 7, 10.5, 24, -20, -11, -12.8, -14, -15.3, -16, -23.973108943994585, 19, 21.9, -23.8, 24, 25, -9, 26, -27.5, -29, -28, 24, 19, -28, -28, -15.3, -14]) == 1421
    @test double_the_difference(Union{Float64, Int64}[1, 3, 10.5, 2, 6.699182334173166, 0, -2, -4, 9, -9, 4, 2, 6.699182334173166]) == 91
    @test double_the_difference([2.5, -5.0, 7.0, -4.0, 10.5, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, -29.0, -15.3]) == 0
    @test double_the_difference(Union{Float64, Int64}[12, -3.7, 14, -12, -13, 2.5, 2.648235404448685, -5.6]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -12, -13, 2.5, -3.7, 4.98, -5.6, -11, 13]) == 459
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 25.0, 26.0, -27.5, -28.0, -28.0, 7.0]) == 0
    @test double_the_difference([2.5, -5.0, 7.0, -4.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, 24.0, 2.676701348213358, 25.0, 26.0, -28.0, -29.0, -15.3]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -14.5, 2.5, -20, 0.5728382045605218, 0.5, 7, 9.9, -20, 0.5728382045605218, -14.5]) == 50
    @test double_the_difference([2.5, 3.7, 10.5, 24.0, -20.0, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, 24.0]) == 0
    @test double_the_difference([12, 10, 1, 3, 5, 7, 9, 11, 13, 17, 19, 11]) == 1226
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, 6, -3, -4, 5, 6, 10.734885794872278, 6, -3]) == 25
    @test double_the_difference(Union{Float64, Int64}[2, -21, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 21, 16.5, 8]) == 1301
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 0.5, 8, 7, -3]) == 50
    @test double_the_difference([12, 10, 3, 7, 9, 11, 13, 17, 19, 3]) == 1088
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5, -23.8]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -12.8]) == 0
    @test double_the_difference(Union{Float64, Int64}[8, 0, 1, 0, 0, -1, -2, -3, -12, -4, 5, 7.5, -4, 0]) == 26
    @test double_the_difference([15, 3, 5, 7, 0, 9, 13, 15, 17, 19, 0, 19, 0]) == 1794
    @test double_the_difference([2.5, 1.25, -5.0, 7.0, 10.5, -11.0, -12.8, -9.652220770073031, 24.0, -15.3, -16.0, 19.0, 20.2, 22.222183404384843, -23.8, 24.0, 25.0, -27.5, -28.0, 3.7, 10.5]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 21.19279248083658, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, 5.0]) == 0
    @test double_the_difference([3, 5, 0, 0, 9, 11, 13, 14, 15, 17, 19, 0, 9]) == 1361
    @test double_the_difference([0.6362946504056242, 17.0, 1.0, -3.0, 2.5, -20.0, 0.5, 7.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[3, 10.7, 10.5, -15.2, 17, 2, 2, -14.182301239639925, 0]) == 298
    @test double_the_difference(Union{Float64, Int64}[0, 0, -3, 0, -1, 6, -3, -4, 5, 6, 10.734885794872278, 6]) == 25
    @test double_the_difference([21, 15, 4, 3, 5, 7, 0, 9, 11, 2, 12, 17, 19, 0, 13]) == 1770
    @test double_the_difference(Union{Float64, Int64}[-4, 2.5, -20, 0.5, -29, 10.836770442711284]) == 0
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -28.0]) == 0
    @test double_the_difference([2.5, 3.7, 2.14036723477313, 7.0, 10.5, -11.0, -12.8, -14.0, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -15.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -4, 5, 6, 7.5, -29, 8.3]) == 25
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, 2.5221867302663594, -16.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -28.0, 5.0, 24.0, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[12, 14, -11, -13, 2.5, -3.7, 0.5, -5.6]) == 0
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 10.5, -11, -12.8, -9.652220770073031, -14, -15.3, -16, -17, 19, 20.2, 0.6362946504056242, 24, 25, 26, -27.5, -28, -2, -29]) == 986
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 25.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5, 26.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[17, 13, -11, -11, -13, 2.5, -3.7, -5.6, 13]) == 627
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, -20, 21, 21]) == 1301
    @test double_the_difference([12, 3, 5, 0, 7, 3, 9, 15, 11, 13, 15, 17, 19, 15]) == 1788
    @test double_the_difference([1, -1, 0, 5, 7, 0, 9, 11, 13, 15, 17, 18, 19]) == 1321
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, -3, -4, -16, 6, 7.5, 8.3]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -4, 6, 7.5, 8.3, 0, -1]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, 9, -28, -2, -3, -4, 5, 6, 7.5, -10, 8.3]) == 106
    @test double_the_difference(Union{Float64, Int64}[0, 6, 0, 0, 6, -3, -4, 5, 6, 10.734885794872278, 6]) == 25
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.5, 7.8, 9, -1, -9, 1, 0]) == 92
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 19, 16.5, 17, 18, 19.2, -20, 12, 6.699182334173166, 21, 16.5, 12]) == 1221
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, 3, -18, -2, 8, 4.5, 8.944995751091522, 9, -9]) == 100
    @test double_the_difference([7, 1, 3, 5, 17, 9, 11, 13, -15, 17, 19, 17]) == 1683
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 15, 17]) == 969
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -14.0, -15.3, -17.0, 19.0, 20.2, 21.9, 10.7, 24.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5, 10.5]) == 0
    @test double_the_difference([10.7, 9.70702024063259, 10.5, -15.2, 17.0, 2.0, 2.0, -14.182301239639925, 0.0]) == 0
    @test double_the_difference([1, 3, 0, 5, 7, 0, 9, 11, 13, 15, 17, 18, 19, 1]) == 1331
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 0.5728382045605218, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 8]) == 860
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, 2.5221867302663594, -16.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -28.0, 5.0, 25.0, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 24, 0, 0, -2, -3, 9.42570364349231, -4, 5, 6, 7.5, 8.3, 6]) == 25
    @test double_the_difference([12, 10, 1, 3, 4, 7, 9, 11, 13, 17, 19]) == 1080
    @test double_the_difference([17, 1, 3, 0, 7, 0, 9, 11, 13, 15, 17, 18]) == 1233
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -12, -13, 1.25, 2.5, -3.7, 4.98, -5.6, -11, -3.7]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, -11, -13]) == 290
    @test double_the_difference([-11.122111967328042, 2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0]) == 0
    @test double_the_difference([3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, 24.0, 25.0, 4.98, 6.0, -27.5, -28.0, 5.0, -28.0, 21.9, -14.0, 21.9]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, 4.98, -4, 17, 5, 6, 16, 16.5, 8.3, 0]) == 314
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 10.5, -11, -12.8, -14, -15.3, -16, 19, 20.2, 0.6362946504056242, -23.8, 24, 25, 26, -27.5, -28, 0.6362946504056242]) == 986
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, -4, -16, 6, 7.5, 8.3, 0]) == 0
    @test double_the_difference([10, 3, 5, 7, 8, 11, 13, 17, 19]) == 1023
    @test double_the_difference(Union{Float64, Int64}[17, 3, 4.5, 6, -7, 8, 9.1, 11, -3, 12, -13, 2.5, -15, 22.037906984126526, 16.5, 17, 18, 19.2, -20, 21, 21, -13]) == 1590
    @test double_the_difference([15, 3, 5, 7, 0, 9, 10, 13, 15, 17, 19, 0, 19, 19, 10]) == 2155
    @test double_the_difference([12, 10, 1, 13, 5, 7, 9, 11, 13, 17, 19, 13]) == 1434
    @test double_the_difference(Union{Float64, Int64}[2, -21, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 19.2, 21, 22.5, 21, 16.5, 8, 2]) == 1301
    @test double_the_difference(Union{Float64, Int64}[0, -3, 0, -1, 6, -3, -4, 5, 6, 10.734885794872278, 6]) == 25
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 6.0, -27.5, -28.0]) == 0
    @test double_the_difference([21, 15, 5, 7, 0, 9, -28, 11, -10, 15, 17, 19, 0, 13]) == 1986
    @test double_the_difference([2.5, 3.7, 2.14036723477313, 7.0, 10.5, -11.0, -12.8, 2.8693365079994013, -14.0, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, -16.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -15, 16, 2.5, -20, 0.5, 7, 9.9, 0.5, 7]) == 99
    @test double_the_difference([1, 3, 6, 7, 9, 11, 13, 15, 17, 7, 11]) == 1114
    @test double_the_difference(Union{Float64, Int64}[2, -15, 2.5, -20, 0.5, 7, 9.9, 7]) == 98
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -4.0, 10.5, -11.0, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, -29.0, 19.0, -14.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, -15, 17, 18, 19.2, -20, 21, 22.90190053829884, 21]) == 1301
    @test double_the_difference([7, 3, 5, 7, 9, 11, 13, -15, 17, 19, 17]) == 1442
    @test double_the_difference([2.5, 3.75, -5.5, 4.941277999379585, 2.5, 2.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 1, 3, 2, 0, -3, -2, 4.5, 7.8, 9, -1, -9, 1, 0]) == 92
    @test double_the_difference(Union{Float64, Int64}[1, -3, 1.9744036171913348, 2.5, -20, 0.5728382045605218, 0.5, 7, 9.9, -20, 0.5728382045605218, 0.5728382045605218]) == 50
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -4.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 6.0, -27.5, -28.0]) == 0
    @test double_the_difference([13, 10, 3, 5, 7, 11, 13, 14, 17, 14, 19]) == 1192
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -12.8, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, 7.0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, 5.0, 2.5, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 1, 0, 0, -1, -2, -3, -4, 5, 6, -13, 7.5, 8.3, 0, -3]) == 26
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -4.0, 10.5, -11.0, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -28.0, -29.0]) == 0
    @test double_the_difference([21, 15, 3, 5, 7, 0, 9, 11, 2, 13, 17, 13]) == 1578
    @test double_the_difference([12, 1, 10, 1, 3, 5, 7, 9, 11, 13, 21, 19, 11]) == 1379
    @test double_the_difference(Union{Float64, Int64}[1, 3, 0, -3, -2, 4.5, 7.8, 15.059792296821433, 9, -9, 1]) == 92
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 9.9, 7, -7]) == 50
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, 4, -4, 5, 6, 7.5, 8.3, 0, 0]) == 25
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 5, 6, 7.5, 8.3, 0, 7.5]) == 25
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -16.0, 19.0, 20.2, 21.9, -31.65305994277872, 24.0, 25.0, 6.0, -28.0, 5.0]) == 0
    @test double_the_difference([1, 3, 6, -29, 7, 9, 11, 13, 15, 17, 7, 11]) == 1114
    @test double_the_difference(Union{Float64, Int64}[2, 3, 2.968032886251095, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, -21, 19.2, -20, 21, 22.5, 21]) == 1301
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -28, -2, -3, -4, 5, 6, 7.5, -10, 8.3]) == 25
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -3, -2, 4.5, 8.944995751091522, 10, -9, 0, 2, 6.081421766136399]) == 10
    @test double_the_difference([1.25, 2.5, 3.5639643956938984, -5.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[-18, -3, 2.5, -20, 0.5, 7, 10.836770442711284]) == 49
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, -16, 6, 7.5, 0.5, -3]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -3, -4, 5, 6, 7.5, 8.3, 6, 0]) == 25
    @test double_the_difference([10.7, 12.5, -10.364742151078504, 25.0, -10.364742151078504, 10.7]) == 0
    @test double_the_difference([10.81233619902244, 1.0, 3.0, 9.1, 2.0, 6.699182334173166, 0.0, -3.0, 18.0, 4.5, 8.944995751091522, 9.0, 2.0, 6.699182334173166, 9.0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 25.0, 26.0, -27.5, -28.0, 8.0, 3.7, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 2.968032886251095, 6, -7, 8, 9.1, -10.5, 11, 12, -13, 2.5, -15, 16.5, 17, 18, 8.3, -20, 21, 22.5, 21, -20]) == 1301
    @test double_the_difference([21, 15, 5, 7, 0, 9, -28, 11, -10, 15, 17, 19, 0, 13, 7, 17]) == 2324
    @test double_the_difference(Union{Float64, Int64}[17, 12.5, -15.2, 17, 25, 12, 0]) == 1203
    @test double_the_difference([2.5, 3.7, -5.0, 24.0, 7.0, -4.0, 10.5, -11.0, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 23.0, 25.0, 26.0, -28.0, -29.0, 19.0]) == 0
    @test double_the_difference([10.7, -15.882233515109174, 17.0, 2.0, 2.0, 0.0, -21.0, 2.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 0, 9, 13, -4, 17, 19, 19]) == 1345
    @test double_the_difference(Union{Float64, Int64}[11, 12, -12, -13, 2.5, -3.7, 4.98, -5.6, -11]) == 121
    @test double_the_difference(Union{Float64, Int64}[0, 0, 1, 0, -2, -3, 9.42570364349231, -4, 5, 6, 7.5, 8.3, 6]) == 26
    @test double_the_difference([3, 5, 7, 0, 9, 11, 15, 17, 19, 0, 13]) == 1329
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 12, 6.699182334173166, 21, 16.5, 12, 6.699182334173166]) == 860
    @test double_the_difference([1, 3, 0, 5, 7, 0, -17, 9, 11, 13, 15, 17, 18, 19, 3]) == 1339
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -4, -1, -2, -3, -12, -4, 5, -4, 7.5, -4, -3, 7.5]) == 25
    @test double_the_difference([1, -1, 0, 5, 7, 0, 9, 11, 13, 15, 17, 18, 19, 5]) == 1346
    @test double_the_difference(Union{Float64, Int64}[1, 3, 11.361205730129923, 2, -3, 4.5, 8.944995751091522, -9]) == 10
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -2, 8.944995751091522, -4, 9, -9, 6.699182334173166, 2]) == 91
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.5, 8.944995751091522, -3, 9, -9]) == 91
    @test double_the_difference(Union{Float64, Int64}[2, 4.5, 6, -7, 8, 9.1, -10.5, 11, 0.4972309340547183, 12, 7, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 12, 3]) == 909
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -1, -2, -3, -4, 5, 6, 7.5, 7.791719660194293, 0, 0]) == 25
    @test double_the_difference([12.5, -15.2, 17.0, 25.0, 0.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[-4, 2.5, 7.791719660194293, -20, 0.5, -29, 10.836770442711284]) == 0
    @test double_the_difference([15, 3, 5, 7, 0, 9, 11, 13, 15, 17, 19, 1, 19]) == 1916
    @test double_the_difference([-11.122111967328042, 2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 6.0, -27.5, -28.0, 5.0, 2.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 1.9744036171913348, 2.5, 16, 0.5728382045605218, 0.5, 7, -0.28556197592491217, 9.9, -20, 0.5728382045605218]) == 50
    @test double_the_difference(Union{Float64, Int64}[-4, 2.5, 7.791719660194293, -20, -3.7, -29, 10.836770442711284, 0.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -4, -28, 5, 6, 7.5, -1, 8.3]) == 25
    @test double_the_difference([2.5, 3.7, -5.0, -29.0, 10.5, -11.0, -28.0, -15.3, -17.0, 19.0, 17.92945384873627, 21.9, -23.8, 24.0, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5, 10.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -3, 4.98, -4, 17, 6, 6, 16, 16.5, 8.3, 0]) == 289
    @test double_the_difference(Union{Float64, Int64}[1, -3, 1.9744036171913348, 2.5, -20, 0.5728382045605218, 0.5, 7, 9.9, -20, 9.9, 2.5]) == 50
    @test double_the_difference([3.7, -5.0, -29.0, 7.0, -23.973108943994585, -11.0, -12.8, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 26.0, -27.5, -28.0, -29.0, 3.7, 10.5, -5.0, 19.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 6, 0, 0, 6, -3, -4, 5, 6, 10.734885794872278, 6, 10.734885794872278]) == 25
    @test double_the_difference(Union{Float64, Int64}[17, 10.7, 12.5, -15.2, 17, 25, 0, -15.2]) == 1203
    @test double_the_difference([7, 3, 5, 7, 9, -20, 13, -15, 17, 19, 17]) == 1321
    @test double_the_difference(Union{Float64, Int64}[0, 0, 1, 0, -2, -3, 9.42570364349231, -4, 5, 6, 7.5, 8.3, 6, 8.342295356475393, 7.5]) == 26
    @test double_the_difference([12, 10, 1, 3, 5, 9, 11, 13, 15, 17, 19]) == 1281
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, -1, -2, -3, -4, 5, 6, 7.5, 6, 0]) == 25
    @test double_the_difference([1, 3, 18, 2, 0, -3, -2, 9, -9, -9]) == 91
    @test double_the_difference(Union{Float64, Int64}[0, 0, 0, 0, -2, -4, -28, 5, 6, 7.5, -1, 8.3, 0]) == 25
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, -3, -2, 8.944995751091522, -4, 9, 2, 6.699182334173166]) == 91
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, -11.0, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, 20.2]) == 0
    @test double_the_difference([0, 1, 3, 0, 5, 7, 0, 9, 11, 13, 1, 17, 18, -3]) == 745
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, 8, -7, 8, 9.1, -10.5, 11, 0.5728382045605218, 12, -13, -15, 16.5, 17, 18, 19.2, -14, -20, 21, 22.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 6.699182334173166, 0, 4, -2, 4.5, 8.944995751091522, 9, 0, 2, 6.699182334173166]) == 91
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, 4.941277999379585, -15.3, -16.0, 19.0, 20.2, 22.220999649203225, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, 5.0, 2.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, -20, 0.5, 9.9]) == 1
    @test double_the_difference(Union{Float64, Int64}[-1, 0, 0, 0, -2, -3, -4, 5, 6, -29, 8.3, 0]) == 25
    @test double_the_difference(Union{Float64, Int64}[3, 0, 0, 0, -1, -2, -3, -4, 5, 6, 3.578420498601563, 8.3, 0, 0, -29]) == 34
    @test double_the_difference(Union{Float64, Int64}[-29, 2.5, 3.7, 7, 10.5, 24, -20, -11, -14, -15.3, -16, 19, 20.2, 21.9, -23.8, -10, 24, 25, -9, 26, -27.5, -28, -29, -28, 24, 19, -11]) == 1396
    @test double_the_difference([12, 10, 1, 3, 5, 7, 9, 11, 13, 17, 19, 10]) == 1105
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 10.5, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 0.6362946504056242, -23.8, 24, 25, 26, -40.96916340011073, -28, -29]) == 986
    @test double_the_difference([12, 10, 1, 13, 5, 7, 9, 11, 24, 17, 19, 13]) == 1265
    @test double_the_difference([2.5, 3.7, 7.0, 10.5, 23.54893364652937, -11.0, -14.0, -15.3, -16.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -28.0, 20.2]) == 0
    @test double_the_difference(Union{Float64, Int64}[12, -3.7, 14, -12, -13, 2.5, -5.6, 12]) == 0
    @test double_the_difference([3, 5, 7, 0, 9, 11, 13, 15, -1, 17, 2, 19, 9]) == 1410
    @test double_the_difference([2, 4, 6, 8, 10, 12]) == 0
    @test double_the_difference([0]) == 0
    @test double_the_difference([-1, -3, -5, -7]) == 0
    @test double_the_difference([0.5, 1.5, 2.5, 3.5]) == 0
    @test double_the_difference([4, 8, 12, 16]) == 0
    @test double_the_difference([-1, 0, 1, 2]) == 1
    @test double_the_difference([1, 3, 5, 7]) == 84
    @test double_the_difference([99999]) == 9999800001
    @test double_the_difference([88888]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 1, -3, 2.5, -5, 0.5, 7, 9.9]) == 51
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5]) == 860
    @test double_the_difference([2.5, 3.7, -5.0, -13.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 6.0, 25.0, 26.0, -27.5, -28.0, -29.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.3534083434836495, 4.5, 7.8, 9, -9]) == 91
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 10.5, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1035
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -14, -20, 21, 22.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, 2, -13, -14.5, -15, 16.5, 17, 18, 19.2, -14, -20, 21, 22.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[3, 2, 0, -3, -2, 4.5, 7.8, 9, -9]) == 90
    @test double_the_difference(Union{Float64, Int64}[11, 21, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 731
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 121
    @test double_the_difference(Union{Float64, Int64}[3, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 6, -10.5]) == 869
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, -14.5]) == 860
    @test double_the_difference([2.5, 3.7, -5.0, -13.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 6.0, 25.0, 26.0, 2.5, 19.2, -28.0, -29.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, -7]) == 860
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6]) == 290
    @test double_the_difference([2.5, 3.7, -5.0, -13.0, 7.0, 10.5, -11.0, -12.8, -14.0, 10.5, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 6.0, 25.0, 26.0, 2.5, 19.2, -28.0, -29.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 9, 11, 15, 17]) == 800
    @test double_the_difference([2.5, 3.7, -5.0, -13.0, 10.5, -11.0, -12.8, -14.0, 10.5, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 6.0, 25.0, 26.0, 2.5, 2.206800561418771, 19.2, -28.0, -29.0, -28.0, -18.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 15]) == 1555
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 0.5, 7, 9.9, 7]) == 99
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98]) == 121
    @test double_the_difference([4.5, 6.0, 8.0, 9.1, -10.5, 11.0, 12.0, -13.0, -14.5, -15.0, 16.5, 17.0, 18.0, 19.2, -20.0, 21.0, 22.5]) == 0
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 5]) == 1355
    @test double_the_difference(Union{Float64, Int64}[3, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, -15, 16.5, 17, 18, -20, 21, 22.5, 6, -10.5]) == 869
    @test double_the_difference([1, 10, 3, 5, 25, 9, 11, 13, 15, 17, 19]) == 1906
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -12, -13, 2.5, -3.7, -4.85706789926375, 4.98, -5.6]) == 121
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, -3, -2, 4.3534083434836495, 4.5, 7.8, 9, 19]) == 452
    @test double_the_difference([1, 3, 5, 7, 9, 13, 15, 14, 17, 19, 15]) == 1434
    @test double_the_difference([1, 3, 5, 7, 9, 15, 11, 13, 15, 17]) == 1194
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6]) == 860
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, 2.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, 4.98, -13, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, 2.5, -3.7, -12, 4.98, -5.6, 2.5]) == 290
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -28, -29, 26]) == 1035
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -15.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 10.5, -11, -12.8, -14, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1035
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.8730635439027, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6]) == 860
    @test double_the_difference([1, 3, 16, 5, 7, 9, 11, 13, 15, 17, 19, 5]) == 1355
    @test double_the_difference(Union{Float64, Int64}[11, 21, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98]) == 731
    @test double_the_difference([1, 3, 5, 7, 9, 11, 15, 17, 15]) == 1025
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 10.5, -11, -12.8, -15, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29]) == 1035
    @test double_the_difference([1, 10, 3, 5, 25, 10, 11, 13, 15, 17, 19]) == 1825
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.3534083434836495, 4.5, 7.8, 9, -9, 7.8]) == 91
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, -14.5, 2.0, 0.0, -15.2]) == 0
    @test double_the_difference(Union{Float64, Int64}[3, 3, 4.5, 6, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -20, 21, 22.5, 6, -10.5]) == 869
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 0.5, 15, 7, 9.9, 7, 0.5]) == 324
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 10.5, 7, 9.9]) == 50
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6, 6]) == 860
    @test double_the_difference([2.5, 3.7, -5.0, 6.0, 10.5, -11.0, -12.8, -15.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 20.2, 7, 9.9]) == 50
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, -11, -12.8, -14, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1035
    @test double_the_difference([4.5, 6.0, 8.0, 9.1, -10.5, 11.0, 12.0, -13.0, -14.5, -15.0, 16.5, 18.0, 19.2, -20.0, 21.0, 22.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 1, -3, 2.5, 1.810842044222636, -5, 0.5, 7, 7, 8.3, 9.9]) == 100
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, 6, -12, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 21, 13, -12, -13, 2.5, 12, -3.7, 4.98, -5.6, 4.98]) == 731
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 6, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, 4.98, -11, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[-13, 12, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6]) == 169
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98, 2.5]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 6, 13, -11, -13, -12, -5.444953180705854, -11, -13, 2.5, 4.98, -11, 4.98, -5.6, 4.98, 4.98]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 10.5, 7, 9.9, -5]) == 50
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -5.444953180705854, -20, -12, -13, 6.151118598868697, 2.5, -3.7, 4.98, 4.98, -5.6, -11]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -12, -13, 2.5, -3.7, -4.85706789926375, 4.98, -5.6, 11]) == 242
    @test double_the_difference(Union{Float64, Int64}[-2, -25.57437550460835, -4, 3.7, -5, 7, 10.5, -11, -12.8, -15, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29]) == 1035
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, -3.7, -11, -12.8, -14, -16, -15, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1035
    @test double_the_difference([10.7, -13.76813776755044, 12.5, -15.2, 17.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 10.5, 7, 8.3, 9.9, -5, 2.5]) == 50
    @test double_the_difference(Union{Float64, Int64}[11, 21, 13, 8, -12, -13, 2.5, -3.7, 10.7, -5.6, -11]) == 731
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 2, -3, -2, 4.3534083434836495, 4.5, 7.8, 9, 19, -2]) == 452
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, -14.5, 0.0, -15.2]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, 12.789370684596095, -5, 0.5, 7, 9.9, 7]) == 99
    @test double_the_difference(Union{Float64, Int64}[1, 1, -3, 2.5, 1.810842044222636, -29, -5, 0.5, 7, 7, 8.3, 9.9, -29]) == 100
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, 12.789370684596095, -5, 0.5, 7, 9.9, 7, 1]) == 100
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 10.5, 1, 8.3, 9.9, -5, 2.5, 2.5]) == 2
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, -5.7603349349600625, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, -7, -7]) == 860
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 15, 16, 17, 19]) == 1330
    @test double_the_difference(Union{Float64, Int64}[11, 12, 0, -12, 13, -11, -13, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, 6.155344945827703, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, -12]) == 290
    @test double_the_difference([1, 2, 5, 7, 9, 11, 15, 17]) == 791
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, -14.5, 16.0, 0.0, -15.2]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 21.9, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, 22.5]) == 860
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 17, 19]) == 1105
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.3534083434836495, 4.5, 0, 7.8, 9, -9, 7.8, -9]) == 91
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 121
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, -13, 2.5, -3.7, 4.98, -5.6, -3.7]) == 121
    @test double_the_difference([1, 3, 5, 7, 9, 13, 15, 14, 17, 19, 15, 19]) == 1795
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, 12.789370684596095, -5, 0.5, 7, 9.9, 7, 1, 1]) == 101
    @test double_the_difference([2.5, 3.7, -5.0, 4.5, 6.0, 10.5, -11.0, -12.8, -15.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -5.0, -15.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, -7, 2.5, -5, 0.5, 7, 9.9, 0.5]) == 50
    @test double_the_difference([1, 3, 5, 7, 9, 11, 15, 17, 5]) == 825
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12.789370684596095, 12, -11, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 121
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, 8, -13, 6, -12, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 290
    @test double_the_difference([2.5, 3.7, -5.0, -23.50074373671861, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0]) == 0
    @test double_the_difference([1, 3, 5, 8, 7, 9, 13, 15, 14, 17, 19, 15]) == 1434
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -12, -13, 2.5, -3.7, 16.8730635439027, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -1, -11, 7, -13, 6, -12, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 339
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 4.98]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, 2.5, -5, 20.2, 7, 9.9]) == 50
    @test double_the_difference(Union{Float64, Int64}[1, 2.5, -5, 20.2, 9.9]) == 1
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 10.5, 1, 8.3, 9.9, -5, 20.2, 2.5, 2.5]) == 2
    @test double_the_difference(Union{Float64, Int64}[11, 18, -11, -13, -12, -13, 2.5, -3.7, -4.85706789926375, 4.98, -5.6]) == 121
    @test double_the_difference(Union{Float64, Int64}[1, -3, -12.8, -5, 10.5, 1, 8.3, 9.9, -5, 2.5, 2.5, 1]) == 3
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 0.5, 7, 9.9, -3]) == 50
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, -5, 12, -13, -14.5, 16.8730635439027, 17, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6]) == 739
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 4.98]) == 121
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 10.5, 7, 12.212849163536172, -5]) == 50
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98]) == 290
    @test double_the_difference([10.7, 12.5, -15.2, 10.769195595573965, 17.0, 2.0]) == 0
    @test double_the_difference([4.98, 1.25, 2.5, 3.75, -3.7]) == 0
    @test double_the_difference(Union{Float64, Int64}[3, 3, 4.5, 6, -7, 8, 9.1, -10.221265044605552, 11, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -20, 21, 22.5, 6, -10.5]) == 869
    @test double_the_difference([1, 10, 3, 5, 9, 25, 9, 11, 13, 15, 17, 19]) == 1987
    @test double_the_difference([1, 12, 5, 7, 9, 11, 15, 17]) == 791
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, -5.7603349349600625, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, 6, -7]) == 860
    @test double_the_difference(Union{Float64, Int64}[3, 3, 4.5, 6, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -20, 22.5, 6, -10.5]) == 428
    @test double_the_difference([2.5, 9.0, 3.7, -23.50074373671861, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 20.2, -17.0, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -28.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 9, 15, 11, 14, 15, 17]) == 1025
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 10.5, -11, -12.8, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1035
    @test double_the_difference([1, 10, 3, 5, 25, 9, 11, 13, 15, 19]) == 1617
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, -11, -12.8, -14, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26, -2]) == 1035
    @test double_the_difference(Union{Float64, Int64}[2, -12, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, 18]) == 851
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, -11, 4.3534083434836495, -14, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26, -2]) == 1035
    @test double_the_difference([4.5, 8.0, 26.0, 9.1, -10.5, 11.0, 12.0, -13.0, -14.5, -15.0, 16.5, 18.0, 19.2, -20.0, 21.0, 22.5, 16.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98, -13]) == 290
    @test double_the_difference([3.7, -5.0, -23.50074373671861, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 15, 16, 17, 19, 9]) == 1411
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -13, 2.5, -3.7, 4.98, -5.6]) == 121
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 4.9981823539009556, 2.5, -3.7, 4.98, -5.6, 4.98, -13, -13, -12]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 4.5, 12, 13, -11, -12, -13, -15.3, 4.98, -5.6, 4.98, -13]) == 290
    @test double_the_difference(Union{Float64, Int64}[2, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.8730635439027, 17, 18, -15.3, -20, 18.350475735262307, 21, 22.5, -7, 6]) == 851
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, 1.810842044222636, -5, 2.5319226863928144, 0.5, 7, 7, 8.3, 9.9]) == 99
    @test double_the_difference([1, 3, 8, 5, 7, 9, 13, 15, 14, 17, 19, 15, 19]) == 1795
    @test double_the_difference(Union{Float64, Int64}[0, 2.5, 3.7, -5, -13, 10.5, -12.8, -14, 10.5, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 6, 25, 26, 2.5, 2.206800561418771, 19.2, -28, -29, -28, -18]) == 986
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, -14.5, 2.0, 0.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -12, 2.5, -5, 0.5, 15, 7, 12.789370684596095, 8, 0.5]) == 275
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 4.98, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, -14.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98, -3.7]) == 121
    @test double_the_difference([1, 10, 3, 5, 25, 9, 11, 13, 15, 19, 15]) == 1842
    @test double_the_difference([10.7, -15.2, 17.0, -14.5, 2.0, 0.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 10.5, -3, -5]) == 1
    @test double_the_difference(Union{Float64, Int64}[3, 4.5, 6, -7, 8, 9.1, -10.5, -5, 12, -13, -14.5, 16.8730635439027, 17, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6]) == 739
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -13, 2.5, 3.389086184540945, -3.7, 4.98, -5.6, 12]) == 121
    @test double_the_difference(Union{Float64, Int64}[11, 12, 14, -11, -13, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 121
    @test double_the_difference([4.5, 6.0, 8.0, 9.1, -10.5, 11.0, 12.0, -13.0, -14.5, -15.0, 16.5, 17.0, -7.0, 19.2, -20.0, -12.0, 22.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -10.5, 4.98, -5.6, 4.98, -13]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -1, -11, 7, -13, 6, -12, -12, -13, 2.5, -3.7, 4.98, -5.6, 7, 7]) == 437
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 4.98, 4.98]) == 290
    @test double_the_difference([1, 3, 5, 7, 9, 13, 3, 15, 14, 15, 19, 13]) == 1323
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, -11, -12.8, -14, -16, -17, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1035
    @test double_the_difference([-13.76813776755044, 10.769195595573965, -15.2, 17.0]) == 0
    @test double_the_difference([1, 3, 5, 7, 9, 13, 7, 3, 15, 14, 15, 19, 13]) == 1372
    @test double_the_difference([1, 3, 5, 7, 13, 11, 13, 15, 16, 17, 19, 9]) == 1499
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, 16.5, 1.810842044222636, -5, 2.5319226863928144, 0.5, 7, 24, 7, 8.3]) == 99
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 4.9981823539009556, 2.5, -3.7, 4.98, -5.6, 4.98, -13, -13, 12]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 4.98, 4.98, -12]) == 121
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 0.5, 15, 7, 9.9, 14, 7, 0.5, 1]) == 325
    @test double_the_difference([1, 3, 5, 7, 9, 15, 17]) == 679
    @test double_the_difference(Union{Float64, Int64}[1, 0, 2, 0, -3, -2, 4.3534083434836495, 4.5, -18, 0, 22.5, 9, -9, 7.8, -9]) == 82
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -12, -13, 2.6189650044754096, -3.7, 4.98, -5.6, 4.98]) == 121
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -12, -13, 2.5, -3.7, -4.85706789926375, 4.98, -5.6, -11]) == 121
    @test double_the_difference(Union{Float64, Int64}[12, 14, -11, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 14, -11, -13, 10.5, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 121
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, -5.7603349349600625, 9.1, -10.5, 11, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 9, 22.5, -7, -7]) == 941
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -12, -13, 2.5, -3.7, -4.85706789926375, 8.3, -5.6]) == 121
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, 13, -11, -13, -12, -5.444953180705854, -12, 16.8730635439027, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 4.98, 16.8730635439027]) == 290
    @test double_the_difference(Union{Float64, Int64}[3, 4.5, 6, -7, 8, 9.1, -10.5, -5, 12, -13, -14.5, 16.8730635439027, 17, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6, 17]) == 1028
    @test double_the_difference(Union{Float64, Int64}[11, 12, 21, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98]) == 731
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, 12.789370684596095, -5, 7, 9.9, 7]) == 99
    @test double_the_difference(Union{Float64, Int64}[-2, -5, 7, -11, -12.8, -14, -16, -17, 19, 20.2, 21.9, -23.8, 24, 25, 26, -40.42942153118499, -28, -29, 26, -16]) == 1035
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -1, -11, -13, 6, -12, -12, -13, 2.5, -3.7, 4.98, -5.6, 7, 7]) == 388
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, 8, -13, 6, -12, -13, 2.5, -3.7, 4.98, -12, -5.6]) == 290
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -16.0, 21.9, -29.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[12, 12, -11, -13, 2.5, -3.7, 4.98, -5.6, -3.7]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -15.0, -15.3, -16.0, -18.0, 19.0, 20.0, 20.2, 21.9, 25.0, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -18.0, -29.0, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, 13, -11, -13, -12, -5.444953180705854, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 4.98, 4.98]) == 290
    @test double_the_difference(Union{Float64, Int64}[2, -12, 24, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, 18]) == 851
    @test double_the_difference([2.5, 3.7, -5.0, -13.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 6.0, 25.0, 26.0, 2.5, 19.2, -28.0, -29.0, 24.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.8730635439027, 17, 18, -15.3, -20, 18.350475735262307, 21, 22.5, -7]) == 851
    @test double_the_difference([4.5, 6.0, 8.0, 9.1, -10.5, 11.0, 12.0, -13.0, -14.5, -15.0, 16.5, 17.0, -21.0, 18.0, 19.2, -20.0, 21.0, 22.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.5, 7.8, 9, -1, -9]) == 91
    @test double_the_difference([1, 3, 5, 7, 9, 13, 7, 3, 15, 9, 14, 15, 19, 13]) == 1453
    @test double_the_difference(Union{Float64, Int64}[-2, -5, 3.7, -5, 7, -11, -12.8, -14, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1035
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, 16.5, 1.810842044222636, -5, 2.5319226863928144, 0.5, 7, 24, 7, 8.3, -5]) == 99
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 4.3534083434836495, 4.5, 0, 7.8, 9, -9, 5.170954487059516, -9]) == 91
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -12, -13, 2.5, -10.5, 4.98, -5.6, 4.98, -13, -12]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, -3, -12.8, -5, 10.5, 1, 8.3, 9.9, -5, 2.5, 2.5, 1, 4.3534083434836495, 1]) == 4
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, -13, 2.5, 4.98, -5.6, 12]) == 121
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, -2, 4.3534083434836495, 4.5, 7.8, 9, -27.5, 19, 9]) == 533
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, 12.789370684596095, -5, -0.34098815114353487, 7, 9.9, 7, 1]) == 100
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -13, 2.5, 3.389086184540945, -3.7, 4.98, 21, -5.6, 12]) == 562
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 5.008665487009396, 12.789370684596095, 21, 22.5, -7, 6, 6, -7]) == 860
    @test double_the_difference([2.5, 3.7, -5.0, 18.0, 7.0, 10.5, -11.0, -12.8, -15.0, -15.3, -16.0, -18.0, 20.0, 20.2, 21.9, 25.0, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -18.0, -29.0, -5.0]) == 0
    @test double_the_difference([10.795901326035837, 1.0, -3.0, 2.5, -5.0, 0.5, 7.0, 9.9, -3.0, 9.9]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -8, -3, -2, 4.3534083434836495, 4.5, 0, 7.8, 9, -9, 5.170954487059516, -9, -2]) == 91
    @test double_the_difference(Union{Float64, Int64}[0, -3, 2.5, 1.810842044222636, -5, 2.5319226863928144, 0.5, 7, 8, 8.3, 9.9]) == 49
    @test double_the_difference(Union{Float64, Int64}[11, 13, -11, -12, -13, 2.5, -4.491223031622146, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[12, 14, -11, -12, -14, 2.5, -3.7, 4.98, -5.6]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -18, -5.444953180705854, 3, -12, -13, 2.5, -3.7, 4.98, 4.98, -13, -5.6]) == 299
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -4, 10.5, -3, -5]) == 1
    @test double_the_difference(Union{Float64, Int64}[11, 12, 21, 13, -11, -12, -13, 2.5, 1, -3.7, 4.98, -5.6, 4.98]) == 732
    @test double_the_difference(Union{Float64, Int64}[12, 13, -8, -13, -6.041764742998405, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 169
    @test double_the_difference(Union{Float64, Int64}[11, 21, 13, -11, -12, -13, 12, 2.5, -3.7, 4.98, -5.6]) == 731
    @test double_the_difference([1, 3, 7, 9, 11, 15, 17, 15]) == 1000
    @test double_the_difference(Union{Float64, Int64}[11, 13, -11, -12, -13, 2.5, -4.491223031622146, -10, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, -13, -13, 2.5, 3.389086184540945, -3.7, 4.98, 21, -5.6, 12]) == 562
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, 5, 4.5, 7.8, 9, -1, -9]) == 116
    @test double_the_difference(Union{Float64, Int64}[11, 12.789370684596095, 12, -11, -12, -13, 2.5, -3.7, 4.98, -5.444953180705854]) == 121
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, -5.7603349349600625, 9.1, -10.5, 11, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 9, 22.5, -7, -7, -13]) == 941
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, -11, -12.8, -14, -16, -17, 19, 20.2, 21.9, -23.8, 24, 25, -10, 26, -27.5, -28, -29, -17, 26]) == 1035
    @test double_the_difference([10.7, 12.5, -15.2, 21.0, 17.0, -14.5, 16.0, 0.0, 0.0, -5.6, -15.2]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 21, 13, -11, -12, -14, 2.5, -3.7, 4.98, -5.6, 11]) == 852
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, 11, -13, -13, 2.5, -3.7, 4.98, -5.6, -13, 4.98]) == 242
    @test double_the_difference([2.5, 3.7, -5.0, -13.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 6.0, 25.0, 7.0, 26.0, 2.5, 19.2, -28.0, -29.0, 24.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, -15, 7, 10.5, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, -27.5, -2, -28, -29]) == 1035
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, 5, 4.5, 7.8, -3, -1, -9]) == 35
    @test double_the_difference(Union{Float64, Int64}[-14, 13, -11, -12, -13, 2.5, -4.491223031622146, 4.98, -5.6]) == 169
    @test double_the_difference(Union{Float64, Int64}[1, 3, -3, 0, -3, -2, 4.3534083434836495, 4.5, 0, 7.8, 9, -9, 7.8, -10]) == 91
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 10.5, -11, -12.8, -14, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26, 26]) == 1035
    @test double_the_difference(Union{Float64, Int64}[11, 12, 6, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, 4.98, -12, 4.98, -5.6, 4.98]) == 290
    @test double_the_difference([1, 5, 7, 13, 11, 13, 15, 16, 17, 19, 9, 13]) == 1659
    @test double_the_difference(Union{Float64, Int64}[11, 21, 13, -12, -13, 2.5, 12, 2, -3.7, 4.98, -5.6, 4.98]) == 731
    @test double_the_difference(Union{Float64, Int64}[11, 21, 13, -12, -13, 2.5, 2, -3.7, 4.98, -5.6, 4.98]) == 731
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 0.5, -10, 7, 9.9, 7, 0.5]) == 99
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -1, -11, 7, 6, -12, -12, -13, 2.5, -3.7, 4.98, -5.6, 7, 7]) == 437
    @test double_the_difference(Union{Float64, Int64}[11, 21, 13, -11, -12, -13, 2.5, 1, -3.7, 4.98, -5.6, 4.98]) == 732
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -25.57437550460835, -20, 12.73484605624031, 12.789370684596095, 21, 22.5, 6, -7]) == 860
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -13, -12, -5.444953180705854, -20, -13, 6.151118598868697, 2.5, -3.7, 4.98, 4.98, -5.6, -11]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, 3, 0, -3, -2, 4.5, 9, -8]) == 91
    @test double_the_difference([2.5, 3.7, -5.0, -13.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 10.5, 24.0, 6.0, 25.0, 26.0, -27.5, -28.0, -29.0]) == 0
    @test double_the_difference([10.7, 18.126384464325714, -15.2, 17.0, -14.5, 2.0, 0.0, -15.2]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 14, -11, -13, 10.5, -13, 2.5, -3.7, 4.98, -5.6]) == 121
    @test double_the_difference(Union{Float64, Int64}[3, 6, -7, 8, 9.1, -10.5, -5, 12, -13, -14.5, 16.8730635439027, 17, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6]) == 739
    @test double_the_difference(Union{Float64, Int64}[-13, 12, 12, 13, -11, -13, -12, -5.444953180705854, -11, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6]) == 169
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -2, 5.672044621585341, 7.8, 9, -9]) == 91
    @test double_the_difference(Union{Float64, Int64}[11, 12, 21, 13, -11, -13, 2.5, -3.7, 4.98, -5.6, 4.98]) == 731
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, -13, 6, -12, -12, -13, 2.5, -3.7, 4.98, 11, 2.5]) == 242
    @test double_the_difference(Bool[1, 1, 0, 0, 1, 0, 0, 0, 0, 0]) == 3
    @test double_the_difference(Union{Float64, Int64}[11, 12, -13, -12, -13, 2.6189650044754096, 4.156084318843158, -3.7, 3.7246169042982054, -5.6, 4.98]) == 121
    @test double_the_difference(Union{Float64, Int64}[11, 4.5, 12, 13, -11, -11, -13, -15.3, 4.98, -5.6, 4.98, -13, 4.5, -13]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, 13, -12, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 4.98, 4.98]) == 290
    @test double_the_difference([1, 3, 5, 7, 9, 13, 7, 3, 15, 9, 14, 15, 20, 13]) == 1092
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -10.5, 4.98, -5.6, 4.98, -13, -5.6]) == 290
    @test double_the_difference([10.7, 20.0, 12.5, -15.2, 17.0, -14.5, 0.0, -15.2]) == 0
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 4.98, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, -19.929636667110636, 12.789370684596095, 21, -14.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[1, -3, -12.8, -5, 10.5, 1, 8.3, 9.9, 2.5, 2.5, 1, 4.3534083434836495, 1]) == 4
    @test double_the_difference(Union{Float64, Int64}[1, 2.5, -5, 20.2, 20.75271395309502, 9.9]) == 1
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 17, 19, 1]) == 1106
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 11, 17, 19, 11]) == 1347
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 11, 11]) == 532
    @test double_the_difference(Union{Float64, Int64}[19, 3, 4.5, 6, -7, 8, 9.1, -10.5, -5, 12, -13, -14.5, 16.8730635439027, 17, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6]) == 1100
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 19, 12, -13, -14.5, -15, 16.5, 17, 18, 19.2, -14, -20, 21, 22.5]) == 1221
    @test double_the_difference(Union{Float64, Int64}[6, 10.7, 12.5, -15.2, 17, -14.5, 2, 0]) == 289
    @test double_the_difference(Union{Float64, Int64}[-2, -5, 7, -11, -12.8, -14, -16, -17, 20.2, 21.9, -23.8, 24, 25, 26, -40.42942153118499, -28, -29, 26, -16]) == 674
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, -11, 4.3534083434836495, -14, 12, -18, 19, -12.8, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26, -2]) == 1035
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, -13, 6, -12, -12, -5, -13, 2.5, -3.7, 4.98, 11, 2.5]) == 242
    @test double_the_difference(Union{Float64, Int64}[-2, 21, -4, 3.7, -5, 7, -11, -12.8, -14, -16, -17, 19, 20.2, 21.9, -23.8, 24, 25, -10, 26, -27.5, -28, -29, -17, 26]) == 1476
    @test double_the_difference(Union{Float64, Int64}[11, 12, 16, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 4.98]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 14, 13, 16, -13, 10.5, -13, 2.5, -3.7, 4.98, -3.583135907529582, -5.6, 14]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, 0.8323171393377669, 1.810842044222636, -5, 2.5319226863928144, 0.5, 7, 7, 8.3, 9.9]) == 99
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -12, -13, 2.5, -10.5, 4.98, -5.6, 4.98, -13, -12, -12]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, 1, -3, -15.3, 1.810842044222636, -5, 0.5, 7, 7, 8.3, -3.583135907529582]) == 100
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, -13, -3.7, 4.98, -5.6, -3.7]) == 121
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, -14.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[11, -40.42942153118499, 12, 12.789370684596095, 12, -11, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 121
    @test double_the_difference([1, 3, -13, 7, 9, 11, 13, 15, 17, 19, 15]) == 1530
    @test double_the_difference(Union{Float64, Int64}[0, 2.5, 3.7, -5, -13, 10.5, -12.8, -14, 10.5, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 6, 25, 26, 2.5, 2.206800561418771, -28, 19.2, -28, -29, -28, -18]) == 986
    @test double_the_difference(Union{Float64, Int64}[3, 4.5, 6, -7, 8, 9.1, -10.5, -5, 12, -13, -14.5, 16.8730635439027, 17, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6, 17, -7]) == 1028
    @test double_the_difference(Union{Float64, Int64}[3, 6, -7, 8, 9.1, -10.5, -5, 12, -13, -14.5, 16.8730635439027, 17, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6, 21]) == 1180
    @test double_the_difference([1, 3, 7, 10, 13, 7, -14, 3, 15, 9, 14, 15, 19, 13]) == 1347
    @test double_the_difference(Union{Float64, Int64}[11, 12, -9, 26, -13, -3.7, 4.98, -5.6, -3.7]) == 121
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 17]) == 744
    @test double_the_difference(Union{Float64, Int64}[12, 14, -11, -12, -14, 2.5, -3.7, 4.98, -5.6, 4.98]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, -13, -12, -13, 2.6189650044754096, 4.156084318843158, -3.7, 3.7246169042982054, -5.6, 4.98, 3.7246169042982054]) == 121
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 4.9981823539009556, 2.5, -3.7, 4.98, -5.6, 4.98, -13, -3.59589136076449, -13, -12]) == 290
    @test double_the_difference([1, 3, 5, 7, 9, 13, 7, 3, 15, 9, 14, 19, 13]) == 1228
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 3.7, -11, -12.8, 9, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1116
    @test double_the_difference(Union{Float64, Int64}[11, 12, 21, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98, 4.98]) == 731
    @test double_the_difference(Union{Float64, Int64}[1, -3, -12.8, -5, 10.5, 1, 8.173192029810098, 9.9, -5, 2.5, 2.5, 1]) == 3
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, -10, -7, 8, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, -14.5]) == 860
    @test double_the_difference([-13.76813776755044, 10.769195595573965, -15.2, 17.0, 18.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[1, 3, 0, -3, -2, 4.5, 14, 9, -9]) == 91
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, -2, 4.3534083434836495, 4.5, 7.8, 9, -27.5, 19, -25.57437550460835, 9]) == 533
    @test double_the_difference(Union{Float64, Int64}[12, 14, -11, -12, -13, 2.5, 15, -4.6344929368550885, 4.98, -5.6]) == 225
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -14.5, -7, 8, 21.63633519199636, 21.9, -10.5, 2, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, 22.5]) == 739
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, -13, 6, -12, -12, -5, -13, 4.156084318843158, -3.7, 4.98, 11, 2.5]) == 242
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, 19.0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, -13.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 6.0, 25.0, 26.0, 2.5, 19.2, -28.0, 20.2, -29.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[0, 1, 0, 0, -1, -2, -3, -4, 5, 6, 7.5, 8.3, 7.5]) == 26
    @test double_the_difference([1, 3, 5, 7, 11, 13, 15, 17, 19, 5, 24, 1]) == 1275
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 2.5, -5, 7, -11, -12.8, -14, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1035
    @test double_the_difference(Union{Float64, Int64}[11, 4.5, 12, 13, -12, -13, -15.3, 4.98, -5.6, 4.98, -13, -13]) == 290
    @test double_the_difference([1, 3, 5, 7, 9, 13, 3, 15, 14, 19, 13]) == 1098
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, 2.5, 12, 4.98, -5.6, 12]) == 121
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 0.5, 15, 7, 9.9, 14, 7, 0.5, 1, 1]) == 326
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, 6.155344945827703, 9.9, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, -12, 6.155344945827703]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 6, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, 4.98, -12, 4.98, -5.6, 13, 4.98]) == 459
    @test double_the_difference([-6.2258819587343535, 1.25, -5.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, -13, 6, -12, 10, -5, -13, 2.5, -3.7, 4.98, 8, 2.5, -13]) == 121
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 10.5, -11, -12.8, -15, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, -15]) == 1035
    @test double_the_difference(Union{Float64, Int64}[11, 17, -11, -13, -12, -13, 2.5, -3.7, -4.85706789926375, 4.98, -5.6]) == 410
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, -15, 18, -15.3, -25.729223007661275, -20, 12.73484605624031, 12.789370684596095, 21, 22.5, 6, -7]) == 571
    @test double_the_difference([4.5, 6.155344945827703, 6.0, 8.0, 9.1, -10.5, 11.0, 12.0, -13.0, -15.0, 16.5, 17.0, -7.0, 19.2, -20.0, -12.0, 22.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 21, -11, -12, -13, 12, 2.5, -3.7, 4.98, -5.6]) == 562
    @test double_the_difference([-4.10277947898782, 11.0, 13.0, -11.0, -12.0, -13.0, 2.5, -4.491223031622146, 4.98, 5.170954487059516, -5.6]) == 0
    @test double_the_difference([18, 1, 3, 5, 7, 9, 15, 11, 13, 15]) == 905
    @test double_the_difference(Union{Float64, Int64}[6, 10.7, 12.5, -15.2, 17, 10.795901326035837, 2, 0]) == 289
    @test double_the_difference(Union{Float64, Int64}[1, -12, 2.5, -5, 0.5, 15, 7, 18.126384464325714, 8, 0.5]) == 275
    @test double_the_difference(Union{Float64, Int64}[11, 12, -14, -13, -4.85706789926375, 3.389086184540945, -3.7, 4.98, 21, -5.6, 12]) == 562
    @test double_the_difference(Union{Float64, Int64}[1, -3, 2.5, -5, 10.5, 7, -7, 9.9, -5]) == 50
    @test double_the_difference([10.7, -13.76813776755044, -5.5, 12.5, -15.2, 17.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, -13, -13, 2.5, 3.389086184540945, -3.7, 4.98, -5.6, 12, 11]) == 242
    @test double_the_difference(Union{Float64, Int64}[1, 3, 12.5, 6, -7, 8, 4.98, -10.5, 11, 13, -13, -14.5, 16.5, 17, 18, -15.3, -20, -19.929636667110636, 12.789370684596095, 21, -14.5]) == 1030
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98, 2.5, 4.98]) == 290
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 15, 16, 17, -16, 19]) == 1330
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -12, -13, 2.5, -3.7, -4.85706789926375, -25.57437550460835, -5.6, -11]) == 121
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -4.032169929138715, 4.98, -5.6, 4.98, -18, 2.5, 4.98]) == 290
    @test double_the_difference(Union{Float64, Int64}[12, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 4.98, -12]) == 169
    @test double_the_difference(Union{Float64, Int64}[1, 2.5, -5, -5.7603349349600625, 7, 9.9, 9.9]) == 50
    @test double_the_difference([4.5, 12.0, 6.0, 8.0, 9.1, -10.5, 11.0, 12.0, -13.0, -14.5, -15.0, 11.0, 16.5, 17.0, -21.0, 18.0, 19.2, -20.0, 21.0, 22.5, -21.0]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 18.0, 7.0, 10.5, -11.0, -12.8, -15.0, -15.3, -16.0, -18.0, 20.0, 20.2, -10.221265044605552, 21.9, 25.0, -23.8, 24.0, 3.389086184540945, 25.0, 26.0, -27.5, -28.0, -29.0, -18.0, -29.0, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 3.7, -11, -12.8, 9, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, 9.9, -28, -29, 26]) == 1116
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, -11, 14, 2.4288142571092246, -3.7, 4.98, -5.6, -3.7]) == 121
    @test double_the_difference(Union{Float64, Int64}[2, -12, 24, 4.5, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, 18, 9.1]) == 851
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, -14.5, 16.0, 0.0, 0.0, -5.6, -15.2]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, -10.5, -11.0, -12.8, -15.0, -15.3, -16.0, -18.0, 19.0, 20.0, 20.2, 21.9, 25.0, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -18.0, -29.0, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12, 14, -11, -13, 13.562683430177183, -12, -13, 2.5, -3.7, 4.98, -5.6]) == 121
    @test double_the_difference([1, 3, 5, 7, 9, 11, 13, 11, 17, 19, 11, 1, 1]) == 1349
    @test double_the_difference(Union{Float64, Int64}[1, 0, 2, 0, -3, -2, 4.3534083434836495, 4.5, -18, 0, 22.5, 9, -9, 7.8, -9, 9, -2]) == 163
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -2, 4.3534083434836495, 4.5, 0, 7.8, 9, -9, 7.8, -9]) == 91
    @test double_the_difference([1, 3, 8, 5, 7, 10, 9, 13, 15, 14, 17, 19, 15, 19, 5, 15]) == 2045
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, -2, 4.3534083434836495, 1, 4.5, 7.8, -27.5, -25.57437550460835, 9]) == 92
    @test double_the_difference(Union{Float64, Int64}[2, 4.5, 6, -7, 16, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.8730635439027, 17, 18, -15.3, -20, 18.350475735262307, 21, 22.5, -7, 6, 21]) == 1292
    @test double_the_difference(Union{Float64, Int64}[1, 0.22835694276033647, -3, 2.5, 12.789370684596095, -5, 0.5, -16, 14, 9.9, 7]) == 50
    @test double_the_difference([2.5, 3.7, -5.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -19.0, 20.2, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -16.0, 21.9, -29.0]) == 0
    @test double_the_difference([10.7, 12.5, -15.2, 10.769195595573965, 17.0, 2.0, 2.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[-3, 2.5, -5, 10.5, 1, 8.3, 9.9, -5, 20.2, 2.492435239536683, 2.5, 2.5]) == 1
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 10.5, -11, -12.8, -14, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, -27.5, -28, -29, 26]) == 1035
    @test double_the_difference(Union{Float64, Int64}[3, 3, 4.5, 6, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -20, 22.5, 6, -10.5, 3]) == 437
    @test double_the_difference(Union{Float64, Int64}[-2, -5, 7, -11, -12.8, -14, -16, -17, 20.2, 21.9, -23.8, 24, 25, 26, -40.42942153118499, -29, -29, 26, -16]) == 674
    @test double_the_difference([1, 3, 17, 5, 7, 9, 11, 13, 15, 17, 7]) == 1307
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, 5, 4.5, 7.8, 9, -1, -9, 7.8]) == 116
    @test double_the_difference([2, 5, 7, 12, 11, 13, 15, 16, 17, 19, 9, 13]) == 1489
    @test double_the_difference([2.5, 3.7, -5.0, -13.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 24.0, 6.0, 25.0, 26.0, 2.5, 19.2, -28.0, 20.2, -29.0, 24.0]) == 0
    @test double_the_difference([3.7, -5.0, -23.50074373671861, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 20.2, 25.0, 21.9, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 12.789370684596095, 12, -11, 2, -13, 2.5, -3.7, 4.98, -5.444953180705854]) == 121
    @test double_the_difference([4.5, 6.0, 8.0, 9.1, -10.5, 11.0, 12.0, -13.0, -14.5, -15.0, 16.5, 17.0, -21.0, 18.0, 19.2, -20.0, 21.0, 22.5, 11.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[-12, 11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98]) == 290
    @test double_the_difference([1, 10, 3, 5, 25, 9, 11, 3, 13, 15, 19, 15]) == 1851
    @test double_the_difference([10.7, -13.76813776755044, -5.5, 12.5, -15.2, 17.0, 17.0]) == 0
    @test double_the_difference([1, 10, 3, 5, 25, 9, 11, 3, 13, 15, 19, 15, 19]) == 2212
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, -14.5, 16.0, -15.2]) == 0
    @test double_the_difference(Union{Float64, Int64}[3, 3, 4.5, -7, 8, 9.1, -10.221265044605552, 11, 12, -13, -14.5, -15, 16.5, 17, 19.2, -20, 21, 22.5, 6, -10.5]) == 869
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -7, -20, 12.789370684596095, 21, 22.5]) == 860
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -12, -13, 2.5, -3.7, 4.98, -5.6, 4.98, 2.5, 4.98, 4.98]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, 3, -3, 0, -3, -2, 4.3534083434836495, 4.5, 0, 7.8, 9, -9, -10]) == 91
    @test double_the_difference(Union{Float64, Int64}[3, 3, 4.5, -7, 8, 5.672044621585341, -10.221265044605552, 11, 12, -13, -14.5, -15, 16.5, 17, 19.2, -20, 21, 22.5, 6, -10.5]) == 869
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, -11, -12.8, -14, -16, -18, 19, 28.33716966602801, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1035
    @test double_the_difference(Union{Float64, Int64}[11, 12, -11, -13, -12, -13, 2.5, -3.7, 4.98, 4.98]) == 121
    @test double_the_difference(Bool[1, 1, 0, 1, 0, 0, 0, 0, 0]) == 3
    @test double_the_difference(Union{Float64, Int64}[11, -11, -13, -12, -13, 5.139015145161112, 2.5, -3.7, -4.85706789926375, 4.98, -5.6, 11, 5.139015145161112]) == 242
    @test double_the_difference([1, 3, 5, 9, 11, 13, 15, 17, 19, 15]) == 1506
    @test double_the_difference([-13.76813776755044, 10.769195595573965, 18.126384464325714, 17.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 4.5, 12, 13, -11, -13, -15.3, 4.98, -5.6, 4.98, -13, 4.5, -13]) == 290
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, 4.98, -13, 5.911489581635175, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 8, 9.1, -10.5, 11, 12, -13, -14.5, 16.5, 17, 18, -15.3, -20, 12.789370684596095, 21, 22.5, -7, 6, 7, 6]) == 909
    @test double_the_difference(Union{Float64, Int64}[11, 12, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, -11, 4.98, -5.6, 4.98, -13]) == 290
    @test double_the_difference([-5.783646293028745, 11.0, 12.0, 12.0, 13.0, -12.0, -11.0, -13.0, -12.0, -5.444953180705854, -12.0, -13.0, 2.5, -3.7, 4.98, -11.0, 4.98, -5.6, 6.339373449279431, 4.98, 4.98]) == 0
    @test double_the_difference([1, 10, 5, 2, 25, 9, 11, 15, 19]) == 1439
    @test double_the_difference(Union{Float64, Int64}[2, 3, 4.5, 6, -7, 9.1, -10.5, 11, 12, -13.667941545718316, -13, -14.5, 16.5, 17, 18, -15.3, -7, -20, 12.789370684596095, -14, 21, 22.5]) == 860
    @test double_the_difference([1, 3, 17, 5, 7, 11, 13, 17, 6]) == 952
    @test double_the_difference([10.7, 12.5, -15.2, 17.0, -1.0, -14.5, 0.0, -15.2, -14.5]) == 0
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, 10.5, -11, -12.8, -14, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26, 26, 19]) == 1396
    @test double_the_difference([2.5, 3.7, -5.0, 18.0, 7.0, 10.5, -12.8, -15.0, -15.3, -16.0, -18.0, 20.0, 20.2, 21.9, 25.0, -23.8, 24.0, 25.0, 26.0, -27.5, -28.0, -29.0, -18.0, -29.0, -5.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[11, 13, 14, -15.3, -11, -13, 10.5, -12, -13, 2.5, -12.8, 4.98, -5.6]) == 290
    @test double_the_difference(Union{Float64, Int64}[1, 3, 2, 0, -3, -1, 4.3534083434836495, 4.5, 7.8, 9, -9, 7.8]) == 91
    @test double_the_difference(Union{Float64, Int64}[11, 12, 13, -11, -13, -12, -5.444953180705854, -12, -13, 2.5, -3.7, 4.98, 4.98, -13, 5.911489581635175, -5.6, 11]) == 411
    @test double_the_difference([4.5, 6.0, 8.0, 9.1, -10.5, 12.0, 12.0, -13.0, -14.5, 11.0, 16.5, 17.0, -21.0, 18.0, 19.2, -20.0, 21.0, 22.5]) == 0
    @test double_the_difference([2.5, 3.7, -5.0, -13.0, 7.0, 10.5, -11.0, -12.8, -14.0, -15.3, -16.0, -18.0, 19.0, 20.2, 21.9, -23.8, 10.5, 24.0, 6.0, 25.0, 26.0, -27.5, -28.0, -29.0, 19.0]) == 0
    @test double_the_difference(Union{Float64, Int64}[-2, -4, 3.7, -5, 7, -11, -12.8, -14, -15.3, -16, -18, 19, 20.2, 21.9, -23.8, 24, 25, 26, -27.5, -28, -29, 26]) == 1035
end
