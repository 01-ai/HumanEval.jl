@testitem "026_remove_duplicates.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "026_remove_duplicates.jl"))

    @test remove_duplicates(Int[]) == []
    @test remove_duplicates([1, 2, 3, 4]) == [1, 2, 3, 4]
    @test remove_duplicates([1, 2, 3, 2, 4, 3, 5]) == [1, 4, 5]
end