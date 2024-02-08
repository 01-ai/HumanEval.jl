@testitem "157_right_angle_triangle.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "157_right_angle_triangle.jl"))

    # Check some simple cases
    @test right_angle_triangle(3, 4, 5) == true
    @test right_angle_triangle(1, 2, 3) == false
    @test right_angle_triangle(10, 6, 8) == true
    @test right_angle_triangle(2, 2, 2) == false
    @test right_angle_triangle(7, 24, 25) == true
    @test right_angle_triangle(10, 5, 7) == false
    @test right_angle_triangle(5, 12, 13) == true
    @test right_angle_triangle(15, 8, 17) == true
    @test right_angle_triangle(48, 55, 73) == true

    # Check some edge cases that are easy to work out by hand.
    @test right_angle_triangle(1, 1, 1) == false
    @test right_angle_triangle(2, 2, 10) == false
end