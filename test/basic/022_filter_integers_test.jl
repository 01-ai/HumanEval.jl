@testitem "022_filter_integers.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "022_filter_integers.jl"))

    @test filter_integers([]) == []
    @test filter_integers([4, Set(), [], 23.2, 9, "adasd"]) == [4, 9]
    @test filter_integers([3, 'c', 3, 3, 'a', 'b']) == [3, 3, 3]
end