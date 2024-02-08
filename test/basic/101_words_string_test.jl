@testitem "101_words_string.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "101_words_string.jl"))

    # Check some simple cases
    @test words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
    @test words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
    @test words_string("Hi, my name") == ["Hi", "my", "name"]
    @test words_string("One,, two, three, four, five, six,") == ["One", "two", "three", "four", "five", "six"]

    # Check some edge cases that are easy to work out by hand.
    @test words_string("") == []
    @test words_string("ahmed     , gamal") == ["ahmed", "gamal"]
end
