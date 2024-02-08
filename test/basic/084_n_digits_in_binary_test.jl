@testitem "084_n_digits_in_binary.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "084_n_digits_in_binary.jl"))

    # Check some simple cases
    @test n_digits_in_binary(1000) == "1"
    @test n_digits_in_binary(150) == "110"
    @test n_digits_in_binary(147) == "1100"

    # Check some edge cases that are easy to work out by hand.
    @test n_digits_in_binary(333) == "1001"
    @test n_digits_in_binary(963) == "10010"
end