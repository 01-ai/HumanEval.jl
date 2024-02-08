@testitem "065_circular_shift.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "065_circular_shift.jl"))

    @test circular_shift(100, 2) == "001"
    @test circular_shift(12, 2) == "12"
    @test circular_shift(97, 8) == "79"
    @test circular_shift(12, 1) == "21"

    # Check some edge cases that are easy to work out by hand.
    @test circular_shift(11, 101) == "11"
end