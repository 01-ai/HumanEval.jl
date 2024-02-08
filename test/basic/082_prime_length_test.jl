@testitem "082_prime_length.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "082_prime_length.jl"))

    # Check some simple cases
    @test prime_length("Hello") == true
    @test prime_length("abcdcba") == true
    @test prime_length("kittens") == true
    @test prime_length("orange") == false
    @test prime_length("wow") == true
    @test prime_length("world") == true
    @test prime_length("MadaM") == true
    @test prime_length("Wow") == true
    @test prime_length("") == false
    @test prime_length("HI") == true
    @test prime_length("go") == true
    @test prime_length("gogo") == false
    @test prime_length("aaaaaaaaaaaaaaa") == false

    # Check some edge cases that are easy to work out by hand.
    @test prime_length("Madam") == true
    @test prime_length("M") == false
    @test prime_length("0") == false

end