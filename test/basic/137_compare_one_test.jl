@testitem "137_compare_one.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "137_compare_one.jl"))

    # Check some simple cases
    @test compare_one(1, 2) == 2
    @test compare_one(1, 2.5) == 2.5
    @test compare_one(2, 3) == 3
    @test compare_one(5, 6) == 6
    @test compare_one(1, "2,3") == "2,3"
    @test compare_one("5,1", "6") == "6"
    @test compare_one("1", "2") == "2"
    @test compare_one("1", 1) === nothing
end