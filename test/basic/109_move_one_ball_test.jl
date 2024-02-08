@testitem "109_move_one_ball.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "109_move_one_ball.jl"))

    @test move_one_ball([3, 4, 5, 1, 2])==true
    @test move_one_ball([3, 5, 10, 1, 2])==true
    @test move_one_ball([4, 3, 1, 2])==false
    @test move_one_ball([3, 5, 4, 1, 2])==false
    @test move_one_ball(Int[])==true
end