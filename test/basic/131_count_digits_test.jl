@testitem "131_count_digits.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "131_count_digits.jl"))

    # Check some simple cases
    @test count_digits(5) == 5
    @test count_digits(54) == 5
    @test count_digits(120) ==1
    @test count_digits(5014) == 5
    @test count_digits(98765) == 315
    @test count_digits(5576543) == 2625

    # Check some edge cases that are easy to work out by hand.
    @test count_digits(2468) == 0
end