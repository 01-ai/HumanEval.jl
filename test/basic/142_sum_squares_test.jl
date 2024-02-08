@testitem "142_sum_squares.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "142_sum_squares.jl"))

    @test sum_squares([1,2,3]) == 12
    @test sum_squares([1,4,9]) == 86
    @test sum_squares(Int[]) == 0
    @test sum_squares([1,1,1,1,1,1,1,1,1]) == 9
    @test sum_squares([-1,-1,-1,-1,-1,-1,-1,-1,-1]) == -3
    @test sum_squares([0]) == 0
    @test sum_squares([-1,-5,2,-1,-5]) == -8
    @test sum_squares([-56,-99,1,0,-2]) == -156
    @test sum_squares([-1,0,0,0,0,0,0,0,-1]) == 0
    @test sum_squares([-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37]) == 66090
    @test sum_squares([-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10]) == 6324
end