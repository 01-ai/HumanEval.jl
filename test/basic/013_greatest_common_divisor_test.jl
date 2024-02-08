@testitem "013_greatest_common_divisor.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "013_greatest_common_divisor.jl"))

    @test greatest_common_divisor(3, 7) == 1
    @test greatest_common_divisor(10, 15) == 5
    @test greatest_common_divisor(49, 14) == 7
    @test greatest_common_divisor(144, 60) == 12
end