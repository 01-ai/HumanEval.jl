@testitem "143_words_in_sentence.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "143_words_in_sentence.jl"))

    # Check some simple cases
    @test words_in_sentence("This is a test") == "is"
    @test words_in_sentence("lets go for swimming") == "go for"
    @test words_in_sentence("there is no place available here") == "there is no place"
    @test words_in_sentence("Hi I am Hussein") == "Hi am Hussein"
    @test words_in_sentence("go for it") == "go for it"

    # Check some edge cases that are easy to work out by hand.
    @test words_in_sentence("here") == ""
    @test words_in_sentence("here is") == "is"
end