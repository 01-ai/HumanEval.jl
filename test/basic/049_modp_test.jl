@testitem "049_modp.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "049_modp.jl"))

    @test modp(3, 5) == 3
    @test modp(1101, 101) == 2
    @test modp(0, 101) == 1
    @test modp(3, 11) == 8
    @test modp(100, 101) == 1
    @test modp(30, 5) == 4
    @test modp(31, 5) == 3
end