@testitem "155_even_odd_count.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "155_even_odd_count.jl"))

    # Check some simple cases
    @test even_odd_count(7) == (0, 1)
    @test even_odd_count(-78) == (1, 1)
    @test even_odd_count(3452) == (2, 2)
    @test even_odd_count(346211) == (3, 3)
    @test even_odd_count(-345821) == (3, 3)
    @test even_odd_count(-2) == (1, 0)
    @test even_odd_count(-45347) == (2, 3)
    @test even_odd_count(0) == (1, 0)
end