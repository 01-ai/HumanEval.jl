@testitem "136_largest_smallest_integers.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "136_largest_smallest_integers.jl"))

    # Check some simple cases
    @test largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (nothing, 1)
    @test largest_smallest_integers([2, 4, 1, 3, 5, 7, 0]) == (nothing, 1)
    @test largest_smallest_integers([1, 3, 2, 4, 5, 6, -2]) == (-2, 1)
    @test largest_smallest_integers([4, 5, 3, 6, 2, 7, -7]) == (-7, 2)
    @test largest_smallest_integers([7, 3, 8, 4, 9, 2, 5, -9]) == (-9, 2)
    @test largest_smallest_integers(Int[]) == (nothing, nothing)
    @test largest_smallest_integers([0]) == (nothing, nothing)
    @test largest_smallest_integers([-1, -3, -5, -6]) == (-1, nothing)
    @test largest_smallest_integers([-1, -3, -5, -6, 0]) == (-1, nothing)
    @test largest_smallest_integers([-6, -4, -4, -3, 1]) == (-3, 1)
    @test largest_smallest_integers([-6, -4, -4, -3, -100, 1]) == (-3, 1)
end