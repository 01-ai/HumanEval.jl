@testitem "054_same_chars.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "054_same_chars.jl"))

    @test same_chars("eabcdzzzz", "dddzzzzzzzddeddabc") == true
    @test same_chars("abcd", "dddddddabc") == true
    @test same_chars("dddddddabc", "abcd") == true
    @test same_chars("eabcd", "dddddddabc") == false
    @test same_chars("abcd", "dddddddabcf") == false
    @test same_chars("eabcdzzzz", "dddzzzzzzzddddabc") == false
    @test same_chars("aabb", "aaccc") == false
end