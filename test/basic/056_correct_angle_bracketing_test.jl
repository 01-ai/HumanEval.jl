@testitem "056_correct_angle_bracketing.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "056_correct_angle_bracketing.jl"))

    @test correct_angle_bracketing("<>")
    @test correct_angle_bracketing("<<><>>")
    @test correct_angle_bracketing("<><><<><>><>")
    @test correct_angle_bracketing("<><><<<><><>><>><<><><<>>>")
    @test !correct_angle_bracketing("<<<><>>>>")
    @test !correct_angle_bracketing("><<>")
    @test !correct_angle_bracketing("<")
    @test !correct_angle_bracketing("<<<<")
    @test !correct_angle_bracketing(">")
    @test !correct_angle_bracketing("<<>")
    @test !correct_angle_bracketing("<><><<><>><>><<>")
    @test !correct_angle_bracketing("<><><<><>><>>><>")
end