@testitem "018_how_many_times.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "018_how_many_times.jl"))

    @test how_many_times("", "x") == 0
    @test how_many_times("xyxyxyx", "x") == 4
    @test how_many_times("cacacacac", "cac") == 4
    @test how_many_times("john doe", "john") == 1
end