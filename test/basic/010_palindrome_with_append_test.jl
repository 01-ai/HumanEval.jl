@testitem "010_palindrome_with_append.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "010_palindrome_with_append.jl"))

    @test palindrome_with_append("") == ""
    @test palindrome_with_append("x") == "x"
    @test palindrome_with_append("xyz") == "xyzyx"
    @test palindrome_with_append("xyx") == "xyx"
    @test palindrome_with_append("jerry") == "jerryrrej"
end