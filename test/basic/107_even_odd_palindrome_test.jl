@testitem "107_even_odd_palindrome.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "107_even_odd_palindrome.jl"))

    # Check some simple cases
    @test even_odd_palindrome(123) == (8, 13)
    @test even_odd_palindrome(12) == (4, 6)
    @test even_odd_palindrome(3) == (1, 2)
    @test even_odd_palindrome(63) == (6, 8)
    @test even_odd_palindrome(25) == (5, 6)
    @test even_odd_palindrome(19) == (4, 6)
    @test even_odd_palindrome(9) == (4, 5)

    # Check some edge cases that are easy to work out by hand.
    @test even_odd_palindrome(1) == (0, 1)
end