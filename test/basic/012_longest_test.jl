@testitem "012_longest.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "012_longest.jl"))

    @test isnothing(longest(String[]))
    @test longest(["x", "y", "z"]) == "x"
    @test longest(["x", "yyy", "zzzz", "www", "kkkk", "abc"]) == "zzzz"
end