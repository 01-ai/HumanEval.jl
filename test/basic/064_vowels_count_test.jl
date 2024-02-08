@testitem "064_vowels_count.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "064_vowels_count.jl"))

    # Check some simple cases
    @test vowels_count("abcde") == 2
    @test vowels_count("Alone") == 3
    @test vowels_count("key") == 2
    @test vowels_count("bye") == 1
    @test vowels_count("keY") == 2
    @test vowels_count("bYe") == 1
    @test vowels_count("ACEDY") == 3
end