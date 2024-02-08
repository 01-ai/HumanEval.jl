@testitem "045_triangle_area.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "045_triangle_area.jl"))

    @test triangle_area(5, 3) == 7.5
    @test triangle_area(2, 2) == 2.0
    @test triangle_area(10, 8) == 40.0
end