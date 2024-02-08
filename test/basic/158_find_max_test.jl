@testitem "158_find_max.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "158_find_max.jl"))

    # Check some simple cases
    @test (find_max(["name", "of", "string"]) == "string")
    @test (find_max(["name", "enam", "game"]) == "enam")
    @test (find_max(["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
    @test (find_max(["abc", "cba"]) == "abc")
    @test (find_max(["play", "this", "game", "of","footbott"]) == "footbott")
    @test (find_max(["we", "are", "gonna", "rock"]) == "gonna")
    @test (find_max(["we", "are", "a", "mad", "nation"]) == "nation")
    @test (find_max(["this", "is", "a", "prrk"]) == "this")

    # Check some edge cases that are easy to work out by hand.
    @test (find_max(["b"]) == "b")
    @test (find_max(["play", "play", "play"]) == "play")

end