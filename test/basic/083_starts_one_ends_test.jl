@testitem "083_starts_one_ends.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "083_starts_one_ends.jl"))

    @test starts_one_ends(1) == 1
    @test starts_one_ends(2) == 18
    @test starts_one_ends(3) == 180
    @test starts_one_ends(4) == 1800
    @test starts_one_ends(5) == 18000
end