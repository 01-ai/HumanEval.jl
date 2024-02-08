@testitem "125_split_words.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "125_split_words.jl"))

    @test split_words("Hello world!") == ["Hello","world!"]
    @test split_words("Hello,world!") == ["Hello","world!"]
    @test split_words("Hello world,!") == ["Hello","world,!"]
    @test split_words("Hello,Hello,world !") == ["Hello,Hello,world","!"]
    @test split_words("abcdef") == 3
    @test split_words("aaabb") == 2
    @test split_words("aaaBb") == 1
    @test split_words("") == 0
end