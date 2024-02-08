@testitem "097_multiply_unit_digits.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "097_multiply_unit_digits.jl"))

    # Check some simple cases
    @test multiply_unit_digits(148, 412) == 16
    @test multiply_unit_digits(19, 28) == 72
    @test multiply_unit_digits(2020, 1851) == 0
    @test multiply_unit_digits(14,-15) == 20
    @test multiply_unit_digits(76, 67) == 42
    @test multiply_unit_digits(17, 27) == 49

    # Check some edge cases that are easy to work out by hand.
    @test multiply_unit_digits(0, 1) == 0
    @test multiply_unit_digits(0, 0) == 0
end