@testitem "042_incr_list.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "042_incr_list.jl"))

    @test incr_list([]) == []
    @test incr_list([3, 2, 1]) == [4, 3, 2]
    @test incr_list([5, 2, 5, 2, 3, 3, 9, 0, 123]) == [6, 3, 6, 3, 4, 4, 10, 1, 124]
end