@testitem "108_count_nums.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "108_count_nums.jl"))

    # Check some simple cases
    @test count_nums(Int[]) == 0
    @test count_nums([-1, -2, 0]) == 0
    @test count_nums([1, 1, 2, -2, 3, 4, 5]) == 6
    @test count_nums([1, 6, 9, -6, 0, 1, 5]) == 5
    @test count_nums([1, 100, 98, -7, 1, -1]) == 4
    @test count_nums([12, 23, 34, -45, -56, 0]) == 5
    @test count_nums([-0, 1]) == 1
    @test count_nums([1]) == 1
end