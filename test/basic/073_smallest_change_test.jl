@testitem "073_smallest_change.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "073_smallest_change.jl"))

    # Check some simple cases
    @test smallest_change([1,2,3,5,4,7,9,6]) == 4
    @test smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
    @test smallest_change([1, 4, 2]) == 1
    @test smallest_change([1, 4, 4, 2]) == 1

    # Check some edge cases that are easy to work out by hand.
    @test smallest_change([1, 2, 3, 2, 1]) == 0
    @test smallest_change([3, 1, 1, 3]) == 0
    @test smallest_change([1]) == 0
    @test smallest_change([0, 1]) == 1
end