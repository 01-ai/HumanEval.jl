@testitem "005_intersperse.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "005_intersperse.jl"))

    @test intersperse(Int[], 7) == Int[]
    @test intersperse([5, 6, 3, 2], 8) == [5, 8, 6, 8, 3, 8, 2]
    @test intersperse([2, 2, 2], 2) == [2, 2, 2, 2, 2]
end
