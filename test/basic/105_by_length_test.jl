@testitem "105_by_length.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "105_by_length.jl"))

    # Check some simple cases
    @test by_length([2, 1, 1, 4, 5, 8, 2, 3]) == ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
    @test by_length(Int[]) == []
    @test by_length([1, -1 , 55]) == ["One"]

    # Check some edge cases that are easy to work out by hand.
    @test by_length([1, -1, 3, 2]) == ["Three", "Two", "One"]
    @test by_length([9, 4, 8]) == ["Nine", "Eight", "Four"]
end