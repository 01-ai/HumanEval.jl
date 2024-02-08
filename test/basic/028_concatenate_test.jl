@testitem "028_concatenate.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "028_concatenate.jl"))

    @test concatenate(String[]) == ""
    @test concatenate(["x", "y", "z"]) == "xyz"
    @test concatenate(["x", "y", "z", "w", "k"]) == "xyzwk"
end