@testitem "086_anti_shuffle.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "086_anti_shuffle.jl"))

    # Check some simple cases
    @test anti_shuffle("Hi") == "Hi"
    @test anti_shuffle("hello") == "ehllo"
    @test anti_shuffle("number") == "bemnru"
    @test anti_shuffle("abcd") == "abcd"
    @test anti_shuffle("Hello World!!!") == "Hello !!!Wdlor"
    @test anti_shuffle("") == ""
    @test anti_shuffle("Hi. My name is Mister Robot. How are you?") == ".Hi My aemn is Meirst .Rboot How aer ?ouy"
end