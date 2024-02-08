@testitem "106_f.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "106_f.jl"))

    @test f(5) == [1, 2, 6, 24, 15]
    @test f(7) == [1, 2, 6, 24, 15, 720, 28]
    @test f(1) == [1]
    @test f(3) == [1, 2, 6]
end