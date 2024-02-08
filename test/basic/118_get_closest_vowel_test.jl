@testitem "118_get_closest_vowel.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "118_get_closest_vowel.jl"))

    # Check some simple cases
    @test get_closest_vowel("yogurt") == "u"
    @test get_closest_vowel("full") == "u"
    @test get_closest_vowel("easy") == ""
    @test get_closest_vowel("eAsy") == ""
    @test get_closest_vowel("ali") == ""
    @test get_closest_vowel("bad") == "a"
    @test get_closest_vowel("most") == "o"
    @test get_closest_vowel("ab") == ""
    @test get_closest_vowel("ba") == ""
    @test get_closest_vowel("quick") == ""
    @test get_closest_vowel("anime") == "i"
    @test get_closest_vowel("Asia") == ""
    @test get_closest_vowel("Above") == "o"
end