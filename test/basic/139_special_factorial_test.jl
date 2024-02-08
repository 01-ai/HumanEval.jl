@testitem "139_special_factorial.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "139_special_factorial.jl"))

    # Check some simple cases
    @test special_factorial(4) == 288
    @test special_factorial(5) == 34560
    @test special_factorial(7) == 125411328000

    # Check some edge cases that are easy to work out by hand.
    @test special_factorial(1) == 1
end