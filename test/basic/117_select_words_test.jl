@testitem "117_select_words.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "117_select_words.jl"))

    # Check some simple cases
    @test select_words("Mary had a little lamb", 4) == ["little"]
    @test select_words("Mary had a little lamb", 3) == ["Mary", "lamb"]
    @test select_words("simple white space", 2) == []
    @test select_words("Hello world", 4) == ["world"]
    @test select_words("Uncle sam", 3) == ["Uncle"]

    # Check some edge cases that are easy to work out by hand.
    @test select_words("", 4) == []
    @test select_words("a b c d e f", 1) == ["b", "c", "d", "f"]
end