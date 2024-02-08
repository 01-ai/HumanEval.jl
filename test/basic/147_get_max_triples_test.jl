@testitem "147_get_max_triples.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "147_get_max_triples.jl"))

    @test get_max_triples(5) == 1
    @test get_max_triples(6) == 4
    @test get_max_triples(10) == 36
    @test get_max_triples(100) == 53361
end