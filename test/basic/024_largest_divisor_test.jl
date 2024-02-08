@testitem "024_largest_divisor.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "024_largest_divisor.jl"))

    @test largest_divisor(3) == 1
    @test largest_divisor(7) == 1
    @test largest_divisor(10) == 5
    @test largest_divisor(100) == 50
    @test largest_divisor(49) == 7
end