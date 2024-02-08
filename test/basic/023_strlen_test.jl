@testitem "023_strlen.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "023_strlen.jl"))

    @test strlen("") == 0
    @test strlen("x") == 1
    @test strlen("asdasnakj") == 9
end