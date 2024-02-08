@testitem "091_is_bored.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "091_is_bored.jl"))

    # Check some simple cases
    @test is_bored("Hello world") == 0
    @test is_bored("Is the sky blue?") == 0
    @test is_bored("I love It !") == 1
    @test is_bored("bIt") == 0
    @test is_bored("I feel good today. I will be productive. will kill It") == 2
    @test is_bored("You and I are going for a walk") == 0
end